// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import { Test } from "forge-std/Test.sol";
import { Counter } from "../../contracts/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    // --- Deployment ---

    function test_initialNumberIsZero() public view {
        assertEq(counter.number(), 0);
    }

    function test_erc20Name() public view {
        assertEq(counter.name(), "Counter");
    }

    function test_erc20Symbol() public view {
        assertEq(counter.symbol(), "COUNTER");
    }

    function test_erc20Decimals() public view {
        assertEq(counter.decimals(), 18);
    }

    function test_erc20TotalSupply() public view {
        assertEq(counter.totalSupply(), 0);
    }

    // --- setNumber ---

    function test_setNumber() public {
        counter.setNumber(42);
        assertEq(counter.number(), 42);
    }

    function test_setNumberToZero() public {
        counter.setNumber(100);
        counter.setNumber(0);
        assertEq(counter.number(), 0);
    }

    function test_setNumberToMax() public {
        counter.setNumber(type(uint256).max);
        assertEq(counter.number(), type(uint256).max);
    }

    function testFuzz_setNumber(uint256 value) public {
        counter.setNumber(value);
        assertEq(counter.number(), value);
    }

    // --- increment ---

    function test_increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function test_incrementTwice() public {
        counter.increment();
        counter.increment();
        assertEq(counter.number(), 2);
    }

    function test_incrementFromNonZero() public {
        counter.setNumber(10);
        counter.increment();
        assertEq(counter.number(), 11);
    }

    function test_incrementMultiple(uint8 times) public {
        // Bound to reasonable value to avoid timeout
        times = bound(times, 1, 100);
        for (uint8 i = 0; i < times; i++) {
            counter.increment();
        }
        assertEq(counter.number(), uint256(times));
    }

    // --- Edge cases ---

    function test_setThenIncrement() public {
        counter.setNumber(99);
        counter.increment();
        assertEq(counter.number(), 100);
    }

    function test_incrementThenSet() public {
        counter.increment();
        counter.increment();
        counter.setNumber(0);
        assertEq(counter.number(), 0);
    }

    // --- Access control ---

    function test_anyoneCanSetNumber() public {
        address alice = address(0xA11CE);
        vm.prank(alice);
        counter.setNumber(42);
        assertEq(counter.number(), 42);
    }

    function test_anyoneCanIncrement() public {
        address bob = address(0xB0B);
        vm.prank(bob);
        counter.increment();
        assertEq(counter.number(), 1);
    }
}
