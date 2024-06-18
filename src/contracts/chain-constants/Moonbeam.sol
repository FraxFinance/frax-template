// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library Moonbeam {
    address internal constant FRAX = 0x322E86852e492a7Ee17f28a78c663da38FB33bfb;
    address internal constant FXS = 0x2CC0A9D8047A5011dEfe85328a6f26968C8aaA1C;
    address internal constant FRXETH = 0x82bbd1b6f6De2B7bb63D3e1546e6b1553508BE99;
    address internal constant SFRXETH = 0xecf91116348aF1cfFe335e9807f0051332BE128D;
    address internal constant FRAXFERRY_V1__ETHEREUM_MOONBEAM__FRAX__MNBM_SIDE =
        0xd545Fd6080db07eDdcC1F57dC28a53D930837A8d;
    address internal constant FRAXFERRY_V2__ETHEREUM_MOONBEAM__FXS__MNBM_SIDE =
        0x1E87990678f640BFfe5A118c331fEc296DDC8d89;
    address internal constant FRAXFERRY_V2__ETHEREUM_MOONBEAM__FRXETH__MNBM_SIDE =
        0x7c7Fd7412F5E79f4917163F78d5Ece5E2e923504;
    address internal constant FRAXFERRY_V2__ETHEREUM_MOONBEAM__SFRXETH__MNBM_SIDE =
        0x78348E58582d0D1789da1621B79Fc62012485CAe;
    address internal constant CAPTAIN = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant FIRST_OFFICER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant CREWMEMBER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant COMBO_ORACLE = 0x247A323DAA63cC97c2BAD61b4D6f1E0120B5c9e2;
    address internal constant COMBO_ORACLE_UNIV2_UNIV3 = 0x4A40198373dE481741bdf629B44Dc98f12f18161;
    address internal constant FRAXSWAP_FACTORY_V1 = 0x5Ca135cB8527d76e932f34B5145575F9d8cbE08E;
    address internal constant FRAXSWAP_FACTORY_V2 = 0x51f9DBEd76f5Dcf209817f641b549aa82F35D23F;
    address internal constant FRAXSWAP_ROUTER_V1 = 0xc2544A32872A91F4A553b404C6950e89De901fdb;
    address internal constant FRAXSWAP_ROUTER_V2 = 0xd95fe880d7717f7f20981FE6e41A2315f3EFeAb5;
    address internal constant FRAXSWAP_ROUTER_MULTI_HOP = 0x0000000000000000000000000000000000000000;
    address internal constant FRAXSWAP_V1_FRAX_FXS = 0x44E11b99ff8F6164FD54393a17b3CD4c57732dB7;
    address internal constant FRAXSWAP_V2_FRAX_FXS = 0x2974A0D3e70FDe22d44c188F770beE964205aCad;
    address internal constant FRAXSWAP_V1_FRAX_WGLMR = 0xAE0b5be7d467C8c0898CaE4c96B2f40A6810DEBC;
    address internal constant FRAXSWAP_V2_FRAX_WGLMR = 0xd3bE0E32147ae91378F035fF96f3e2cAb96aC48b;
    address internal constant COMPTROLLER = 0x343e4f06BF240d22FbdFd4a2Fe5858BC66e79F12;
    address internal constant FPI_COMPTROLLER = 0xc4d89dcE72cde17DC3BEF317E62530b6A0733971;
    address internal constant ZENLINK_CANFRAX_CANFXS = 0x8ca030649720b94b16e8C3B551cc2ab88c681C0F;
    address internal constant ZENLINK_CANFRAX_WGLMR = 0xd341D2191bb0F84E5c29cB301deF5753Dab1ac04;
}

