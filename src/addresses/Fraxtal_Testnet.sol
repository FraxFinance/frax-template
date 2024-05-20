// SPDX-License-Identifier: ISC
pragma solidity >=0.8.0;

// **NOTE** Generated code, do not modify.  Run 'npm run generate:constants'.

import { TestBase } from "forge-std/Test.sol";

library Canonicals {
    address internal constant FRAX = 0xFc00000000000000000000000000000000000001;
    address internal constant FXS = 0xFc00000000000000000000000000000000000002;
    address internal constant FPI = 0xFc00000000000000000000000000000000000003;
    address internal constant FPIS = 0xfc00000000000000000000000000000000000004;
    address internal constant SFRXETH = 0xFC00000000000000000000000000000000000005;
    address internal constant WFRXETH = 0xFC00000000000000000000000000000000000006;
}

library Farms {}

library FraxBonds {}

library FraxFerry {}

library FraxlendAndOracles {}

library Fraxswap {}

library Misc {
    uint256 internal constant CHAIN_ID = 2522;
    address internal constant PROXY_ADMIN = 0xfC00000000000000000000000000000000000007;
}

library Multisigs {
    address internal constant COMPTROLLER = 0x8b1E899ec5d51387a41Ee68261149F7d3Dfd7160;
}

library PoolRelatedTokens {}

library SystemContracts {
    address internal constant CROSS_DOMAIN_MESSENGER = 0x4200000000000000000000000000000000000007;
    address internal constant ERC20_FACTORY_PROXY = 0x4200000000000000000000000000000000000012;
    address internal constant L2_STANDARD_BRIDGE_PROXY = 0x4200000000000000000000000000000000000010;
    address internal constant L2_TO_L1_MESSAGE_PASSER = 0x4200000000000000000000000000000000000016;
}
