// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "frax-std/FraxTest.sol";
import "../contracts/Counter.sol";
import "./Helpers.sol";
import "../Constants.sol" as Constants;

contract BaseTest is FraxTest, Constants.Helper {
    Counter public counter;

    address timelock = Constants.Mainnet.TIMELOCK_ADDRESS;
}