abstract contract AddressHelperMoonbeam is TestBase {
    constructor() {
        labelConstants();
    }

    function labelConstants() public {
        vm.label(0x322E86852e492a7Ee17f28a78c663da38FB33bfb, "Constants.MNBM_FRAX");
        vm.label(0x2CC0A9D8047A5011dEfe85328a6f26968C8aaA1C, "Constants.MNBM_FXS");
        vm.label(0x82bbd1b6f6De2B7bb63D3e1546e6b1553508BE99, "Constants.MNBM_FRXETH");
        vm.label(0xecf91116348aF1cfFe335e9807f0051332BE128D, "Constants.MNBM_SFRXETH");
        vm.label(
            0xd545Fd6080db07eDdcC1F57dC28a53D930837A8d,
            "Constants.MNBM_FRAXFERRY_V1__ETHEREUM_MOONBEAM__FRAX__MNBM_SIDE"
        );
        vm.label(
            0x1E87990678f640BFfe5A118c331fEc296DDC8d89,
            "Constants.MNBM_FRAXFERRY_V2__ETHEREUM_MOONBEAM__FXS__MNBM_SIDE"
        );
        vm.label(
            0x7c7Fd7412F5E79f4917163F78d5Ece5E2e923504,
            "Constants.MNBM_FRAXFERRY_V2__ETHEREUM_MOONBEAM__FRXETH__MNBM_SIDE"
        );
        vm.label(
            0x78348E58582d0D1789da1621B79Fc62012485CAe,
            "Constants.MNBM_FRAXFERRY_V2__ETHEREUM_MOONBEAM__SFRXETH__MNBM_SIDE"
        );
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.MNBM_CAPTAIN");
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.MNBM_FIRST_OFFICER");
        vm.label(0xBB437059584e30598b3AF0154472E47E6e2a45B9, "Constants.MNBM_CREWMEMBER");
        vm.label(0x247A323DAA63cC97c2BAD61b4D6f1E0120B5c9e2, "Constants.MNBM_COMBO_ORACLE");
        vm.label(0x4A40198373dE481741bdf629B44Dc98f12f18161, "Constants.MNBM_COMBO_ORACLE_UNIV2_UNIV3");
        vm.label(0x5Ca135cB8527d76e932f34B5145575F9d8cbE08E, "Constants.MNBM_FRAXSWAP_FACTORY_V1");
        vm.label(0x51f9DBEd76f5Dcf209817f641b549aa82F35D23F, "Constants.MNBM_FRAXSWAP_FACTORY_V2");
        vm.label(0xc2544A32872A91F4A553b404C6950e89De901fdb, "Constants.MNBM_FRAXSWAP_ROUTER_V1");
        vm.label(0xd95fe880d7717f7f20981FE6e41A2315f3EFeAb5, "Constants.MNBM_FRAXSWAP_ROUTER_V2");
        vm.label(0x0000000000000000000000000000000000000000, "Constants.MNBM_FRAXSWAP_ROUTER_MULTI_HOP");
        vm.label(0x44E11b99ff8F6164FD54393a17b3CD4c57732dB7, "Constants.MNBM_FRAXSWAP_V1_FRAX_FXS");
        vm.label(0x2974A0D3e70FDe22d44c188F770beE964205aCad, "Constants.MNBM_FRAXSWAP_V2_FRAX_FXS");
        vm.label(0xAE0b5be7d467C8c0898CaE4c96B2f40A6810DEBC, "Constants.MNBM_FRAXSWAP_V1_FRAX_WGLMR");
        vm.label(0xd3bE0E32147ae91378F035fF96f3e2cAb96aC48b, "Constants.MNBM_FRAXSWAP_V2_FRAX_WGLMR");
        vm.label(0x343e4f06BF240d22FbdFd4a2Fe5858BC66e79F12, "Constants.MNBM_COMPTROLLER");
        vm.label(0xc4d89dcE72cde17DC3BEF317E62530b6A0733971, "Constants.MNBM_FPI_COMPTROLLER");
        vm.label(0x8ca030649720b94b16e8C3B551cc2ab88c681C0F, "Constants.MNBM_ZENLINK_CANFRAX_CANFXS");
        vm.label(0xd341D2191bb0F84E5c29cB301deF5753Dab1ac04, "Constants.MNBM_ZENLINK_CANFRAX_WGLMR");
    }
}
