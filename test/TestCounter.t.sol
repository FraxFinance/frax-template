// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "frax-std/FraxTest.sol";
import "../src/Counter.sol";

contract TestCounter is FraxTest {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
