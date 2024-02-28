// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "frax-std/FraxTest.sol";
import "../contracts/Counter.sol";
import "./Helpers.sol";
import "../Constants.sol" as Constants;

contract BaseTest is FraxTest, Constants.Helper {
    Counter public counter;

    address timelock = Constants.Mainnet.TIMELOCK_ADDRESS;
    // Fraxtal / Fraxtal Testnet L1 & L2 addresses
    address public PROXY_ADMIN;
    address public COMPTROLLER;
    // Fraxtal / Fraxtal Testnet L1 addresses
    address public ADDRESS_MANAGER;
    address public L1_CROSS_DOMAIN_MESSENGER_PROXY;
    address public L1_ERC721_BRIDGE_PROXY;
    address public L1_STANDARD_BRIDGE_PROXY;
    address public L2_OUTPUT_ORACLE_PROXY;
    address public OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY;
    address public OPTIMISM_PORTAL_PROXY;
    address public SYSTEM_CONFIG_PROXY;
    // Fraxtal / Fraxtal Testnet L2 addresses
    address public FRAXSWAP_FACTORY;
    address public FRAXSWAP_ROUTER;
    address public FRAXSWAP_ROUTER_MULTIHOP;

    constructor() {
        // Setup fraxtal / fraxtal testnet L1 addresses
        if (block.chainid == Constants.FraxtalL1.CHAIN_ID) {
            PROXY_ADMIN = Constants.FraxtalL1.PROXY_ADMIN;
            COMPTROLLER = Constants.FraxtalL1.COMPTROLLER;
            ADDRESS_MANAGER = Constants.FraxtalL1.ADDRESS_MANAGER;
            L1_CROSS_DOMAIN_MESSENGER_PROXY = Constants.FraxtalL1.L1_CROSS_DOMAIN_MESSENGER_PROXY;
            L1_ERC721_BRIDGE_PROXY = Constants.FraxtalL1.L1_ERC721_BRIDGE_PROXY;
            L1_STANDARD_BRIDGE_PROXY = Constants.FraxtalL1.L1_STANDARD_BRIDGE_PROXY;
            L2_OUTPUT_ORACLE_PROXY = Constants.FraxtalL1.L2_OUTPUT_ORACLE_PROXY;
            OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = Constants.FraxtalL1.OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY;
            OPTIMISM_PORTAL_PROXY = Constants.FraxtalL1.OPTIMISM_PORTAL_PROXY;
            SYSTEM_CONFIG_PROXY = Constants.FraxtalL1.SYSTEM_CONFIG_PROXY;
        } else if (block.chainid == Constants.FraxtalTestnetL1.CHAIN_ID) {
            PROXY_ADMIN = Constants.FraxtalTestnetL1.PROXY_ADMIN;
            COMPTROLLER = Constants.FraxtalTestnetL1.COMPTROLLER;
            ADDRESS_MANAGER = Constants.FraxtalTestnetL1.ADDRESS_MANAGER;
            L1_CROSS_DOMAIN_MESSENGER_PROXY = Constants.FraxtalTestnetL1.L1_CROSS_DOMAIN_MESSENGER_PROXY;
            L1_ERC721_BRIDGE_PROXY = Constants.FraxtalTestnetL1.L1_ERC721_BRIDGE_PROXY;
            L1_STANDARD_BRIDGE_PROXY = Constants.FraxtalTestnetL1.L1_STANDARD_BRIDGE_PROXY;
            L2_OUTPUT_ORACLE_PROXY = Constants.FraxtalTestnetL1.L2_OUTPUT_ORACLE_PROXY;
            OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = Constants.FraxtalTestnetL1.OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY;
            OPTIMISM_PORTAL_PROXY = Constants.FraxtalTestnetL1.OPTIMISM_PORTAL_PROXY;
            SYSTEM_CONFIG_PROXY = Constants.FraxtalTestnetL1.SYSTEM_CONFIG_PROXY;
        }
        // Setup fraxtal / fraxtal testnet L2 addresses
        if (block.chainid == Constants.FraxtalL2.CHAIN_ID) {
            FRAXSWAP_FACTORY = Constants.FraxtalL2.FRAXSWAP_FACTORY;
            FRAXSWAP_ROUTER = Constants.FraxtalL2.FRAXSWAP_ROUTER;
            FRAXSWAP_ROUTER_MULTIHOP = Constants.FraxtalL2.FRAXSWAP_ROUTER_MULTIHOP;
        } else if (block.chainid == Constants.FraxtalTestnetL2.CHAIN_ID) {
            FRAXSWAP_FACTORY = Constants.FraxtalTestnetL2.FRAXSWAP_FACTORY;
            FRAXSWAP_ROUTER = Constants.FraxtalTestnetL2.FRAXSWAP_ROUTER;
            FRAXSWAP_ROUTER_MULTIHOP = Constants.FraxtalTestnetL2.FRAXSWAP_ROUTER_MULTIHOP;
        }
    }
}
