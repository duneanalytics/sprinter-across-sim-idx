// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct FilledRelayData {
    string inputToken;
    string outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint8 inputDecimals;
    uint8 outputDecimals;
    uint256 repaymentChainId;
    uint256 originChainId;
    uint256 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    address exclusiveRelayer;
    address relayer;
    address depositor;
    address recipient;
    bytes32 messageHash;
    address updatedRecipient;
    bytes32 updatedMessageHash;
    uint256 updatedOutputAmount;
    uint8 fillType;
    bytes32 destinationTxHash;
    uint256 destinationBlockTime;
    uint256 destinationChainId;
    address inputTokenAddress;
    address outputTokenAddress;
}

struct FundsDepositedData {
    string inputToken;
    string outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint8 inputDecimals;
    uint8 outputDecimals;
    uint256 destinationChainId;
    uint256 depositId;
    uint256 quoteTimestamp;
    uint256 fillDeadline;
    uint256 exclusivityDeadline;
    address depositor;
    address recipient;
    address exclusiveRelayer;
    bytes message;
    bytes32 originTxHash;
    uint256 originBlockTime;
    uint256 originChainId;
    address inputTokenAddress;
    address outputTokenAddress;
}
