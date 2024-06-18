// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library FraxtalL1Devnet {
    address internal constant FRAX = 0x114a0318Da080A2Ee3380269d796E93DF767D24F;
    address internal constant FXS = 0xD86518aDB08DF9AcF9E84EB216d7862bc0F634C0;
    address internal constant FPI = 0xfC75d8fD01fD999D2A4731a01d87131b40A8a645;
    address internal constant FPIS = 0x9445aD9a63def63CA9D23cfd7cd72538BbF1780A;
    address internal constant FRXBTC = 0x2a2acd879050aC8910d80dccb428a0AEf77fFA36;
    address internal constant FRXETH = 0x51Ed07ceB785d2983e56CF00CAf65499dae5df3B;
    address internal constant SFRXETH = 0x2787eC65f085acbbE94F1bB7E099dF06B56b6DaC;
    address internal constant SFRAX = 0xB26fDD0FF10A287a73EFaa0b18A0e57fd8168835;
    uint256 internal constant CHAIN_ID = 2520;
    address internal constant FRXETH_MINTER = 0x890205b3397a1F273BaD55476F2856886964E788;
    address internal constant COMPTROLLER = 0x8b1E899ec5d51387a41Ee68261149F7d3Dfd7160;
}

abstract contract AddressHelperFraxtalL1Devnet is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0x114a0318Da080A2Ee3380269d796E93DF767D24F, "Constants.FXTL_L1_DN_FRAX");
        vm.label(0xD86518aDB08DF9AcF9E84EB216d7862bc0F634C0, "Constants.FXTL_L1_DN_FXS");
        vm.label(0xfC75d8fD01fD999D2A4731a01d87131b40A8a645, "Constants.FXTL_L1_DN_FPI");
        vm.label(0x9445aD9a63def63CA9D23cfd7cd72538BbF1780A, "Constants.FXTL_L1_DN_FPIS");
        vm.label(0x2a2acd879050aC8910d80dccb428a0AEf77fFA36, "Constants.FXTL_L1_DN_FRXBTC");
        vm.label(0x51Ed07ceB785d2983e56CF00CAf65499dae5df3B, "Constants.FXTL_L1_DN_FRXETH");
        vm.label(0x2787eC65f085acbbE94F1bB7E099dF06B56b6DaC, "Constants.FXTL_L1_DN_SFRXETH");
        vm.label(0xB26fDD0FF10A287a73EFaa0b18A0e57fd8168835, "Constants.FXTL_L1_DN_SFRAX");
        vm.label(0x890205b3397a1F273BaD55476F2856886964E788, "Constants.FXTL_L1_DN_FRXETH_MINTER");
        vm.label(0x8b1E899ec5d51387a41Ee68261149F7d3Dfd7160, "Constants.FXTL_L1_DN_COMPTROLLER");
    }
}
