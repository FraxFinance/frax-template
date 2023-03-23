// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

import { BaseScript } from "frax-std/BaseScript.sol";
import { console } from "frax-std/FraxTest.sol";
import { deployCounter } from "./deployFunctions.sol";

// Run this with source .env && forge script --broadcast --rpc-url $MAINNET_URL DeployCounter.s.sol

contract DeployCounter is BaseScript {
  function run() public broadcaster {
    address _address = deployCounter();
    console.log("Deployed Counter at address: ", _address);
  }
}
