// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "../BaseTest.t.sol";

contract TestIncrement is BaseTest {
    function defaultSetup() public returns (uint256 _snapshotId) {
        counter = new Counter();
        counter.setNumber(0);
        _snapshotId = vm.snapshot();
    }

    function anotherSetup() public returns (uint256 _snapshotId) {
        counter = new Counter();
        counter.setNumber(50);
        _snapshotId = vm.snapshot();
    }

    function setUp() public {
        uint256 _original = vm.snapshot();
        snapShotIds.push(defaultSetup());
        vm.revertTo(_original);
        snapShotIds.push(anotherSetup());
    }

    function testIncrement() public useMultipleSetupFunctions {
        counter.increment();
        assertEq(counter.number(), 51);
    }
}
