// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "../BaseTest.t.sol";

contract TestIncrement is BaseTest {
    function setUp() public {
        setupFunctions.push(defaultSetup);
        setupFunctions.push(anotherSetup);
        addSetupFunctions(setupFunctions);
    }

    function defaultSetup() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function anotherSetup() public {
        counter = new Counter();
        counter.setNumber(50);
    }

    function testSetNumber(uint256 x) public useMultipleSetupFunctions {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }

    function testFailAssertCounterDefaultSetup() public useMultipleSetupFunctions {
        assertEq(counter.number(), 0);
    }

    function testFailAssertCounterAnotherSetup() public useMultipleSetupFunctions {
        assertEq(counter.number(), 50);
    }
}
