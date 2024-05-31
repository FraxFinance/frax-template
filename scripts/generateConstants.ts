import * as fs from "fs/promises";
import path from "path";

import * as constants from "./constants";

const networkPrefixes = {
  Arbitrum: "ARBI",
  Avalanche: "AVAX",
  BSC: "BSC",
  Fantom: "FTM",
  FraxtalL1Devnet: "FXTLL1DN",
  FraxtalL2Devnet: "FXTLL2DN",
  FraxtalL2: "FXTL",
  FraxtalTestnetL1: "FXTLTNL1",
  FraxtalTestnetL2: "FXTLTNL2",
  Holesky: "HOLESKY",
  Mainnet: "ETH",
  Moonbeam: "MNBM",
  Moonriver: "MOVR",
  Optimism: "OPTI",
  Polygon: "POLY",
  PolygonzkEVM: "POLYZKEVM",
};

const REMOVE_DUPLICATE_LABELS = false;

async function main() {
  // Get all the network names
  const networks = Object.keys(constants);

  // Prepare seen/duplicate values
  const seenValues = [];

  // Generate the strings
  const outputStringsPromises = networks.map((networkName) => {
    return handleSingleNetwork(networkName, constants[networkName], seenValues);
  });

  // Write to Constants.sol
  const outputStrings = await Promise.all(outputStringsPromises);
  const finalString =
    `// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

	` + outputStrings.join("\n");
  await fs.writeFile(path.resolve("src", "Constants.sol"), finalString);
}

async function handleSingleNetwork(networkName, constants, seenValues) {
  let numberValues: any[] = [];
  const constantString = Object.entries(constants)
    .map(([key, value]) => {
      if (typeof value === "string") {
        // Determine whether it is an address or a string
        if (value.startsWith("0x")) {
          return `    address internal constant ${key} = ${value};`;
        }
        return `    string internal constant ${key} = "${value}";`;
      } else {
        // number

        // Note the value is a number
        numberValues.push(value);

        return `    uint256 internal constant ${key} = ${value};`;
      }
    })
    .join("\n");

  // Remove certain values from being labeled
  let constantsToLabel = {};
  Object.entries(constants).forEach(([key, value]) => {
    // Check if the value has been labeled already
    const alreadySeen = REMOVE_DUPLICATE_LABELS ? seenValues.includes(value) : false;

    // Check if the value is a number
    const isANumber = numberValues.includes(value);

    // Check for rejects
    if (alreadySeen) {
      // Do not label already-seen addresses (optional)
      console.log(`Removing duplicate value ${value}`);
    } else if (isANumber) {
      // Do not label numbers
      console.log(`Removing number value ${value}`);
    } else {
      // Otherwise, it can be labeled
      constantsToLabel[key] = value;
    }
  });

  // Generate the labels for the entries
  const labelStrings = Object.entries(constantsToLabel)
    .map(([key, value]) => {
      // Add the value to the seen list
      seenValues.push(value);

      // Return the string
      return `        vm.label(${value}, "Constants.${networkPrefixes[networkName]}_${key}");`;
    })
    .join("\n");
  const contractString = `library ${networkName} {
${constantString}
}
`;

  // if (networkName == "Mainnet") {
  const constantsHelper = `
abstract contract AddressHelper${networkName} is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
${labelStrings}
    }
}
`;
  return contractString + constantsHelper;
  // }
  // return contractString;
}

main();
