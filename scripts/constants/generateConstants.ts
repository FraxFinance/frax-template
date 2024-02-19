import * as fs from "fs/promises";
import path from "path";

import * as constants from "./constants";
async function main() {
  const networks = Object.keys(constants);
  const outputStringsPromises = networks.map((networkName) => {
    return handleSingleNetwork(networkName, constants[networkName]);
  });
  const outputStrings = await Promise.all(outputStringsPromises);
  const finalString =
    `// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

` + outputStrings.join("\n");
  await fs.writeFile(path.resolve("src", "Constants.sol"), finalString);
}

async function handleSingleNetwork(networkName, constants) {
  const constantString = Object.entries(constants)
    .map(([key, value]) => {
      if ((value as string).startsWith("0x")) {
        return `    address internal constant ${key} = ${value};`;
      }

      return `    string internal constant ${key} = "${value}";`;
    })
    .join("\n");

  const labelStrings = Object.entries(constants)
    .map(([key, value]) => {
      return `        vm.label(${value}, "Constants.${key}");`;
    })
    .join("\n");
  const contractString = `library ${networkName} {
${constantString}
}
`;

  if (networkName == "Mainnet") {
    const constantsHelper = `
abstract contract Helper is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
${labelStrings}
    }
}
`;
    return contractString + constantsHelper;
  }
  return contractString;
}

main();
