// SPDX-License-Identifier: ISC
pragma solidity ^0.8.19;

import { Counter } from "../src/Counter.sol";

// These free functions are used in both tests and deploy scripts

function deployCounter() returns (address _address){
  Counter _counter = new Counter();
  _address = address(_counter);
}