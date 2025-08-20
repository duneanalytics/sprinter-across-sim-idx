// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract NativeTokenResolver {
    struct NativeToken {
        string name;
        string symbol;
        uint8 decimals;
    }

    mapping(uint256 => NativeToken) internal nativeToken;

    constructor() {
        nativeToken[1] = NativeToken("Ether", "ETH", 18);
        nativeToken[130] = NativeToken("Ether", "ETH", 18);
        nativeToken[8453] = NativeToken("Ether", "ETH", 18);
        nativeToken[7777777] = NativeToken("Ether", "ETH", 18);
        nativeToken[480] = NativeToken("Ether", "ETH", 18);
        nativeToken[34443] = NativeToken("Ether", "ETH", 18);
        nativeToken[57073] = NativeToken("Ether", "ETH", 18);
        nativeToken[1868] = NativeToken("Ether", "ETH", 18);
        nativeToken[360] = NativeToken("Ether", "ETH", 18);
        nativeToken[60808] = NativeToken("Ether", "ETH", 18);
        nativeToken[42161] = NativeToken("Ether", "ETH", 18);
        nativeToken[10] = NativeToken("Ether", "ETH", 18);
    }
}
