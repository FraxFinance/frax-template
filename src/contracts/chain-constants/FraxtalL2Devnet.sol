// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library FraxtalL2Devnet {
    address internal constant FRAX = 0xFc00000000000000000000000000000000000001;
    address internal constant FXS = 0xFc00000000000000000000000000000000000002;
    address internal constant FPI = 0xFc00000000000000000000000000000000000003;
    address internal constant FPIS = 0xfc00000000000000000000000000000000000004;
    address internal constant FRXBTC = 0xfC00000000000000000000000000000000000007;
    address internal constant WFRXETH = 0xFC00000000000000000000000000000000000006;
    address internal constant SFRXETH = 0xFC00000000000000000000000000000000000005;
    address internal constant SFRAX = 0xfc00000000000000000000000000000000000008;
    uint256 internal constant CHAIN_ID = 2521;
    address internal constant PROXY_ADMIN = 0xfC00000000000000000000000000000000000009;
    address internal constant COMPTROLLER = 0x8b1E899ec5d51387a41Ee68261149F7d3Dfd7160;
    address internal constant CROSS_DOMAIN_MESSENGER = 0x4200000000000000000000000000000000000007;
    address internal constant ERC20_FACTORY_PROXY = 0x4200000000000000000000000000000000000012;
    address internal constant L2_STANDARD_BRIDGE_PROXY = 0x4200000000000000000000000000000000000010;
    address internal constant L2_TO_L1_MESSAGE_PASSER = 0x4200000000000000000000000000000000000016;
}

abstract contract AddressHelperFraxtalL2Devnet is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0xFc00000000000000000000000000000000000001, "Constants.FXTL_L2_DN_FRAX");
        vm.label(0xFc00000000000000000000000000000000000002, "Constants.FXTL_L2_DN_FXS");
        vm.label(0xFc00000000000000000000000000000000000003, "Constants.FXTL_L2_DN_FPI");
        vm.label(0xfc00000000000000000000000000000000000004, "Constants.FXTL_L2_DN_FPIS");
        vm.label(0xfC00000000000000000000000000000000000007, "Constants.FXTL_L2_DN_FRXBTC");
        vm.label(0xFC00000000000000000000000000000000000006, "Constants.FXTL_L2_DN_WFRXETH");
        vm.label(0xFC00000000000000000000000000000000000005, "Constants.FXTL_L2_DN_SFRXETH");
        vm.label(0xfc00000000000000000000000000000000000008, "Constants.FXTL_L2_DN_SFRAX");
        vm.label(0xfC00000000000000000000000000000000000009, "Constants.FXTL_L2_DN_PROXY_ADMIN");
        vm.label(0x8b1E899ec5d51387a41Ee68261149F7d3Dfd7160, "Constants.FXTL_L2_DN_COMPTROLLER");
        vm.label(0x4200000000000000000000000000000000000007, "Constants.FXTL_L2_DN_CROSS_DOMAIN_MESSENGER");
        vm.label(0x4200000000000000000000000000000000000012, "Constants.FXTL_L2_DN_ERC20_FACTORY_PROXY");
        vm.label(0x4200000000000000000000000000000000000010, "Constants.FXTL_L2_DN_L2_STANDARD_BRIDGE_PROXY");
        vm.label(0x4200000000000000000000000000000000000016, "Constants.FXTL_L2_DN_L2_TO_L1_MESSAGE_PASSER");
    }
}
