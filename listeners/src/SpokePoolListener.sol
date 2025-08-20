// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./NativeTokenResolver.sol";
import "./types/Events.sol";
import "./utils/ERC20Metadata.sol";
import "./utils/LibBytes.sol";

contract SpokePoolListener is SpokePool$OnFilledRelayEvent, SpokePool$OnFundsDepositedEvent, NativeTokenResolver {
    event FilledRelay(FilledRelayData);
    event FundsDeposited(FundsDepositedData);

    function onFilledRelayEvent(EventContext memory ctx, SpokePool$FilledRelayEventParams memory params)
        external
        override
    {
        address inputToken = LibBytes.lsbToAddress(params.inputToken);
        address outputToken = LibBytes.lsbToAddress(params.outputToken);
        (string memory inputTokenSymbol, string memory inputTokenName, uint8 inputTokenDecimals) = inputToken
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(inputToken);
        (string memory outputTokenSymbol, string memory outputTokenName, uint8 outputTokenDecimals) = outputToken
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(outputToken);

        emit FilledRelay(
            FilledRelayData({
                inputToken: inputTokenSymbol,
                outputToken: outputTokenSymbol,
                inputAmount: params.inputAmount,
                outputAmount: params.outputAmount,
                inputDecimals: inputTokenDecimals,
                outputDecimals: outputTokenDecimals,
                repaymentChainId: params.repaymentChainId,
                originChainId: params.originChainId,
                depositId: params.depositId,
                fillDeadline: params.fillDeadline,
                exclusivityDeadline: params.exclusivityDeadline,
                exclusiveRelayer: LibBytes.lsbToAddress(params.exclusiveRelayer),
                relayer: LibBytes.lsbToAddress(params.relayer),
                depositor: LibBytes.lsbToAddress(params.depositor),
                recipient: LibBytes.lsbToAddress(params.recipient),
                messageHash: params.messageHash,
                updatedRecipient: LibBytes.lsbToAddress(params.relayExecutionInfo.updatedRecipient),
                updatedMessageHash: params.relayExecutionInfo.updatedMessageHash,
                updatedOutputAmount: params.relayExecutionInfo.updatedOutputAmount,
                fillType: params.relayExecutionInfo.fillType,
                destinationTxHash: ctx.txn.hash(),
                destinationBlockTime: block.timestamp,
                destinationChainId: block.chainid,
                inputTokenAddress: inputToken,
                outputTokenAddress: outputToken
            })
        );
    }

    function onFundsDepositedEvent(EventContext memory ctx, SpokePool$FundsDepositedEventParams memory params)
        external
        override
    {
        address inputToken = LibBytes.lsbToAddress(params.inputToken);
        address outputToken = LibBytes.lsbToAddress(params.outputToken);
        (string memory inputTokenSymbol, string memory inputTokenName, uint8 inputTokenDecimals) = inputToken
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(inputToken);
        (string memory outputTokenSymbol, string memory outputTokenName, uint8 outputTokenDecimals) = outputToken
            == address(0)
            ? (nativeToken[block.chainid].symbol, nativeToken[block.chainid].name, nativeToken[block.chainid].decimals)
            : getMetadata(outputToken);

        emit FundsDeposited(
            FundsDepositedData({
                inputToken: inputTokenSymbol,
                outputToken: outputTokenSymbol,
                inputAmount: params.inputAmount,
                outputAmount: params.outputAmount,
                inputDecimals: inputTokenDecimals,
                outputDecimals: outputTokenDecimals,
                destinationChainId: params.destinationChainId,
                depositId: params.depositId,
                quoteTimestamp: params.quoteTimestamp,
                fillDeadline: params.fillDeadline,
                exclusivityDeadline: params.exclusivityDeadline,
                depositor: LibBytes.lsbToAddress(params.depositor),
                recipient: LibBytes.lsbToAddress(params.recipient),
                exclusiveRelayer: LibBytes.lsbToAddress(params.exclusiveRelayer),
                message: params.message,
                originTxHash: ctx.txn.hash(),
                originBlockTime: block.timestamp,
                originChainId: block.chainid,
                inputTokenAddress: inputToken,
                outputTokenAddress: outputToken
            })
        );
    }
}
