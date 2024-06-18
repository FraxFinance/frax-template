// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library PolygonzkEVM {
    address internal constant FRAX = 0xFf8544feD5379D9ffa8D47a74cE6b91e632AC44D;
    address internal constant FXS = 0x6b856a14CeA1d7dCfaF80fA6936c0b75972cCacE;
    address internal constant FPI = 0x7E5845b1bFc9e6620893e48346bdB8541995a8D9;
    address internal constant FPIS = 0xdE7df9036801676aF0cB73661d93a098c0085fba;
    address internal constant FRXETH = 0xCf7eceE185f19e2E970a301eE37F93536ed66179;
    address internal constant SFRXETH = 0x7c2aF1Fb79D0b1c67d4eb802d44C673D0A1D2C04;
    address internal constant SFRAX = 0x2C37fb628b35dfdFD515d41B0cAAe11B542773C3;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FRAX__POLYZKEVM_SIDE =
        0xEaBd7625056bbD2c260f90D0B08759C69d971a5B;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FXS__POLYZKEVM_SIDE =
        0x96720C1E893bB69C14291d8a85475ED9BC484b26;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FPI__POLYZKEVM_SIDE =
        0xA31001fbe938C520C27204b984817d998bAeA885;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FPIS__POLYZKEVM_SIDE =
        0x3d1bc21F8991091538FfEf535Fe96A449794461C;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FRXETH__POLYZKEVM_SIDE =
        0xA711F85672899331900359e5b89848A30BeEBDBe;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__SFRXETH__POLYZKEVM_SIDE =
        0x4DB406906835ca0B28bFbef344c7d2C707BC4947;
    address internal constant FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__SFRAX__POLYZKEVM_SIDE =
        0xE30521fe7f3bEB6Ad556887b50739d6C7CA667E6;
    address internal constant CAPTAIN = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant FIRST_OFFICER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant CREWMEMBER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant COMBO_ORACLE = 0x030BD43af99cb72B51dA233A73F7697Cd2461C0b;
    address internal constant COMBO_ORACLE_UNIV2_UNIV3 = 0x967d0c5f7362A54b156cf2831Fb17dA8681FAD7D;
}

abstract contract AddressHelperPolygonzkEVM is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0xFf8544feD5379D9ffa8D47a74cE6b91e632AC44D, "Constants.POLY_ZKEVM_FRAX");
        vm.label(0x6b856a14CeA1d7dCfaF80fA6936c0b75972cCacE, "Constants.POLY_ZKEVM_FXS");
        vm.label(0x7E5845b1bFc9e6620893e48346bdB8541995a8D9, "Constants.POLY_ZKEVM_FPI");
        vm.label(0xdE7df9036801676aF0cB73661d93a098c0085fba, "Constants.POLY_ZKEVM_FPIS");
        vm.label(0xCf7eceE185f19e2E970a301eE37F93536ed66179, "Constants.POLY_ZKEVM_FRXETH");
        vm.label(0x7c2aF1Fb79D0b1c67d4eb802d44C673D0A1D2C04, "Constants.POLY_ZKEVM_SFRXETH");
        vm.label(0x2C37fb628b35dfdFD515d41B0cAAe11B542773C3, "Constants.POLY_ZKEVM_SFRAX");
        vm.label(
            0xEaBd7625056bbD2c260f90D0B08759C69d971a5B,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FRAX__POLYZKEVM_SIDE"
        );
        vm.label(
            0x96720C1E893bB69C14291d8a85475ED9BC484b26,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FXS__POLYZKEVM_SIDE"
        );
        vm.label(
            0xA31001fbe938C520C27204b984817d998bAeA885,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FPI__POLYZKEVM_SIDE"
        );
        vm.label(
            0x3d1bc21F8991091538FfEf535Fe96A449794461C,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FPIS__POLYZKEVM_SIDE"
        );
        vm.label(
            0xA711F85672899331900359e5b89848A30BeEBDBe,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__FRXETH__POLYZKEVM_SIDE"
        );
        vm.label(
            0x4DB406906835ca0B28bFbef344c7d2C707BC4947,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__SFRXETH__POLYZKEVM_SIDE"
        );
        vm.label(
            0xE30521fe7f3bEB6Ad556887b50739d6C7CA667E6,
            "Constants.POLY_ZKEVM_FRAXFERRY_V2__ETHEREUM_POLYGON_ZKEVM__SFRAX__POLYZKEVM_SIDE"
        );
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.POLY_ZKEVM_CAPTAIN");
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.POLY_ZKEVM_FIRST_OFFICER");
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.POLY_ZKEVM_CREWMEMBER");
        vm.label(0x030BD43af99cb72B51dA233A73F7697Cd2461C0b, "Constants.POLY_ZKEVM_COMBO_ORACLE");
        vm.label(0x967d0c5f7362A54b156cf2831Fb17dA8681FAD7D, "Constants.POLY_ZKEVM_COMBO_ORACLE_UNIV2_UNIV3");
    }
}
