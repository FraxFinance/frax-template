// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library Canonicals {
    address internal constant FRAX = 0x90C97F71E18723b0Cf0dfa30ee176Ab653E89F40;
    address internal constant FXS = 0xe48A3d7d0Bc88d552f730B62c006bC925eadB9eE;
    address internal constant FPI = 0x2Dd1B4D4548aCCeA497050619965f91f78b3b532;
    address internal constant FPIS = 0xD1738eB733A636d1b8665f48bC8a24dA889c2562;
    address internal constant FRXETH = 0x64048A7eEcF3a2F1BA9e144aAc3D7dB6e58F555e;
    address internal constant SFRXETH = 0x3Cd55356433C89E50DC51aB07EE0fa0A95623D53;
    address internal constant SFRAX = 0xa63f56985F9C7F3bc9fFc5685535649e0C1a55f3;
}

library Farms {
    address internal constant APESWAP_CANFRAX_BUSD = 0x5c8D727b265DBAfaba67E050f2f739cAeEB4A6F9;
    address internal constant APESWAP_CANFXS_WBNB = 0x5c8D727b265DBAfaba67E050f2f739cAeEB4A6F9;
    address internal constant IMPOSSIBLE_FRAX_IF = 0x5e1F728C0123f7e8B237F61D0105bf9CBd8867B5;
    address internal constant IMPOSSIBLE_FRAX_FXS = 0x5BE579e5fFF39a958E6269C6D011cd5f21e2cc32;
    address internal constant PLANET_FINANCE_FRAX_LENDING = 0x6022bA7e5A70E1bAA98d47a566F3495A26511b25;
}

library FraxBonds {}

library FraxFerry {
    address internal constant FRAXFERRY_V1__ETHEREUM_BSC__FRAX__BSC_SIDE = 0x10Ef54F944639764d2d5Efa272262f06cfaF09AE;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__FXS__BSC_SIDE = 0x5CD3d6465cd21b645F15175840f4659228C6195c;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__FPI__BSC_SIDE = 0x1B01514A2B3CdEf16fD3c680a818A0Ab97Da8a09;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__FPIS__BSC_SIDE = 0x0248940C22D2586450dd5145E81B7Fc0CA4Dd4a2;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__FRXETH__BSC_SIDE = 0xB7C974530e59017DF7FA06b1EBD9e8a1E9aceC29;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__SFRXETH__BSC_SIDE =
        0x612015939f70C87E2041cc5daD909101c1A2383F;
    address internal constant FRAXFERRY_V2__ETHEREUM_BSC__SFRAX__BSC_SIDE = 0x5E8422345238F34275888049021821E8E08CAa1f;
    address internal constant CAPTAIN = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant FIRST_OFFICER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
    address internal constant CREWMEMBER = 0xBB437059584e30598b3AF0154472E47E6e2a45B9;
}

library FraxlendAndOracles {
    address internal constant COMBO_ORACLE = 0x1B3C6BdEACdc4DD9B0C8E3e2Fd222b4581a52A1A;
    address internal constant COMBO_ORACLE_UNIV2_UNIV3 = 0x8159D9CD28B7A140Fd92311C1E5c667d97176727;
}

library Fraxswap {
    address internal constant FRAXSWAP_FACTORY_V1 = 0xa007a9716dba05289df85A90d0Fd9D39BEE808dE;
    address internal constant FRAXSWAP_FACTORY_V2 = 0xf89e6CA06121B6d4370f4B196Ae458e8b969A011;
    address internal constant FRAXSWAP_ROUTER_MULTI_HOP = 0x0000000000000000000000000000000000000000;
    address internal constant FRAXSWAP_ROUTER_V1 = 0x0AE84c1A6E142Ed90f8A35a7E7B216CB25469E37;
    address internal constant FRAXSWAP_ROUTER_V2 = 0x67F755137E0AE2a2aa0323c047715Bf6523116E5;
    address internal constant FRAXSWAP_V1_FRAX_FXS = 0xC86B106F76ef5b9A085071365eD5355592A7aFa4;
    address internal constant FRAXSWAP_V1_FRAX_WBNB = 0x84eE532a0d4238f5fC4a1E8c043f8749eD4F274D;
    address internal constant FRAXSWAP_V2_FRAX_FXS = 0xF51709f61447E2647528CCC9030d6FE492C30D63;
    address internal constant FRAXSWAP_V2_FRAX_WBNB = 0x14732123c443f8E815D5c64f3C7ecb63bCeEab74;
}

library Misc {}

library Multisigs {
    address internal constant COMPTROLLER = 0x8811Da0385cCf1848B21475A42eA4D07Fc5d964a;
    address internal constant FPI_COMPTROLLER = 0x49f9cbf5333d8e50c9BE76c775777DB2ACb1d456;
}

library PoolRelatedTokens {
    address internal constant GFRAX = 0x6022bA7e5A70E1bAA98d47a566F3495A26511b25;
    address internal constant SADDLE_FRAX_BUSD = 0xBD0091CC77Fd3bDb620985a1dD8D3f94E071CCE3;
    address internal constant APESWAP_CANFRAX_CANFXS = 0x489c8fF79245f14AEEE9520d28209844790cB979;
    address internal constant APESWAP_CANFRAX_WBNB = 0x16BDb03E6074759943149eBB1526DDfD1AA5fc56;
    address internal constant APESWAP_CANFRAX_BUSD = 0x5292600758A090490D34367d4864ed6291D254fe;
    address internal constant APESWAP_CANFRAX_USDC = 0x885BE9bCbCdcB70c59F56A78ae64A820e0448589;
    address internal constant APESWAP_CANFXS_USDC = 0x84f2781E4E60f97D2963260A7b20D883F04F0d20;
    address internal constant APESWAP_CANFXS_WBNB = 0x8210D92a8951d50de3D46AC0ee39cb5E2C14e18A;
    address internal constant IMPOSSIBLE_FRAX_IF = 0x5316e743816223b335764738021F3Df7a17a25dA;
    address internal constant IMPOSSIBLE_FRAX_FXS = 0x13d80EFD9F4EC6Ef7279fE10124CeBf58C0D07C2;
    address internal constant SADDLE_FRAX_BUSD = 0xBD0091CC77Fd3bDb620985a1dD8D3f94E071CCE3;
}
