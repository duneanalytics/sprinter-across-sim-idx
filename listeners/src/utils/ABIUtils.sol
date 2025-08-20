// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/// @notice Checks if a bytes type returned from a call can represent a string.
/// @param b The bytes type.
/// @return result true if it can represent a string, otherwise false.
function canBeString(bytes memory b) pure returns (bool result) {
    /// @solidity memory-safe-assembly
    assembly {
        let size := mload(b)

        switch gt(size, 63)
        case 0 { result := 0 }
        default {
            // sub(mload(b), 64) is the returndata length minus the 2 first words (offset and string size).
            // mload(add(b, 64)) is the size of the string, written in the 2nd word.
            // We check whether the size of the string is smaller or equal than the size of the returndata part corresponding to the string.
            // Since we cannot do greater or equal, we use sub(mload(b), 63) instead of sub(mload(b), 64).
            result := gt(sub(mload(b), 63), mload(add(b, 64)))
        }
    }
}

/// @notice Checks if a bytes type returned from a call can represent a uint256.
/// @param b The bytes type.
/// @return result true if it can represent a uint256, otherwise false.
function canBeUint256(bytes memory b) pure returns (bool result) {
    return b.length == 32;
}

/// @notice Checks if a bytes type returned from a call can represent an address.
/// @param b The bytes type.
/// @return result true if it can represent an address, otherwise false.
function canBeAddress(bytes memory b) pure returns (bool result) {
    return b.length <= 32 && uint256(bytes32(b)) >> 160 == 0;
}
