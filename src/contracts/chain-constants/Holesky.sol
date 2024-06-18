// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library Holesky {
    uint256 internal constant CHAIN_ID = 17_000;
    address internal constant FRAX = 0x0304A365C0fbb4b1Ad423887861b9b69a5f0c00E;
    address internal constant FXS = 0x4e7300F74F59AFaEcCdc0d434758Df9be238F0BF;
    address internal constant FPI = 0xfBCB0F967817c924f83e26e04F0FB28ED4d6276F;
    address internal constant FPIS = 0x0363a32D18c25a3FD19a0d00B02106C03d8b8182;
    address internal constant FRXETH = 0x17845EA6a9BfD2caF1b9E558948BB4999dF2656e;
    address internal constant SFRXETH = 0xa63f56985F9C7F3bc9fFc5685535649e0C1a55f3;
    address internal constant FPI_ERC20 = 0xfBCB0F967817c924f83e26e04F0FB28ED4d6276F;
    address internal constant FPIS_ERC20 = 0x0363a32D18c25a3FD19a0d00B02106C03d8b8182;
    address internal constant FRAX_ERC20 = 0x0304A365C0fbb4b1Ad423887861b9b69a5f0c00E;
    address internal constant FXS_ERC20 = 0x4e7300F74F59AFaEcCdc0d434758Df9be238F0BF;
    address internal constant SFRXETH_ERC20 = 0xa63f56985F9C7F3bc9fFc5685535649e0C1a55f3;
    address internal constant FRXETH_ERC20 = 0x17845EA6a9BfD2caF1b9E558948BB4999dF2656e;
    address internal constant ADDRESS_MANAGER = 0x6C52d1f7aAdD1F27aaa6A9e228CE0312E3CB09A6;
    address internal constant FRAXTAL_COMPTROLLER = 0x88699c59E413e8A47117820D15d8D33b09B21edD;
    address internal constant L1_CROSS_DOMAIN_MESSENGER_PROXY = 0x45A98115D5722C6cfC48D711e0053758E7C0b8ad;
    address internal constant L1_ERC721_BRIDGE_PROXY = 0x0301A6b26a37566d3DCebC7fC4c2143B426bBf53;
    address internal constant L1_STANDARD_BRIDGE_PROXY = 0x0BaafC217162f64930909aD9f2B27125121d6332;
    address internal constant L2_OUTPUT_ORACLE_PROXY = 0x715EA64DA13F4d0831ece4Ad3E8c1aa013167F32;
    address internal constant OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY = 0x740fAfe2383F736d0Bd1a042E50fE15dDa2726C6;
    address internal constant OPTIMISM_PORTAL_PROXY = 0xB9c64BfA498d5b9a8398Ed6f46eb76d90dE5505d;
    address internal constant PROTOCOL_VERSIONS_PROXY = 0x0D2d3D6540638291C50db5521527d4115c8eddB7;
    address internal constant PROXY_ADMIN = 0xA0c6294D524f56fF9BdAeE94b69064c529cB9a1e;
    address internal constant SUPERCHAIN_CONFIG_PROXY = 0x089065000De745708B5EE76Be5dF236Eb6453b82;
    address internal constant SYSTEM_CONFIG_PROXY = 0x570Bf63A187776A19a44E6D1e055E3da65C1E3Db;
    address internal constant FRXETH_MINTER = 0x5E8422345238F34275888049021821E8E08CAa1f;
}

abstract contract AddressHelperHolesky is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0x0304A365C0fbb4b1Ad423887861b9b69a5f0c00E, "Constants.HOLESKY_FRAX");
        vm.label(0x4e7300F74F59AFaEcCdc0d434758Df9be238F0BF, "Constants.HOLESKY_FXS");
        vm.label(0xfBCB0F967817c924f83e26e04F0FB28ED4d6276F, "Constants.HOLESKY_FPI");
        vm.label(0x0363a32D18c25a3FD19a0d00B02106C03d8b8182, "Constants.HOLESKY_FPIS");
        vm.label(0x17845EA6a9BfD2caF1b9E558948BB4999dF2656e, "Constants.HOLESKY_FRXETH");
        vm.label(0xa63f56985F9C7F3bc9fFc5685535649e0C1a55f3, "Constants.HOLESKY_SFRXETH");
        vm.label(0xfBCB0F967817c924f83e26e04F0FB28ED4d6276F, "Constants.HOLESKY_FPI_ERC20");
        vm.label(0x0363a32D18c25a3FD19a0d00B02106C03d8b8182, "Constants.HOLESKY_FPIS_ERC20");
        vm.label(0x0304A365C0fbb4b1Ad423887861b9b69a5f0c00E, "Constants.HOLESKY_FRAX_ERC20");
        vm.label(0x4e7300F74F59AFaEcCdc0d434758Df9be238F0BF, "Constants.HOLESKY_FXS_ERC20");
        vm.label(0xa63f56985F9C7F3bc9fFc5685535649e0C1a55f3, "Constants.HOLESKY_SFRXETH_ERC20");
        vm.label(0x17845EA6a9BfD2caF1b9E558948BB4999dF2656e, "Constants.HOLESKY_FRXETH_ERC20");
        vm.label(0x6C52d1f7aAdD1F27aaa6A9e228CE0312E3CB09A6, "Constants.HOLESKY_ADDRESS_MANAGER");
        vm.label(0x88699c59E413e8A47117820D15d8D33b09B21edD, "Constants.HOLESKY_FRAXTAL_COMPTROLLER");
        vm.label(0x45A98115D5722C6cfC48D711e0053758E7C0b8ad, "Constants.HOLESKY_L1_CROSS_DOMAIN_MESSENGER_PROXY");
        vm.label(0x0301A6b26a37566d3DCebC7fC4c2143B426bBf53, "Constants.HOLESKY_L1_ERC721_BRIDGE_PROXY");
        vm.label(0x0BaafC217162f64930909aD9f2B27125121d6332, "Constants.HOLESKY_L1_STANDARD_BRIDGE_PROXY");
        vm.label(0x715EA64DA13F4d0831ece4Ad3E8c1aa013167F32, "Constants.HOLESKY_L2_OUTPUT_ORACLE_PROXY");
        vm.label(0x740fAfe2383F736d0Bd1a042E50fE15dDa2726C6, "Constants.HOLESKY_OPTIMISM_MINTABLE_ERC20_FACTORY_PROXY");
        vm.label(0xB9c64BfA498d5b9a8398Ed6f46eb76d90dE5505d, "Constants.HOLESKY_OPTIMISM_PORTAL_PROXY");
        vm.label(0x0D2d3D6540638291C50db5521527d4115c8eddB7, "Constants.HOLESKY_PROTOCOL_VERSIONS_PROXY");
        vm.label(0xA0c6294D524f56fF9BdAeE94b69064c529cB9a1e, "Constants.HOLESKY_PROXY_ADMIN");
        vm.label(0x089065000De745708B5EE76Be5dF236Eb6453b82, "Constants.HOLESKY_SUPERCHAIN_CONFIG_PROXY");
        vm.label(0x570Bf63A187776A19a44E6D1e055E3da65C1E3Db, "Constants.HOLESKY_SYSTEM_CONFIG_PROXY");
        vm.label(0x5E8422345238F34275888049021821E8E08CAa1f, "Constants.HOLESKY_FRXETH_MINTER");
    }
}
