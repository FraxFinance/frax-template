// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library FraxtalTestnetL1 {
    uint256 internal constant CHAIN_ID = 17_000;
    address internal constant PROXY_ADMIN = 0xA0c6294D524f56fF9BdAeE94b69064c529cB9a1e;
    address internal constant COMPTROLLER = 0x88699c59E413e8A47117820D15d8D33b09B21edD;
    address internal constant ADDRESS_MANAGER = 0x6C52d1f7aAdD1F27aaa6A9e228CE0312E3CB09A6;
    address internal constant L1_CROSS_DOMAIN_MESSENGER_PROXY = 0x45A98115D5722C6cfC48D711e0053758E7C0b8ad;
    address internal constant L1_ERC721_BRIDGE_PROXY = 0x0301A6b26a37566d3DCebC7fC4c2143B426bBf53;
    address internal constant L1_STANDARD_BRIDGE_PROXY = 0x0BaafC217162f64930909aD9f2B27125121d6332;
    address internal constant L2_OUTPUT_ORACLE_PROXY = 0x715EA64DA13F4d0831ece4Ad3E8c1aa013167F32;
    address internal constant OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = 0x740fAfe2383F736d0Bd1a042E50fE15dDa2726C6;
    address internal constant OPTIMISM_PORTAL_PROXY = 0xB9c64BfA498d5b9a8398Ed6f46eb76d90dE5505d;
    address internal constant SYSTEM_CONFIG_PROXY = 0x570Bf63A187776A19a44E6D1e055E3da65C1E3Db;
}

abstract contract AddressHelperFraxtalTestnetL1 is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0xA0c6294D524f56fF9BdAeE94b69064c529cB9a1e, "Constants.FXTL_TN_L1_PROXY_ADMIN");
        vm.label(0x88699c59E413e8A47117820D15d8D33b09B21edD, "Constants.FXTL_TN_L1_COMPTROLLER");
        vm.label(0x6C52d1f7aAdD1F27aaa6A9e228CE0312E3CB09A6, "Constants.FXTL_TN_L1_ADDRESS_MANAGER");
        vm.label(0x45A98115D5722C6cfC48D711e0053758E7C0b8ad, "Constants.FXTL_TN_L1_L1_CROSS_DOMAIN_MESSENGER_PROXY");
        vm.label(0x0301A6b26a37566d3DCebC7fC4c2143B426bBf53, "Constants.FXTL_TN_L1_L1_ERC721_BRIDGE_PROXY");
        vm.label(0x0BaafC217162f64930909aD9f2B27125121d6332, "Constants.FXTL_TN_L1_L1_STANDARD_BRIDGE_PROXY");
        vm.label(0x715EA64DA13F4d0831ece4Ad3E8c1aa013167F32, "Constants.FXTL_TN_L1_L2_OUTPUT_ORACLE_PROXY");
        vm.label(
            0x740fAfe2383F736d0Bd1a042E50fE15dDa2726C6,
            "Constants.FXTL_TN_L1_OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY"
        );
        vm.label(0xB9c64BfA498d5b9a8398Ed6f46eb76d90dE5505d, "Constants.FXTL_TN_L1_OPTIMISM_PORTAL_PROXY");
        vm.label(0x570Bf63A187776A19a44E6D1e055E3da65C1E3Db, "Constants.FXTL_TN_L1_SYSTEM_CONFIG_PROXY");
    }
}
