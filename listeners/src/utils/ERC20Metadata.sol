// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.2 < 0.9.0;

import {canBeString, canBeUint256} from "./ABIUtils.sol";

/// @notice Returns the ERC20 symbol of an ERC20 token.
/// @param tokenAddress The token's address.
/// @return symbol The ERC20 decimals.
function getSymbol(address tokenAddress) returns (string memory symbol) {
    (bool success, bytes memory data) = tokenAddress.call(abi.encodeWithSignature("symbol()"));

    if (success && canBeString(data)) {
        symbol = abi.decode(data, (string));
    } else {
        return "";
    }
}

/// @notice Returns the ERC20 name of an ERC20 token.
/// @param tokenAddress The token's address.
/// @return name The ERC20 decimals.
function getName(address tokenAddress) returns (string memory name) {
    (bool success, bytes memory data) = tokenAddress.call(abi.encodeWithSignature("name()"));

    if (success && canBeString(data)) {
        name = abi.decode(data, (string));
    } else {
        return "";
    }
}

/// @notice Returns the ERC20 decimals of an ERC20 token.
/// @param tokenAddress The token's address.
/// @return decimals The ERC20 decimals or 18 if the call was unsuccessful.
function getDecimals(address tokenAddress) returns (uint256 decimals) {
    (bool success, bytes memory data) = tokenAddress.call(abi.encodeWithSignature("decimals()"));

    if (success && canBeUint256(data)) {
        decimals = abi.decode(data, (uint256));
    } else {
        return 18;
    }
}

/// @notice Returns the ERC20Metadata components of an ERC20 token.
/// @param addr The token's address.
/// @return The ERC20 name.
/// @return The ERC20 symbol.
/// @return The ERC20 decimals.
function getMetadata(address addr) returns (string memory, string memory, uint8) {
    return (getName(addr), getSymbol(addr), uint8(getDecimals(addr)));
}
