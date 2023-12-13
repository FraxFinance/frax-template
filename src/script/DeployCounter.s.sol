// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

import { BaseScript } from "frax-std/BaseScript.sol";
import { console } from "frax-std/FraxTest.sol";
import { Counter } from "../contracts/Counter.sol";

// This is a free function that can be imported and used in tests or other scripts
function deployCounter() returns (address _address) {
    Counter _counter = new Counter();
    _address = address(_counter);
}

// Run this with source .env && forge script --broadcast --rpc-url $MAINNET_URL DeployCounter.s.sol
contract DeployCounter is BaseScript {
    function run() public broadcaster {
        address _address = deployCounter();
        console.log("Deployed Counter at address: ", _address);
    }
}
