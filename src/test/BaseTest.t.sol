// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "frax-std/FraxTest.sol";
import "../contracts/Counter.sol";
import "./Helpers.sol";

import { Mainnet } from "src/contracts/chain-constants/Mainnet.sol";
import { FraxtalL1Devnet } from "src/contracts/chain-constants/FraxtalL1Devnet.sol";
import { FraxtalL2 } from "src/contracts/chain-constants/FraxtalL2.sol";
import { FraxtalTestnetL1 } from "src/contracts/chain-constants/FraxtalTestnetL1.sol";
import { FraxtalTestnetL2 } from "src/contracts/chain-constants/FraxtalTestnetL2.sol";

contract BaseTest is FraxTest {
    Counter public counter;

    address timelock = Mainnet.TIMELOCK_ADDRESS;
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
        if (block.chainid == Mainnet.CHAIN_ID) {
            PROXY_ADMIN = Mainnet.PROXY_ADMIN;
            COMPTROLLER = Mainnet.COMPTROLLER;
            ADDRESS_MANAGER = Mainnet.ADDRESS_MANAGER;
            L1_CROSS_DOMAIN_MESSENGER_PROXY = Mainnet.L1_CROSS_DOMAIN_MESSENGER_PROXY;
            L1_ERC721_BRIDGE_PROXY = Mainnet.L1_ERC721_BRIDGE_PROXY;
            L1_STANDARD_BRIDGE_PROXY = Mainnet.L1_STANDARD_BRIDGE_PROXY;
            L2_OUTPUT_ORACLE_PROXY = Mainnet.L2_OUTPUT_ORACLE_PROXY;
            OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = Mainnet.OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY;
            OPTIMISM_PORTAL_PROXY = Mainnet.OPTIMISM_PORTAL_PROXY;
            SYSTEM_CONFIG_PROXY = Mainnet.SYSTEM_CONFIG_PROXY;
        } else if (block.chainid == FraxtalTestnetL1.CHAIN_ID) {
            PROXY_ADMIN = FraxtalTestnetL1.PROXY_ADMIN;
            COMPTROLLER = FraxtalTestnetL1.COMPTROLLER;
            ADDRESS_MANAGER = FraxtalTestnetL1.ADDRESS_MANAGER;
            L1_CROSS_DOMAIN_MESSENGER_PROXY = FraxtalTestnetL1.L1_CROSS_DOMAIN_MESSENGER_PROXY;
            L1_ERC721_BRIDGE_PROXY = FraxtalTestnetL1.L1_ERC721_BRIDGE_PROXY;
            L1_STANDARD_BRIDGE_PROXY = FraxtalTestnetL1.L1_STANDARD_BRIDGE_PROXY;
            L2_OUTPUT_ORACLE_PROXY = FraxtalTestnetL1.L2_OUTPUT_ORACLE_PROXY;
            OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = FraxtalTestnetL1.OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY;
            OPTIMISM_PORTAL_PROXY = FraxtalTestnetL1.OPTIMISM_PORTAL_PROXY;
            SYSTEM_CONFIG_PROXY = FraxtalTestnetL1.SYSTEM_CONFIG_PROXY;
        }
        // Setup fraxtal / fraxtal testnet L2 addresses
        if (block.chainid == FraxtalL2.CHAIN_ID) {
            FRAXSWAP_FACTORY = FraxtalL2.FRAXSWAP_FACTORY;
            FRAXSWAP_ROUTER = FraxtalL2.FRAXSWAP_ROUTER;
            FRAXSWAP_ROUTER_MULTIHOP = FraxtalL2.FRAXSWAP_ROUTER_MULTIHOP;
        } else if (block.chainid == FraxtalTestnetL2.CHAIN_ID) {
            FRAXSWAP_FACTORY = FraxtalTestnetL2.FRAXSWAP_FACTORY;
            FRAXSWAP_ROUTER = FraxtalTestnetL2.FRAXSWAP_ROUTER;
            FRAXSWAP_ROUTER_MULTIHOP = FraxtalTestnetL2.FRAXSWAP_ROUTER_MULTIHOP;
        }
    }
}
