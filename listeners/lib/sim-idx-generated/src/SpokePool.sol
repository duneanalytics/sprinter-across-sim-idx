// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function SpokePool$Abi() pure returns (Abi memory) {
    return Abi("SpokePool");
}
struct SpokePool$EmptyRelayerFunctionOutputs {
    bytes32 outArg0;
}

struct SpokePool$EmptyRepaymentChainIdFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$InfiniteFillDeadlineFunctionOutputs {
    uint32 outArg0;
}

struct SpokePool$MaxExclusivityPeriodSecondsFunctionOutputs {
    uint32 outArg0;
}

struct SpokePool$MaxTransferSizeFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$UpdateBytes32DepositDetailsHashFunctionOutputs {
    bytes32 outArg0;
}

struct SpokePool$SpokePoolInitFunctionInputs {
    uint32 _initialDepositId;
    address _crossDomainAdmin;
    address _withdrawalRecipient;
}

struct SpokePool$ChainIdFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$ClaimRelayerRefundFunctionInputs {
    bytes32 l2TokenAddress;
    bytes32 refundAddress;
}

struct SpokePool$CrossDomainAdminFunctionOutputs {
    address outArg0;
}

struct SpokePool$DepositFunctionInputs {
    bytes32 depositor;
    bytes32 recipient;
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    bytes32 exclusiveRelayer;
    uint32 quoteTimestamp;
    uint32 fillDeadline;
    uint32 exclusivityParameter;
    bytes message;
}

struct SpokePool$DepositDeprecated5947912356FunctionInputs {
    address recipient;
    address originToken;
    uint256 amount;
    uint256 destinationChainId;
    int64 relayerFeePct;
    uint32 quoteTimestamp;
    bytes message;
    uint256 outArg7;
}

struct SpokePool$DepositForFunctionInputs {
    address depositor;
    address recipient;
    address originToken;
    uint256 amount;
    uint256 destinationChainId;
    int64 relayerFeePct;
    uint32 quoteTimestamp;
    bytes message;
    uint256 outArg8;
}

struct SpokePool$DepositNowFunctionInputs {
    bytes32 depositor;
    bytes32 recipient;
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    bytes32 exclusiveRelayer;
    uint32 fillDeadlineOffset;
    uint32 exclusivityParameter;
    bytes message;
}

struct SpokePool$DepositQuoteTimeBufferFunctionOutputs {
    uint32 outArg0;
}

struct SpokePool$DepositV3FunctionInputs {
    address depositor;
    address recipient;
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    address exclusiveRelayer;
    uint32 quoteTimestamp;
    uint32 fillDeadline;
    uint32 exclusivityParameter;
    bytes message;
}

struct SpokePool$DepositV3NowFunctionInputs {
    address depositor;
    address recipient;
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    address exclusiveRelayer;
    uint32 fillDeadlineOffset;
    uint32 exclusivityParameter;
    bytes message;
}

struct SpokePool$EmergencyDeleteRootBundleFunctionInputs {
    uint256 rootBundleId;
}

struct SpokePool$SpokePoolInterface$RelayerRefundLeaf {
    uint256 amountToReturn;
    uint256 chainId;
    uint256[] refundAmounts;
    uint32 leafId;
    address l2TokenAddress;
    address[] refundAddresses;
}

struct SpokePool$ExecuteRelayerRefundLeafFunctionInputs {
    uint32 rootBundleId;
    SpokePool$SpokePoolInterface$RelayerRefundLeaf relayerRefundLeaf;
    bytes32[] proof;
}

struct SpokePool$V3SpokePoolInterface$V3RelayData {
    bytes32 depositor;
    bytes32 recipient;
    bytes32 exclusiveRelayer;
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 originChainId;
    uint256 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    bytes message;
}

struct SpokePool$V3SpokePoolInterface$V3SlowFill {
    SpokePool$V3SpokePoolInterface$V3RelayData relayData;
    uint256 chainId;
    uint256 updatedOutputAmount;
}

struct SpokePool$ExecuteSlowRelayLeafFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3SlowFill slowFillLeaf;
    uint32 rootBundleId;
    bytes32[] proof;
}

struct SpokePool$FillFunctionInputs {
    bytes32 orderId;
    bytes originData;
    bytes fillerData;
}

struct SpokePool$FillDeadlineBufferFunctionOutputs {
    uint32 outArg0;
}

struct SpokePool$FillRelayFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3RelayData relayData;
    uint256 repaymentChainId;
    bytes32 repaymentAddress;
}

struct SpokePool$FillRelayWithUpdatedDepositFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3RelayData relayData;
    uint256 repaymentChainId;
    bytes32 repaymentAddress;
    uint256 updatedOutputAmount;
    bytes32 updatedRecipient;
    bytes updatedMessage;
    bytes depositorSignature;
}

struct SpokePool$FillStatusesFunctionInputs {
    bytes32 outArg0;
}

struct SpokePool$FillStatusesFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$V3SpokePoolInterface$V3RelayDataLegacy {
    address depositor;
    address recipient;
    address exclusiveRelayer;
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 originChainId;
    uint32 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    bytes message;
}

struct SpokePool$FillV3RelayFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3RelayDataLegacy relayData;
    uint256 repaymentChainId;
}

struct SpokePool$GetCurrentTimeFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$GetRelayerRefundFunctionInputs {
    address l2TokenAddress;
    address refundAddress;
}

struct SpokePool$GetRelayerRefundFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$GetUnsafeDepositIdFunctionInputs {
    address msgSender;
    bytes32 depositor;
    uint256 depositNonce;
}

struct SpokePool$GetUnsafeDepositIdFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$GetV3RelayHashFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3RelayData relayData;
}

struct SpokePool$GetV3RelayHashFunctionOutputs {
    bytes32 outArg0;
}

struct SpokePool$InitializeFunctionInputs {
    uint32 _initialDepositId;
    address _withdrawalRecipient;
}

struct SpokePool$MulticallFunctionInputs {
    bytes[] data;
}

struct SpokePool$MulticallFunctionOutputs {
    bytes[] results;
}

struct SpokePool$NumberOfDepositsFunctionOutputs {
    uint32 outArg0;
}

struct SpokePool$OwnerFunctionOutputs {
    address outArg0;
}

struct SpokePool$PauseDepositsFunctionInputs {
    bool pause;
}

struct SpokePool$PauseFillsFunctionInputs {
    bool pause;
}

struct SpokePool$PausedDepositsFunctionOutputs {
    bool outArg0;
}

struct SpokePool$PausedFillsFunctionOutputs {
    bool outArg0;
}

struct SpokePool$ProxiableUuidFunctionOutputs {
    bytes32 outArg0;
}

struct SpokePool$RelayRootBundleFunctionInputs {
    bytes32 relayerRefundRoot;
    bytes32 slowRelayRoot;
}

struct SpokePool$RelayerRefundFunctionInputs {
    address outArg0;
    address outArg1;
}

struct SpokePool$RelayerRefundFunctionOutputs {
    uint256 outArg0;
}

struct SpokePool$RequestSlowFillFunctionInputs {
    SpokePool$V3SpokePoolInterface$V3RelayData relayData;
}

struct SpokePool$RootBundlesFunctionInputs {
    uint256 outArg0;
}

struct SpokePool$RootBundlesFunctionOutputs {
    bytes32 slowRelayRoot;
    bytes32 relayerRefundRoot;
}

struct SpokePool$SetCrossDomainAdminFunctionInputs {
    address newCrossDomainAdmin;
}

struct SpokePool$SetWithdrawalRecipientFunctionInputs {
    address newWithdrawalRecipient;
}

struct SpokePool$SpeedUpDepositFunctionInputs {
    bytes32 depositor;
    uint256 depositId;
    uint256 updatedOutputAmount;
    bytes32 updatedRecipient;
    bytes updatedMessage;
    bytes depositorSignature;
}

struct SpokePool$SpeedUpV3DepositFunctionInputs {
    address depositor;
    uint256 depositId;
    uint256 updatedOutputAmount;
    address updatedRecipient;
    bytes updatedMessage;
    bytes depositorSignature;
}

struct SpokePool$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct SpokePool$TryMulticallFunctionInputs {
    bytes[] data;
}

struct SpokePool$MultiCallerUpgradeable$Result {
    bool success;
    bytes returnData;
}

struct SpokePool$TryMulticallFunctionOutputs {
    SpokePool$MultiCallerUpgradeable$Result[] results;
}

struct SpokePool$UnsafeDepositFunctionInputs {
    bytes32 depositor;
    bytes32 recipient;
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    bytes32 exclusiveRelayer;
    uint256 depositNonce;
    uint32 quoteTimestamp;
    uint32 fillDeadline;
    uint32 exclusivityParameter;
    bytes message;
}

struct SpokePool$UpgradeToFunctionInputs {
    address newImplementation;
}

struct SpokePool$UpgradeToAndCallFunctionInputs {
    address newImplementation;
    bytes data;
}

struct SpokePool$WithdrawalRecipientFunctionOutputs {
    address outArg0;
}

struct SpokePool$WrappedNativeTokenFunctionOutputs {
    address outArg0;
}

struct SpokePool$AdminChangedEventParams {
    address previousAdmin;
    address newAdmin;
}

struct SpokePool$BeaconUpgradedEventParams {
    address beacon;
}

struct SpokePool$ClaimedRelayerRefundEventParams {
    bytes32 l2TokenAddress;
    bytes32 refundAddress;
    uint256 amount;
    address caller;
}

struct SpokePool$EmergencyDeletedRootBundleEventParams {
    uint256 rootBundleId;
}

struct SpokePool$EnabledDepositRouteEventParams {
    address originToken;
    uint256 destinationChainId;
    bool enabled;
}

struct SpokePool$ExecutedRelayerRefundRootEventParams {
    uint256 amountToReturn;
    uint256 chainId;
    uint256[] refundAmounts;
    uint32 rootBundleId;
    uint32 leafId;
    address l2TokenAddress;
    address[] refundAddresses;
    bool deferredRefunds;
    address caller;
}

struct SpokePool$V3SpokePoolInterface$V3RelayExecutionEventInfo {
    bytes32 updatedRecipient;
    bytes32 updatedMessageHash;
    uint256 updatedOutputAmount;
    uint8 fillType;
}

struct SpokePool$FilledRelayEventParams {
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 repaymentChainId;
    uint256 originChainId;
    uint256 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    bytes32 exclusiveRelayer;
    bytes32 relayer;
    bytes32 depositor;
    bytes32 recipient;
    bytes32 messageHash;
    SpokePool$V3SpokePoolInterface$V3RelayExecutionEventInfo relayExecutionInfo;
}

struct SpokePool$V3SpokePoolInterface$LegacyV3RelayExecutionEventInfo {
    address updatedRecipient;
    bytes updatedMessage;
    uint256 updatedOutputAmount;
    uint8 fillType;
}

struct SpokePool$FilledV3RelayEventParams {
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 repaymentChainId;
    uint256 originChainId;
    uint32 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    address exclusiveRelayer;
    address relayer;
    address depositor;
    address recipient;
    bytes message;
    SpokePool$V3SpokePoolInterface$LegacyV3RelayExecutionEventInfo relayExecutionInfo;
}

struct SpokePool$FundsDepositedEventParams {
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    uint256 depositId;
    uint32 quoteTimestamp;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    bytes32 depositor;
    bytes32 recipient;
    bytes32 exclusiveRelayer;
    bytes message;
}

struct SpokePool$InitializedEventParams {
    uint8 version;
}

struct SpokePool$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct SpokePool$PausedDepositsEventParams {
    bool isPaused;
}

struct SpokePool$PausedFillsEventParams {
    bool isPaused;
}

struct SpokePool$RelayedRootBundleEventParams {
    uint32 rootBundleId;
    bytes32 relayerRefundRoot;
    bytes32 slowRelayRoot;
}

struct SpokePool$RequestedSlowFillEventParams {
    bytes32 inputToken;
    bytes32 outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 originChainId;
    uint256 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    bytes32 exclusiveRelayer;
    bytes32 depositor;
    bytes32 recipient;
    bytes32 messageHash;
}

struct SpokePool$RequestedSpeedUpDepositEventParams {
    uint256 updatedOutputAmount;
    uint256 depositId;
    bytes32 depositor;
    bytes32 updatedRecipient;
    bytes updatedMessage;
    bytes depositorSignature;
}

struct SpokePool$RequestedSpeedUpV3DepositEventParams {
    uint256 updatedOutputAmount;
    uint32 depositId;
    address depositor;
    address updatedRecipient;
    bytes updatedMessage;
    bytes depositorSignature;
}

struct SpokePool$RequestedV3SlowFillEventParams {
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 originChainId;
    uint32 depositId;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    address exclusiveRelayer;
    address depositor;
    address recipient;
    bytes message;
}

struct SpokePool$SetWithdrawalRecipientEventParams {
    address newWithdrawalRecipient;
}

struct SpokePool$SetXDomainAdminEventParams {
    address newAdmin;
}

struct SpokePool$TokensBridgedEventParams {
    uint256 amountToReturn;
    uint256 chainId;
    uint32 leafId;
    bytes32 l2TokenAddress;
    address caller;
}

struct SpokePool$UpgradedEventParams {
    address implementation;
}

struct SpokePool$V3FundsDepositedEventParams {
    address inputToken;
    address outputToken;
    uint256 inputAmount;
    uint256 outputAmount;
    uint256 destinationChainId;
    uint32 depositId;
    uint32 quoteTimestamp;
    uint32 fillDeadline;
    uint32 exclusivityDeadline;
    address depositor;
    address recipient;
    address exclusiveRelayer;
    bytes message;
}

abstract contract SpokePool$OnAdminChangedEvent {
    function onAdminChangedEvent(EventContext memory ctx, SpokePool$AdminChangedEventParams memory inputs) virtual external;

    function triggerOnAdminChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x7e644d79422f17c01e4894b5f4f588d331ebfa28653d42ae832dc59e38c9798f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAdminChangedEvent.selector
        });
    }
}

abstract contract SpokePool$OnBeaconUpgradedEvent {
    function onBeaconUpgradedEvent(EventContext memory ctx, SpokePool$BeaconUpgradedEventParams memory inputs) virtual external;

    function triggerOnBeaconUpgradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x1cf3b03a6cf19fa2baba4df148e9dcabedea7f8a5c07840e207e5c089be95d3e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBeaconUpgradedEvent.selector
        });
    }
}

abstract contract SpokePool$OnClaimedRelayerRefundEvent {
    function onClaimedRelayerRefundEvent(EventContext memory ctx, SpokePool$ClaimedRelayerRefundEventParams memory inputs) virtual external;

    function triggerOnClaimedRelayerRefundEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x6c172ea51018fb2eb2118f3f8a507c4df71eb519b8c0052834dc3c920182fef4),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onClaimedRelayerRefundEvent.selector
        });
    }
}

abstract contract SpokePool$OnEmergencyDeletedRootBundleEvent {
    function onEmergencyDeletedRootBundleEvent(EventContext memory ctx, SpokePool$EmergencyDeletedRootBundleEventParams memory inputs) virtual external;

    function triggerOnEmergencyDeletedRootBundleEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x7c1af0646963afc3343245b103731965735a893347bfa0d58a5dc77a77ae691c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEmergencyDeletedRootBundleEvent.selector
        });
    }
}

abstract contract SpokePool$OnEnabledDepositRouteEvent {
    function onEnabledDepositRouteEvent(EventContext memory ctx, SpokePool$EnabledDepositRouteEventParams memory inputs) virtual external;

    function triggerOnEnabledDepositRouteEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x0a21fdd43d0ad0c62689ee7230a47309a050755bcc52eba00310add65297692a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEnabledDepositRouteEvent.selector
        });
    }
}

abstract contract SpokePool$OnExecutedRelayerRefundRootEvent {
    function onExecutedRelayerRefundRootEvent(EventContext memory ctx, SpokePool$ExecutedRelayerRefundRootEventParams memory inputs) virtual external;

    function triggerOnExecutedRelayerRefundRootEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xf4ad92585b1bc117fbdd644990adf0827bc4c95baeae8a23322af807b6d0020e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExecutedRelayerRefundRootEvent.selector
        });
    }
}

abstract contract SpokePool$OnFilledRelayEvent {
    function onFilledRelayEvent(EventContext memory ctx, SpokePool$FilledRelayEventParams memory inputs) virtual external;

    function triggerOnFilledRelayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x44b559f101f8fbcc8a0ea43fa91a05a729a5ea6e14a7c75aa750374690137208),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFilledRelayEvent.selector
        });
    }
}

abstract contract SpokePool$OnFilledV3RelayEvent {
    function onFilledV3RelayEvent(EventContext memory ctx, SpokePool$FilledV3RelayEventParams memory inputs) virtual external;

    function triggerOnFilledV3RelayEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x571749edf1d5c9599318cdbc4e28a6475d65e87fd3b2ddbe1e9a8d5e7a0f0ff7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFilledV3RelayEvent.selector
        });
    }
}

abstract contract SpokePool$OnFundsDepositedEvent {
    function onFundsDepositedEvent(EventContext memory ctx, SpokePool$FundsDepositedEventParams memory inputs) virtual external;

    function triggerOnFundsDepositedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x32ed1a409ef04c7b0227189c3a103dc5ac10e775a15b785dcc510201f7c25ad3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFundsDepositedEvent.selector
        });
    }
}

abstract contract SpokePool$OnInitializedEvent {
    function onInitializedEvent(EventContext memory ctx, SpokePool$InitializedEventParams memory inputs) virtual external;

    function triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializedEvent.selector
        });
    }
}

abstract contract SpokePool$OnOwnershipTransferredEvent {
    function onOwnershipTransferredEvent(EventContext memory ctx, SpokePool$OwnershipTransferredEventParams memory inputs) virtual external;

    function triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract SpokePool$OnPausedDepositsEvent {
    function onPausedDepositsEvent(EventContext memory ctx, SpokePool$PausedDepositsEventParams memory inputs) virtual external;

    function triggerOnPausedDepositsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xe88463c2f254e2b070013a2dc7ee1e099f9bc00534cbdf03af551dc26ae49219),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedDepositsEvent.selector
        });
    }
}

abstract contract SpokePool$OnPausedFillsEvent {
    function onPausedFillsEvent(EventContext memory ctx, SpokePool$PausedFillsEventParams memory inputs) virtual external;

    function triggerOnPausedFillsEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x2d5b62420992e5a4afce0e77742636ca2608ef58289fd2e1baa5161ef6e7e41e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedFillsEvent.selector
        });
    }
}

abstract contract SpokePool$OnRelayedRootBundleEvent {
    function onRelayedRootBundleEvent(EventContext memory ctx, SpokePool$RelayedRootBundleEventParams memory inputs) virtual external;

    function triggerOnRelayedRootBundleEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xc86ba04c55bc5eb2f2876b91c438849a296dbec7b08751c3074d92e04f0a77af),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRelayedRootBundleEvent.selector
        });
    }
}

abstract contract SpokePool$OnRequestedSlowFillEvent {
    function onRequestedSlowFillEvent(EventContext memory ctx, SpokePool$RequestedSlowFillEventParams memory inputs) virtual external;

    function triggerOnRequestedSlowFillEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x3cee3e290f36226751cd0b3321b213890fe9c768e922f267fa6111836ce05c32),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestedSlowFillEvent.selector
        });
    }
}

abstract contract SpokePool$OnRequestedSpeedUpDepositEvent {
    function onRequestedSpeedUpDepositEvent(EventContext memory ctx, SpokePool$RequestedSpeedUpDepositEventParams memory inputs) virtual external;

    function triggerOnRequestedSpeedUpDepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x45e04bc8f121ba11466985789ca2822a91109f31bb8ac85504a37b7eaf873c26),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestedSpeedUpDepositEvent.selector
        });
    }
}

abstract contract SpokePool$OnRequestedSpeedUpV3DepositEvent {
    function onRequestedSpeedUpV3DepositEvent(EventContext memory ctx, SpokePool$RequestedSpeedUpV3DepositEventParams memory inputs) virtual external;

    function triggerOnRequestedSpeedUpV3DepositEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xb0a29aed3d389a1041194255878b423f7780be3ed2324d4693508c6ff189845e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestedSpeedUpV3DepositEvent.selector
        });
    }
}

abstract contract SpokePool$OnRequestedV3SlowFillEvent {
    function onRequestedV3SlowFillEvent(EventContext memory ctx, SpokePool$RequestedV3SlowFillEventParams memory inputs) virtual external;

    function triggerOnRequestedV3SlowFillEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0x923794976d026d6b119735adc163cb71decfc903e17c3dc226c00789593c04e1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestedV3SlowFillEvent.selector
        });
    }
}

abstract contract SpokePool$OnSetWithdrawalRecipientEvent {
    function onSetWithdrawalRecipientEvent(EventContext memory ctx, SpokePool$SetWithdrawalRecipientEventParams memory inputs) virtual external;

    function triggerOnSetWithdrawalRecipientEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xa73e8909f8616742d7fe701153d82666f7b7cd480552e23ebb05d358c22fd04e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetWithdrawalRecipientEvent.selector
        });
    }
}

abstract contract SpokePool$OnSetXDomainAdminEvent {
    function onSetXDomainAdminEvent(EventContext memory ctx, SpokePool$SetXDomainAdminEventParams memory inputs) virtual external;

    function triggerOnSetXDomainAdminEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xa9e8c42c9e7fca7f62755189a16b2f5314d43d8fb24e91ba54e6d65f9314e849),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetXDomainAdminEvent.selector
        });
    }
}

abstract contract SpokePool$OnTokensBridgedEvent {
    function onTokensBridgedEvent(EventContext memory ctx, SpokePool$TokensBridgedEventParams memory inputs) virtual external;

    function triggerOnTokensBridgedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xfa7fa7cf6d7dde5f9be65a67e6a1a747e7aa864dcd2d793353c722d80fbbb357),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokensBridgedEvent.selector
        });
    }
}

abstract contract SpokePool$OnUpgradedEvent {
    function onUpgradedEvent(EventContext memory ctx, SpokePool$UpgradedEventParams memory inputs) virtual external;

    function triggerOnUpgradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradedEvent.selector
        });
    }
}

abstract contract SpokePool$OnV3FundsDepositedEvent {
    function onV3FundsDepositedEvent(EventContext memory ctx, SpokePool$V3FundsDepositedEventParams memory inputs) virtual external;

    function triggerOnV3FundsDepositedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes32(0xa123dc29aebf7d0c3322c8eeb5b999e859f39937950ed31056532713d0de396f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onV3FundsDepositedEvent.selector
        });
    }
}

abstract contract SpokePool$OnEmptyRelayerFunction {
    function onEmptyRelayerFunction(FunctionContext memory ctx, SpokePool$EmptyRelayerFunctionOutputs memory outputs) virtual external;

    function triggerOnEmptyRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x6bbbcd2e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEmptyRelayerFunction.selector
        });
    }
}

abstract contract SpokePool$PreEmptyRelayerFunction {
    function preEmptyRelayerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEmptyRelayerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x6bbbcd2e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEmptyRelayerFunction.selector
        });
    }
}

abstract contract SpokePool$OnEmptyRepaymentChainIdFunction {
    function onEmptyRepaymentChainIdFunction(FunctionContext memory ctx, SpokePool$EmptyRepaymentChainIdFunctionOutputs memory outputs) virtual external;

    function triggerOnEmptyRepaymentChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x15348e44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEmptyRepaymentChainIdFunction.selector
        });
    }
}

abstract contract SpokePool$PreEmptyRepaymentChainIdFunction {
    function preEmptyRepaymentChainIdFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreEmptyRepaymentChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x15348e44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEmptyRepaymentChainIdFunction.selector
        });
    }
}

abstract contract SpokePool$OnInfiniteFillDeadlineFunction {
    function onInfiniteFillDeadlineFunction(FunctionContext memory ctx, SpokePool$InfiniteFillDeadlineFunctionOutputs memory outputs) virtual external;

    function triggerOnInfiniteFillDeadlineFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xceb4c987),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInfiniteFillDeadlineFunction.selector
        });
    }
}

abstract contract SpokePool$PreInfiniteFillDeadlineFunction {
    function preInfiniteFillDeadlineFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInfiniteFillDeadlineFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xceb4c987),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInfiniteFillDeadlineFunction.selector
        });
    }
}

abstract contract SpokePool$OnMaxExclusivityPeriodSecondsFunction {
    function onMaxExclusivityPeriodSecondsFunction(FunctionContext memory ctx, SpokePool$MaxExclusivityPeriodSecondsFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxExclusivityPeriodSecondsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x490e49ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxExclusivityPeriodSecondsFunction.selector
        });
    }
}

abstract contract SpokePool$PreMaxExclusivityPeriodSecondsFunction {
    function preMaxExclusivityPeriodSecondsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxExclusivityPeriodSecondsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x490e49ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxExclusivityPeriodSecondsFunction.selector
        });
    }
}

abstract contract SpokePool$OnMaxTransferSizeFunction {
    function onMaxTransferSizeFunction(FunctionContext memory ctx, SpokePool$MaxTransferSizeFunctionOutputs memory outputs) virtual external;

    function triggerOnMaxTransferSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xddd224f1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMaxTransferSizeFunction.selector
        });
    }
}

abstract contract SpokePool$PreMaxTransferSizeFunction {
    function preMaxTransferSizeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreMaxTransferSizeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xddd224f1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMaxTransferSizeFunction.selector
        });
    }
}

abstract contract SpokePool$OnUpdateBytes32DepositDetailsHashFunction {
    function onUpdateBytes32DepositDetailsHashFunction(FunctionContext memory ctx, SpokePool$UpdateBytes32DepositDetailsHashFunctionOutputs memory outputs) virtual external;

    function triggerOnUpdateBytes32DepositDetailsHashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x670fa8ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpdateBytes32DepositDetailsHashFunction.selector
        });
    }
}

abstract contract SpokePool$PreUpdateBytes32DepositDetailsHashFunction {
    function preUpdateBytes32DepositDetailsHashFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreUpdateBytes32DepositDetailsHashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x670fa8ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpdateBytes32DepositDetailsHashFunction.selector
        });
    }
}

abstract contract SpokePool$OnSpokePoolInitFunction {
    function onSpokePoolInitFunction(FunctionContext memory ctx, SpokePool$SpokePoolInitFunctionInputs memory inputs) virtual external;

    function triggerOnSpokePoolInitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x979f2bc2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSpokePoolInitFunction.selector
        });
    }
}

abstract contract SpokePool$PreSpokePoolInitFunction {
    function preSpokePoolInitFunction(PreFunctionContext memory ctx, SpokePool$SpokePoolInitFunctionInputs memory inputs) virtual external;

    function triggerPreSpokePoolInitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x979f2bc2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSpokePoolInitFunction.selector
        });
    }
}

abstract contract SpokePool$OnChainIdFunction {
    function onChainIdFunction(FunctionContext memory ctx, SpokePool$ChainIdFunctionOutputs memory outputs) virtual external;

    function triggerOnChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x9a8a0592),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onChainIdFunction.selector
        });
    }
}

abstract contract SpokePool$PreChainIdFunction {
    function preChainIdFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreChainIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x9a8a0592),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preChainIdFunction.selector
        });
    }
}

abstract contract SpokePool$OnClaimRelayerRefundFunction {
    function onClaimRelayerRefundFunction(FunctionContext memory ctx, SpokePool$ClaimRelayerRefundFunctionInputs memory inputs) virtual external;

    function triggerOnClaimRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xa18a096e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onClaimRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$PreClaimRelayerRefundFunction {
    function preClaimRelayerRefundFunction(PreFunctionContext memory ctx, SpokePool$ClaimRelayerRefundFunctionInputs memory inputs) virtual external;

    function triggerPreClaimRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xa18a096e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preClaimRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$OnCrossDomainAdminFunction {
    function onCrossDomainAdminFunction(FunctionContext memory ctx, SpokePool$CrossDomainAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnCrossDomainAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x5285e058),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCrossDomainAdminFunction.selector
        });
    }
}

abstract contract SpokePool$PreCrossDomainAdminFunction {
    function preCrossDomainAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreCrossDomainAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x5285e058),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCrossDomainAdminFunction.selector
        });
    }
}

abstract contract SpokePool$OnDepositFunction {
    function onDepositFunction(FunctionContext memory ctx, SpokePool$DepositFunctionInputs memory inputs) virtual external;

    function triggerOnDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xad5425c6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositFunction.selector
        });
    }
}

abstract contract SpokePool$PreDepositFunction {
    function preDepositFunction(PreFunctionContext memory ctx, SpokePool$DepositFunctionInputs memory inputs) virtual external;

    function triggerPreDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xad5425c6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositFunction.selector
        });
    }
}

abstract contract SpokePool$OnDepositDeprecated5947912356Function {
    function onDepositDeprecated5947912356Function(FunctionContext memory ctx, SpokePool$DepositDeprecated5947912356FunctionInputs memory inputs) virtual external;

    function triggerOnDepositDeprecated5947912356Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1186ec33),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositDeprecated5947912356Function.selector
        });
    }
}

abstract contract SpokePool$PreDepositDeprecated5947912356Function {
    function preDepositDeprecated5947912356Function(PreFunctionContext memory ctx, SpokePool$DepositDeprecated5947912356FunctionInputs memory inputs) virtual external;

    function triggerPreDepositDeprecated5947912356Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1186ec33),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositDeprecated5947912356Function.selector
        });
    }
}

abstract contract SpokePool$OnDepositForFunction {
    function onDepositForFunction(FunctionContext memory ctx, SpokePool$DepositForFunctionInputs memory inputs) virtual external;

    function triggerOnDepositForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x541f4f14),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositForFunction.selector
        });
    }
}

abstract contract SpokePool$PreDepositForFunction {
    function preDepositForFunction(PreFunctionContext memory ctx, SpokePool$DepositForFunctionInputs memory inputs) virtual external;

    function triggerPreDepositForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x541f4f14),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositForFunction.selector
        });
    }
}

abstract contract SpokePool$OnDepositNowFunction {
    function onDepositNowFunction(FunctionContext memory ctx, SpokePool$DepositNowFunctionInputs memory inputs) virtual external;

    function triggerOnDepositNowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xea86bd46),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositNowFunction.selector
        });
    }
}

abstract contract SpokePool$PreDepositNowFunction {
    function preDepositNowFunction(PreFunctionContext memory ctx, SpokePool$DepositNowFunctionInputs memory inputs) virtual external;

    function triggerPreDepositNowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xea86bd46),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositNowFunction.selector
        });
    }
}

abstract contract SpokePool$OnDepositQuoteTimeBufferFunction {
    function onDepositQuoteTimeBufferFunction(FunctionContext memory ctx, SpokePool$DepositQuoteTimeBufferFunctionOutputs memory outputs) virtual external;

    function triggerOnDepositQuoteTimeBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x57f6dcb8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositQuoteTimeBufferFunction.selector
        });
    }
}

abstract contract SpokePool$PreDepositQuoteTimeBufferFunction {
    function preDepositQuoteTimeBufferFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDepositQuoteTimeBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x57f6dcb8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositQuoteTimeBufferFunction.selector
        });
    }
}

abstract contract SpokePool$OnDepositV3Function {
    function onDepositV3Function(FunctionContext memory ctx, SpokePool$DepositV3FunctionInputs memory inputs) virtual external;

    function triggerOnDepositV3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7b939232),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositV3Function.selector
        });
    }
}

abstract contract SpokePool$PreDepositV3Function {
    function preDepositV3Function(PreFunctionContext memory ctx, SpokePool$DepositV3FunctionInputs memory inputs) virtual external;

    function triggerPreDepositV3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7b939232),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositV3Function.selector
        });
    }
}

abstract contract SpokePool$OnDepositV3NowFunction {
    function onDepositV3NowFunction(FunctionContext memory ctx, SpokePool$DepositV3NowFunctionInputs memory inputs) virtual external;

    function triggerOnDepositV3NowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7aef642c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDepositV3NowFunction.selector
        });
    }
}

abstract contract SpokePool$PreDepositV3NowFunction {
    function preDepositV3NowFunction(PreFunctionContext memory ctx, SpokePool$DepositV3NowFunctionInputs memory inputs) virtual external;

    function triggerPreDepositV3NowFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7aef642c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDepositV3NowFunction.selector
        });
    }
}

abstract contract SpokePool$OnEmergencyDeleteRootBundleFunction {
    function onEmergencyDeleteRootBundleFunction(FunctionContext memory ctx, SpokePool$EmergencyDeleteRootBundleFunctionInputs memory inputs) virtual external;

    function triggerOnEmergencyDeleteRootBundleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8a7860ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onEmergencyDeleteRootBundleFunction.selector
        });
    }
}

abstract contract SpokePool$PreEmergencyDeleteRootBundleFunction {
    function preEmergencyDeleteRootBundleFunction(PreFunctionContext memory ctx, SpokePool$EmergencyDeleteRootBundleFunctionInputs memory inputs) virtual external;

    function triggerPreEmergencyDeleteRootBundleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8a7860ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preEmergencyDeleteRootBundleFunction.selector
        });
    }
}

abstract contract SpokePool$OnExecuteRelayerRefundLeafFunction {
    function onExecuteRelayerRefundLeafFunction(FunctionContext memory ctx, SpokePool$ExecuteRelayerRefundLeafFunctionInputs memory inputs) virtual external;

    function triggerOnExecuteRelayerRefundLeafFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1b3d5559),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExecuteRelayerRefundLeafFunction.selector
        });
    }
}

abstract contract SpokePool$PreExecuteRelayerRefundLeafFunction {
    function preExecuteRelayerRefundLeafFunction(PreFunctionContext memory ctx, SpokePool$ExecuteRelayerRefundLeafFunctionInputs memory inputs) virtual external;

    function triggerPreExecuteRelayerRefundLeafFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1b3d5559),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExecuteRelayerRefundLeafFunction.selector
        });
    }
}

abstract contract SpokePool$OnExecuteSlowRelayLeafFunction {
    function onExecuteSlowRelayLeafFunction(FunctionContext memory ctx, SpokePool$ExecuteSlowRelayLeafFunctionInputs memory inputs) virtual external;

    function triggerOnExecuteSlowRelayLeafFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1fab657c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onExecuteSlowRelayLeafFunction.selector
        });
    }
}

abstract contract SpokePool$PreExecuteSlowRelayLeafFunction {
    function preExecuteSlowRelayLeafFunction(PreFunctionContext memory ctx, SpokePool$ExecuteSlowRelayLeafFunctionInputs memory inputs) virtual external;

    function triggerPreExecuteSlowRelayLeafFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x1fab657c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preExecuteSlowRelayLeafFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillFunction {
    function onFillFunction(FunctionContext memory ctx, SpokePool$FillFunctionInputs memory inputs) virtual external;

    function triggerOnFillFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x82e2c43f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillFunction {
    function preFillFunction(PreFunctionContext memory ctx, SpokePool$FillFunctionInputs memory inputs) virtual external;

    function triggerPreFillFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x82e2c43f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillDeadlineBufferFunction {
    function onFillDeadlineBufferFunction(FunctionContext memory ctx, SpokePool$FillDeadlineBufferFunctionOutputs memory outputs) virtual external;

    function triggerOnFillDeadlineBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x079bd2c7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillDeadlineBufferFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillDeadlineBufferFunction {
    function preFillDeadlineBufferFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreFillDeadlineBufferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x079bd2c7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillDeadlineBufferFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillRelayFunction {
    function onFillRelayFunction(FunctionContext memory ctx, SpokePool$FillRelayFunctionInputs memory inputs) virtual external;

    function triggerOnFillRelayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xdeff4b24),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillRelayFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillRelayFunction {
    function preFillRelayFunction(PreFunctionContext memory ctx, SpokePool$FillRelayFunctionInputs memory inputs) virtual external;

    function triggerPreFillRelayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xdeff4b24),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillRelayFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillRelayWithUpdatedDepositFunction {
    function onFillRelayWithUpdatedDepositFunction(FunctionContext memory ctx, SpokePool$FillRelayWithUpdatedDepositFunctionInputs memory inputs) virtual external;

    function triggerOnFillRelayWithUpdatedDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x97943aa9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillRelayWithUpdatedDepositFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillRelayWithUpdatedDepositFunction {
    function preFillRelayWithUpdatedDepositFunction(PreFunctionContext memory ctx, SpokePool$FillRelayWithUpdatedDepositFunctionInputs memory inputs) virtual external;

    function triggerPreFillRelayWithUpdatedDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x97943aa9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillRelayWithUpdatedDepositFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillStatusesFunction {
    function onFillStatusesFunction(FunctionContext memory ctx, SpokePool$FillStatusesFunctionInputs memory inputs, SpokePool$FillStatusesFunctionOutputs memory outputs) virtual external;

    function triggerOnFillStatusesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xc35c83fc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillStatusesFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillStatusesFunction {
    function preFillStatusesFunction(PreFunctionContext memory ctx, SpokePool$FillStatusesFunctionInputs memory inputs) virtual external;

    function triggerPreFillStatusesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xc35c83fc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillStatusesFunction.selector
        });
    }
}

abstract contract SpokePool$OnFillV3RelayFunction {
    function onFillV3RelayFunction(FunctionContext memory ctx, SpokePool$FillV3RelayFunctionInputs memory inputs) virtual external;

    function triggerOnFillV3RelayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x2e378115),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFillV3RelayFunction.selector
        });
    }
}

abstract contract SpokePool$PreFillV3RelayFunction {
    function preFillV3RelayFunction(PreFunctionContext memory ctx, SpokePool$FillV3RelayFunctionInputs memory inputs) virtual external;

    function triggerPreFillV3RelayFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x2e378115),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preFillV3RelayFunction.selector
        });
    }
}

abstract contract SpokePool$OnGetCurrentTimeFunction {
    function onGetCurrentTimeFunction(FunctionContext memory ctx, SpokePool$GetCurrentTimeFunctionOutputs memory outputs) virtual external;

    function triggerOnGetCurrentTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x29cb924d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetCurrentTimeFunction.selector
        });
    }
}

abstract contract SpokePool$PreGetCurrentTimeFunction {
    function preGetCurrentTimeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGetCurrentTimeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x29cb924d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetCurrentTimeFunction.selector
        });
    }
}

abstract contract SpokePool$OnGetRelayerRefundFunction {
    function onGetRelayerRefundFunction(FunctionContext memory ctx, SpokePool$GetRelayerRefundFunctionInputs memory inputs, SpokePool$GetRelayerRefundFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xadb5a6a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$PreGetRelayerRefundFunction {
    function preGetRelayerRefundFunction(PreFunctionContext memory ctx, SpokePool$GetRelayerRefundFunctionInputs memory inputs) virtual external;

    function triggerPreGetRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xadb5a6a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$OnGetUnsafeDepositIdFunction {
    function onGetUnsafeDepositIdFunction(FunctionContext memory ctx, SpokePool$GetUnsafeDepositIdFunctionInputs memory inputs, SpokePool$GetUnsafeDepositIdFunctionOutputs memory outputs) virtual external;

    function triggerOnGetUnsafeDepositIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7ef413e1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetUnsafeDepositIdFunction.selector
        });
    }
}

abstract contract SpokePool$PreGetUnsafeDepositIdFunction {
    function preGetUnsafeDepositIdFunction(PreFunctionContext memory ctx, SpokePool$GetUnsafeDepositIdFunctionInputs memory inputs) virtual external;

    function triggerPreGetUnsafeDepositIdFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x7ef413e1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetUnsafeDepositIdFunction.selector
        });
    }
}

abstract contract SpokePool$OnGetV3RelayHashFunction {
    function onGetV3RelayHashFunction(FunctionContext memory ctx, SpokePool$GetV3RelayHashFunctionInputs memory inputs, SpokePool$GetV3RelayHashFunctionOutputs memory outputs) virtual external;

    function triggerOnGetV3RelayHashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xd7e1583a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetV3RelayHashFunction.selector
        });
    }
}

abstract contract SpokePool$PreGetV3RelayHashFunction {
    function preGetV3RelayHashFunction(PreFunctionContext memory ctx, SpokePool$GetV3RelayHashFunctionInputs memory inputs) virtual external;

    function triggerPreGetV3RelayHashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xd7e1583a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetV3RelayHashFunction.selector
        });
    }
}

abstract contract SpokePool$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx, SpokePool$InitializeFunctionInputs memory inputs) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8624c35c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract SpokePool$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx, SpokePool$InitializeFunctionInputs memory inputs) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8624c35c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract SpokePool$OnMulticallFunction {
    function onMulticallFunction(FunctionContext memory ctx, SpokePool$MulticallFunctionInputs memory inputs, SpokePool$MulticallFunctionOutputs memory outputs) virtual external;

    function triggerOnMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xac9650d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onMulticallFunction.selector
        });
    }
}

abstract contract SpokePool$PreMulticallFunction {
    function preMulticallFunction(PreFunctionContext memory ctx, SpokePool$MulticallFunctionInputs memory inputs) virtual external;

    function triggerPreMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xac9650d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preMulticallFunction.selector
        });
    }
}

abstract contract SpokePool$OnNumberOfDepositsFunction {
    function onNumberOfDepositsFunction(FunctionContext memory ctx, SpokePool$NumberOfDepositsFunctionOutputs memory outputs) virtual external;

    function triggerOnNumberOfDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xa1244c67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onNumberOfDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$PreNumberOfDepositsFunction {
    function preNumberOfDepositsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreNumberOfDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xa1244c67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preNumberOfDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$OnOwnerFunction {
    function onOwnerFunction(FunctionContext memory ctx, SpokePool$OwnerFunctionOutputs memory outputs) virtual external;

    function triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onOwnerFunction.selector
        });
    }
}

abstract contract SpokePool$PreOwnerFunction {
    function preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preOwnerFunction.selector
        });
    }
}

abstract contract SpokePool$OnPauseDepositsFunction {
    function onPauseDepositsFunction(FunctionContext memory ctx, SpokePool$PauseDepositsFunctionInputs memory inputs) virtual external;

    function triggerOnPauseDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x738b62e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPauseDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$PrePauseDepositsFunction {
    function prePauseDepositsFunction(PreFunctionContext memory ctx, SpokePool$PauseDepositsFunctionInputs memory inputs) virtual external;

    function triggerPrePauseDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x738b62e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePauseDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$OnPauseFillsFunction {
    function onPauseFillsFunction(FunctionContext memory ctx, SpokePool$PauseFillsFunctionInputs memory inputs) virtual external;

    function triggerOnPauseFillsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x99cc2968),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPauseFillsFunction.selector
        });
    }
}

abstract contract SpokePool$PrePauseFillsFunction {
    function prePauseFillsFunction(PreFunctionContext memory ctx, SpokePool$PauseFillsFunctionInputs memory inputs) virtual external;

    function triggerPrePauseFillsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x99cc2968),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePauseFillsFunction.selector
        });
    }
}

abstract contract SpokePool$OnPausedDepositsFunction {
    function onPausedDepositsFunction(FunctionContext memory ctx, SpokePool$PausedDepositsFunctionOutputs memory outputs) virtual external;

    function triggerOnPausedDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x6068d6cb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$PrePausedDepositsFunction {
    function prePausedDepositsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePausedDepositsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x6068d6cb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePausedDepositsFunction.selector
        });
    }
}

abstract contract SpokePool$OnPausedFillsFunction {
    function onPausedFillsFunction(FunctionContext memory ctx, SpokePool$PausedFillsFunctionOutputs memory outputs) virtual external;

    function triggerOnPausedFillsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xdda52113),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPausedFillsFunction.selector
        });
    }
}

abstract contract SpokePool$PrePausedFillsFunction {
    function prePausedFillsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePausedFillsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xdda52113),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePausedFillsFunction.selector
        });
    }
}

abstract contract SpokePool$OnProxiableUuidFunction {
    function onProxiableUuidFunction(FunctionContext memory ctx, SpokePool$ProxiableUuidFunctionOutputs memory outputs) virtual external;

    function triggerOnProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onProxiableUuidFunction.selector
        });
    }
}

abstract contract SpokePool$PreProxiableUuidFunction {
    function preProxiableUuidFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreProxiableUuidFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x52d1902d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preProxiableUuidFunction.selector
        });
    }
}

abstract contract SpokePool$OnRelayRootBundleFunction {
    function onRelayRootBundleFunction(FunctionContext memory ctx, SpokePool$RelayRootBundleFunctionInputs memory inputs) virtual external;

    function triggerOnRelayRootBundleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x493a4f84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRelayRootBundleFunction.selector
        });
    }
}

abstract contract SpokePool$PreRelayRootBundleFunction {
    function preRelayRootBundleFunction(PreFunctionContext memory ctx, SpokePool$RelayRootBundleFunctionInputs memory inputs) virtual external;

    function triggerPreRelayRootBundleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x493a4f84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRelayRootBundleFunction.selector
        });
    }
}

abstract contract SpokePool$OnRelayerRefundFunction {
    function onRelayerRefundFunction(FunctionContext memory ctx, SpokePool$RelayerRefundFunctionInputs memory inputs, SpokePool$RelayerRefundFunctionOutputs memory outputs) virtual external;

    function triggerOnRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xf79f29ed),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$PreRelayerRefundFunction {
    function preRelayerRefundFunction(PreFunctionContext memory ctx, SpokePool$RelayerRefundFunctionInputs memory inputs) virtual external;

    function triggerPreRelayerRefundFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xf79f29ed),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRelayerRefundFunction.selector
        });
    }
}

abstract contract SpokePool$OnRenounceOwnershipFunction {
    function onRenounceOwnershipFunction(FunctionContext memory ctx) virtual external;

    function triggerOnRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceOwnershipFunction.selector
        });
    }
}

abstract contract SpokePool$PreRenounceOwnershipFunction {
    function preRenounceOwnershipFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRenounceOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x715018a6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceOwnershipFunction.selector
        });
    }
}

abstract contract SpokePool$OnRequestSlowFillFunction {
    function onRequestSlowFillFunction(FunctionContext memory ctx, SpokePool$RequestSlowFillFunctionInputs memory inputs) virtual external;

    function triggerOnRequestSlowFillFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x2e63e59a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRequestSlowFillFunction.selector
        });
    }
}

abstract contract SpokePool$PreRequestSlowFillFunction {
    function preRequestSlowFillFunction(PreFunctionContext memory ctx, SpokePool$RequestSlowFillFunctionInputs memory inputs) virtual external;

    function triggerPreRequestSlowFillFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x2e63e59a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRequestSlowFillFunction.selector
        });
    }
}

abstract contract SpokePool$OnRootBundlesFunction {
    function onRootBundlesFunction(FunctionContext memory ctx, SpokePool$RootBundlesFunctionInputs memory inputs, SpokePool$RootBundlesFunctionOutputs memory outputs) virtual external;

    function triggerOnRootBundlesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xee2a53f8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRootBundlesFunction.selector
        });
    }
}

abstract contract SpokePool$PreRootBundlesFunction {
    function preRootBundlesFunction(PreFunctionContext memory ctx, SpokePool$RootBundlesFunctionInputs memory inputs) virtual external;

    function triggerPreRootBundlesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xee2a53f8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRootBundlesFunction.selector
        });
    }
}

abstract contract SpokePool$OnSetCrossDomainAdminFunction {
    function onSetCrossDomainAdminFunction(FunctionContext memory ctx, SpokePool$SetCrossDomainAdminFunctionInputs memory inputs) virtual external;

    function triggerOnSetCrossDomainAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xde7eba78),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetCrossDomainAdminFunction.selector
        });
    }
}

abstract contract SpokePool$PreSetCrossDomainAdminFunction {
    function preSetCrossDomainAdminFunction(PreFunctionContext memory ctx, SpokePool$SetCrossDomainAdminFunctionInputs memory inputs) virtual external;

    function triggerPreSetCrossDomainAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xde7eba78),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetCrossDomainAdminFunction.selector
        });
    }
}

abstract contract SpokePool$OnSetWithdrawalRecipientFunction {
    function onSetWithdrawalRecipientFunction(FunctionContext memory ctx, SpokePool$SetWithdrawalRecipientFunctionInputs memory inputs) virtual external;

    function triggerOnSetWithdrawalRecipientFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xfc8a584f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetWithdrawalRecipientFunction.selector
        });
    }
}

abstract contract SpokePool$PreSetWithdrawalRecipientFunction {
    function preSetWithdrawalRecipientFunction(PreFunctionContext memory ctx, SpokePool$SetWithdrawalRecipientFunctionInputs memory inputs) virtual external;

    function triggerPreSetWithdrawalRecipientFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xfc8a584f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetWithdrawalRecipientFunction.selector
        });
    }
}

abstract contract SpokePool$OnSpeedUpDepositFunction {
    function onSpeedUpDepositFunction(FunctionContext memory ctx, SpokePool$SpeedUpDepositFunctionInputs memory inputs) virtual external;

    function triggerOnSpeedUpDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xbabb6aac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSpeedUpDepositFunction.selector
        });
    }
}

abstract contract SpokePool$PreSpeedUpDepositFunction {
    function preSpeedUpDepositFunction(PreFunctionContext memory ctx, SpokePool$SpeedUpDepositFunctionInputs memory inputs) virtual external;

    function triggerPreSpeedUpDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xbabb6aac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSpeedUpDepositFunction.selector
        });
    }
}

abstract contract SpokePool$OnSpeedUpV3DepositFunction {
    function onSpeedUpV3DepositFunction(FunctionContext memory ctx, SpokePool$SpeedUpV3DepositFunctionInputs memory inputs) virtual external;

    function triggerOnSpeedUpV3DepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x577f51f8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSpeedUpV3DepositFunction.selector
        });
    }
}

abstract contract SpokePool$PreSpeedUpV3DepositFunction {
    function preSpeedUpV3DepositFunction(PreFunctionContext memory ctx, SpokePool$SpeedUpV3DepositFunctionInputs memory inputs) virtual external;

    function triggerPreSpeedUpV3DepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x577f51f8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSpeedUpV3DepositFunction.selector
        });
    }
}

abstract contract SpokePool$OnTransferOwnershipFunction {
    function onTransferOwnershipFunction(FunctionContext memory ctx, SpokePool$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTransferOwnershipFunction.selector
        });
    }
}

abstract contract SpokePool$PreTransferOwnershipFunction {
    function preTransferOwnershipFunction(PreFunctionContext memory ctx, SpokePool$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTransferOwnershipFunction.selector
        });
    }
}

abstract contract SpokePool$OnTryMulticallFunction {
    function onTryMulticallFunction(FunctionContext memory ctx, SpokePool$TryMulticallFunctionInputs memory inputs, SpokePool$TryMulticallFunctionOutputs memory outputs) virtual external;

    function triggerOnTryMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x437b9116),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTryMulticallFunction.selector
        });
    }
}

abstract contract SpokePool$PreTryMulticallFunction {
    function preTryMulticallFunction(PreFunctionContext memory ctx, SpokePool$TryMulticallFunctionInputs memory inputs) virtual external;

    function triggerPreTryMulticallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x437b9116),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTryMulticallFunction.selector
        });
    }
}

abstract contract SpokePool$OnUnsafeDepositFunction {
    function onUnsafeDepositFunction(FunctionContext memory ctx, SpokePool$UnsafeDepositFunctionInputs memory inputs) virtual external;

    function triggerOnUnsafeDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8b15788e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUnsafeDepositFunction.selector
        });
    }
}

abstract contract SpokePool$PreUnsafeDepositFunction {
    function preUnsafeDepositFunction(PreFunctionContext memory ctx, SpokePool$UnsafeDepositFunctionInputs memory inputs) virtual external;

    function triggerPreUnsafeDepositFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x8b15788e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUnsafeDepositFunction.selector
        });
    }
}

abstract contract SpokePool$OnUpgradeToFunction {
    function onUpgradeToFunction(FunctionContext memory ctx, SpokePool$UpgradeToFunctionInputs memory inputs) virtual external;

    function triggerOnUpgradeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x3659cfe6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeToFunction.selector
        });
    }
}

abstract contract SpokePool$PreUpgradeToFunction {
    function preUpgradeToFunction(PreFunctionContext memory ctx, SpokePool$UpgradeToFunctionInputs memory inputs) virtual external;

    function triggerPreUpgradeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x3659cfe6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeToFunction.selector
        });
    }
}

abstract contract SpokePool$OnUpgradeToAndCallFunction {
    function onUpgradeToAndCallFunction(FunctionContext memory ctx, SpokePool$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerOnUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onUpgradeToAndCallFunction.selector
        });
    }
}

abstract contract SpokePool$PreUpgradeToAndCallFunction {
    function preUpgradeToAndCallFunction(PreFunctionContext memory ctx, SpokePool$UpgradeToAndCallFunctionInputs memory inputs) virtual external;

    function triggerPreUpgradeToAndCallFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x4f1ef286),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preUpgradeToAndCallFunction.selector
        });
    }
}

abstract contract SpokePool$OnWithdrawalRecipientFunction {
    function onWithdrawalRecipientFunction(FunctionContext memory ctx, SpokePool$WithdrawalRecipientFunctionOutputs memory outputs) virtual external;

    function triggerOnWithdrawalRecipientFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xb370b7f5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawalRecipientFunction.selector
        });
    }
}

abstract contract SpokePool$PreWithdrawalRecipientFunction {
    function preWithdrawalRecipientFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreWithdrawalRecipientFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0xb370b7f5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawalRecipientFunction.selector
        });
    }
}

abstract contract SpokePool$OnWrappedNativeTokenFunction {
    function onWrappedNativeTokenFunction(FunctionContext memory ctx, SpokePool$WrappedNativeTokenFunctionOutputs memory outputs) virtual external;

    function triggerOnWrappedNativeTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x17fcb39b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWrappedNativeTokenFunction.selector
        });
    }
}

abstract contract SpokePool$PreWrappedNativeTokenFunction {
    function preWrappedNativeTokenFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreWrappedNativeTokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "SpokePool",
            selector: bytes4(0x17fcb39b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWrappedNativeTokenFunction.selector
        });
    }
}


struct SpokePool$EmitAllEvents$AdminChanged {
  address previousAdmin;
  address newAdmin;
}

struct SpokePool$EmitAllEvents$BeaconUpgraded {
  address beacon;
}

struct SpokePool$EmitAllEvents$ClaimedRelayerRefund {
  bytes32 l2TokenAddress;
  bytes32 refundAddress;
  uint256 amount;
  address caller;
}

struct SpokePool$EmitAllEvents$EmergencyDeletedRootBundle {
  uint256 rootBundleId;
}

struct SpokePool$EmitAllEvents$EnabledDepositRoute {
  address originToken;
  uint256 destinationChainId;
  bool enabled;
}

struct SpokePool$EmitAllEvents$ExecutedRelayerRefundRoot {
  uint256 amountToReturn;
  uint256 chainId;
  uint256[] refundAmounts;
  uint32 rootBundleId;
  uint32 leafId;
  address l2TokenAddress;
  address[] refundAddresses;
  bool deferredRefunds;
  address caller;
}

struct SpokePool$EmitAllEvents$FilledRelay {
  bytes32 inputToken;
  bytes32 outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 repaymentChainId;
  uint256 originChainId;
  uint256 depositId;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  bytes32 exclusiveRelayer;
  bytes32 relayer;
  bytes32 depositor;
  bytes32 recipient;
  bytes32 messageHash;
  SpokePool$V3SpokePoolInterface$V3RelayExecutionEventInfo relayExecutionInfo;
}

struct SpokePool$EmitAllEvents$FilledV3Relay {
  address inputToken;
  address outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 repaymentChainId;
  uint256 originChainId;
  uint32 depositId;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  address exclusiveRelayer;
  address relayer;
  address depositor;
  address recipient;
  bytes message;
  SpokePool$V3SpokePoolInterface$LegacyV3RelayExecutionEventInfo relayExecutionInfo;
}

struct SpokePool$EmitAllEvents$FundsDeposited {
  bytes32 inputToken;
  bytes32 outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 destinationChainId;
  uint256 depositId;
  uint32 quoteTimestamp;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  bytes32 depositor;
  bytes32 recipient;
  bytes32 exclusiveRelayer;
  bytes message;
}

struct SpokePool$EmitAllEvents$Initialized {
  uint8 version;
}

struct SpokePool$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct SpokePool$EmitAllEvents$PausedDeposits {
  bool isPaused;
}

struct SpokePool$EmitAllEvents$PausedFills {
  bool isPaused;
}

struct SpokePool$EmitAllEvents$RelayedRootBundle {
  uint32 rootBundleId;
  bytes32 relayerRefundRoot;
  bytes32 slowRelayRoot;
}

struct SpokePool$EmitAllEvents$RequestedSlowFill {
  bytes32 inputToken;
  bytes32 outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 originChainId;
  uint256 depositId;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  bytes32 exclusiveRelayer;
  bytes32 depositor;
  bytes32 recipient;
  bytes32 messageHash;
}

struct SpokePool$EmitAllEvents$RequestedSpeedUpDeposit {
  uint256 updatedOutputAmount;
  uint256 depositId;
  bytes32 depositor;
  bytes32 updatedRecipient;
  bytes updatedMessage;
  bytes depositorSignature;
}

struct SpokePool$EmitAllEvents$RequestedSpeedUpV3Deposit {
  uint256 updatedOutputAmount;
  uint32 depositId;
  address depositor;
  address updatedRecipient;
  bytes updatedMessage;
  bytes depositorSignature;
}

struct SpokePool$EmitAllEvents$RequestedV3SlowFill {
  address inputToken;
  address outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 originChainId;
  uint32 depositId;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  address exclusiveRelayer;
  address depositor;
  address recipient;
  bytes message;
}

struct SpokePool$EmitAllEvents$SetWithdrawalRecipient {
  address newWithdrawalRecipient;
}

struct SpokePool$EmitAllEvents$SetXDomainAdmin {
  address newAdmin;
}

struct SpokePool$EmitAllEvents$TokensBridged {
  uint256 amountToReturn;
  uint256 chainId;
  uint32 leafId;
  bytes32 l2TokenAddress;
  address caller;
}

struct SpokePool$EmitAllEvents$Upgraded {
  address implementation;
}

struct SpokePool$EmitAllEvents$V3FundsDeposited {
  address inputToken;
  address outputToken;
  uint256 inputAmount;
  uint256 outputAmount;
  uint256 destinationChainId;
  uint32 depositId;
  uint32 quoteTimestamp;
  uint32 fillDeadline;
  uint32 exclusivityDeadline;
  address depositor;
  address recipient;
  address exclusiveRelayer;
  bytes message;
}

contract SpokePool$EmitAllEvents is
  SpokePool$OnAdminChangedEvent,
SpokePool$OnBeaconUpgradedEvent,
SpokePool$OnClaimedRelayerRefundEvent,
SpokePool$OnEmergencyDeletedRootBundleEvent,
SpokePool$OnEnabledDepositRouteEvent,
SpokePool$OnExecutedRelayerRefundRootEvent,
SpokePool$OnFilledRelayEvent,
SpokePool$OnFilledV3RelayEvent,
SpokePool$OnFundsDepositedEvent,
SpokePool$OnInitializedEvent,
SpokePool$OnOwnershipTransferredEvent,
SpokePool$OnPausedDepositsEvent,
SpokePool$OnPausedFillsEvent,
SpokePool$OnRelayedRootBundleEvent,
SpokePool$OnRequestedSlowFillEvent,
SpokePool$OnRequestedSpeedUpDepositEvent,
SpokePool$OnRequestedSpeedUpV3DepositEvent,
SpokePool$OnRequestedV3SlowFillEvent,
SpokePool$OnSetWithdrawalRecipientEvent,
SpokePool$OnSetXDomainAdminEvent,
SpokePool$OnTokensBridgedEvent,
SpokePool$OnUpgradedEvent,
SpokePool$OnV3FundsDepositedEvent
{
  event AdminChanged(SpokePool$EmitAllEvents$AdminChanged);
  event BeaconUpgraded(SpokePool$EmitAllEvents$BeaconUpgraded);
  event ClaimedRelayerRefund(SpokePool$EmitAllEvents$ClaimedRelayerRefund);
  event EmergencyDeletedRootBundle(SpokePool$EmitAllEvents$EmergencyDeletedRootBundle);
  event EnabledDepositRoute(SpokePool$EmitAllEvents$EnabledDepositRoute);
  event ExecutedRelayerRefundRoot(SpokePool$EmitAllEvents$ExecutedRelayerRefundRoot);
  event FilledRelay(SpokePool$EmitAllEvents$FilledRelay);
  event FilledV3Relay(SpokePool$EmitAllEvents$FilledV3Relay);
  event FundsDeposited(SpokePool$EmitAllEvents$FundsDeposited);
  event Initialized(SpokePool$EmitAllEvents$Initialized);
  event OwnershipTransferred(SpokePool$EmitAllEvents$OwnershipTransferred);
  event PausedDeposits(SpokePool$EmitAllEvents$PausedDeposits);
  event PausedFills(SpokePool$EmitAllEvents$PausedFills);
  event RelayedRootBundle(SpokePool$EmitAllEvents$RelayedRootBundle);
  event RequestedSlowFill(SpokePool$EmitAllEvents$RequestedSlowFill);
  event RequestedSpeedUpDeposit(SpokePool$EmitAllEvents$RequestedSpeedUpDeposit);
  event RequestedSpeedUpV3Deposit(SpokePool$EmitAllEvents$RequestedSpeedUpV3Deposit);
  event RequestedV3SlowFill(SpokePool$EmitAllEvents$RequestedV3SlowFill);
  event SetWithdrawalRecipient(SpokePool$EmitAllEvents$SetWithdrawalRecipient);
  event SetXDomainAdmin(SpokePool$EmitAllEvents$SetXDomainAdmin);
  event TokensBridged(SpokePool$EmitAllEvents$TokensBridged);
  event Upgraded(SpokePool$EmitAllEvents$Upgraded);
  event V3FundsDeposited(SpokePool$EmitAllEvents$V3FundsDeposited);

  function onAdminChangedEvent(EventContext memory ctx, SpokePool$AdminChangedEventParams memory inputs) virtual external override {
    emit AdminChanged(SpokePool$EmitAllEvents$AdminChanged(inputs.previousAdmin, inputs.newAdmin));
  }
function onBeaconUpgradedEvent(EventContext memory ctx, SpokePool$BeaconUpgradedEventParams memory inputs) virtual external override {
    emit BeaconUpgraded(SpokePool$EmitAllEvents$BeaconUpgraded(inputs.beacon));
  }
function onClaimedRelayerRefundEvent(EventContext memory ctx, SpokePool$ClaimedRelayerRefundEventParams memory inputs) virtual external override {
    emit ClaimedRelayerRefund(SpokePool$EmitAllEvents$ClaimedRelayerRefund(inputs.l2TokenAddress, inputs.refundAddress, inputs.amount, inputs.caller));
  }
function onEmergencyDeletedRootBundleEvent(EventContext memory ctx, SpokePool$EmergencyDeletedRootBundleEventParams memory inputs) virtual external override {
    emit EmergencyDeletedRootBundle(SpokePool$EmitAllEvents$EmergencyDeletedRootBundle(inputs.rootBundleId));
  }
function onEnabledDepositRouteEvent(EventContext memory ctx, SpokePool$EnabledDepositRouteEventParams memory inputs) virtual external override {
    emit EnabledDepositRoute(SpokePool$EmitAllEvents$EnabledDepositRoute(inputs.originToken, inputs.destinationChainId, inputs.enabled));
  }
function onExecutedRelayerRefundRootEvent(EventContext memory ctx, SpokePool$ExecutedRelayerRefundRootEventParams memory inputs) virtual external override {
    emit ExecutedRelayerRefundRoot(SpokePool$EmitAllEvents$ExecutedRelayerRefundRoot(inputs.amountToReturn, inputs.chainId, inputs.refundAmounts, inputs.rootBundleId, inputs.leafId, inputs.l2TokenAddress, inputs.refundAddresses, inputs.deferredRefunds, inputs.caller));
  }
function onFilledRelayEvent(EventContext memory ctx, SpokePool$FilledRelayEventParams memory inputs) virtual external override {
    emit FilledRelay(SpokePool$EmitAllEvents$FilledRelay(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.repaymentChainId, inputs.originChainId, inputs.depositId, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.exclusiveRelayer, inputs.relayer, inputs.depositor, inputs.recipient, inputs.messageHash, inputs.relayExecutionInfo));
  }
function onFilledV3RelayEvent(EventContext memory ctx, SpokePool$FilledV3RelayEventParams memory inputs) virtual external override {
    emit FilledV3Relay(SpokePool$EmitAllEvents$FilledV3Relay(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.repaymentChainId, inputs.originChainId, inputs.depositId, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.exclusiveRelayer, inputs.relayer, inputs.depositor, inputs.recipient, inputs.message, inputs.relayExecutionInfo));
  }
function onFundsDepositedEvent(EventContext memory ctx, SpokePool$FundsDepositedEventParams memory inputs) virtual external override {
    emit FundsDeposited(SpokePool$EmitAllEvents$FundsDeposited(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.destinationChainId, inputs.depositId, inputs.quoteTimestamp, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.depositor, inputs.recipient, inputs.exclusiveRelayer, inputs.message));
  }
function onInitializedEvent(EventContext memory ctx, SpokePool$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(SpokePool$EmitAllEvents$Initialized(inputs.version));
  }
function onOwnershipTransferredEvent(EventContext memory ctx, SpokePool$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(SpokePool$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function onPausedDepositsEvent(EventContext memory ctx, SpokePool$PausedDepositsEventParams memory inputs) virtual external override {
    emit PausedDeposits(SpokePool$EmitAllEvents$PausedDeposits(inputs.isPaused));
  }
function onPausedFillsEvent(EventContext memory ctx, SpokePool$PausedFillsEventParams memory inputs) virtual external override {
    emit PausedFills(SpokePool$EmitAllEvents$PausedFills(inputs.isPaused));
  }
function onRelayedRootBundleEvent(EventContext memory ctx, SpokePool$RelayedRootBundleEventParams memory inputs) virtual external override {
    emit RelayedRootBundle(SpokePool$EmitAllEvents$RelayedRootBundle(inputs.rootBundleId, inputs.relayerRefundRoot, inputs.slowRelayRoot));
  }
function onRequestedSlowFillEvent(EventContext memory ctx, SpokePool$RequestedSlowFillEventParams memory inputs) virtual external override {
    emit RequestedSlowFill(SpokePool$EmitAllEvents$RequestedSlowFill(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.originChainId, inputs.depositId, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.exclusiveRelayer, inputs.depositor, inputs.recipient, inputs.messageHash));
  }
function onRequestedSpeedUpDepositEvent(EventContext memory ctx, SpokePool$RequestedSpeedUpDepositEventParams memory inputs) virtual external override {
    emit RequestedSpeedUpDeposit(SpokePool$EmitAllEvents$RequestedSpeedUpDeposit(inputs.updatedOutputAmount, inputs.depositId, inputs.depositor, inputs.updatedRecipient, inputs.updatedMessage, inputs.depositorSignature));
  }
function onRequestedSpeedUpV3DepositEvent(EventContext memory ctx, SpokePool$RequestedSpeedUpV3DepositEventParams memory inputs) virtual external override {
    emit RequestedSpeedUpV3Deposit(SpokePool$EmitAllEvents$RequestedSpeedUpV3Deposit(inputs.updatedOutputAmount, inputs.depositId, inputs.depositor, inputs.updatedRecipient, inputs.updatedMessage, inputs.depositorSignature));
  }
function onRequestedV3SlowFillEvent(EventContext memory ctx, SpokePool$RequestedV3SlowFillEventParams memory inputs) virtual external override {
    emit RequestedV3SlowFill(SpokePool$EmitAllEvents$RequestedV3SlowFill(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.originChainId, inputs.depositId, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.exclusiveRelayer, inputs.depositor, inputs.recipient, inputs.message));
  }
function onSetWithdrawalRecipientEvent(EventContext memory ctx, SpokePool$SetWithdrawalRecipientEventParams memory inputs) virtual external override {
    emit SetWithdrawalRecipient(SpokePool$EmitAllEvents$SetWithdrawalRecipient(inputs.newWithdrawalRecipient));
  }
function onSetXDomainAdminEvent(EventContext memory ctx, SpokePool$SetXDomainAdminEventParams memory inputs) virtual external override {
    emit SetXDomainAdmin(SpokePool$EmitAllEvents$SetXDomainAdmin(inputs.newAdmin));
  }
function onTokensBridgedEvent(EventContext memory ctx, SpokePool$TokensBridgedEventParams memory inputs) virtual external override {
    emit TokensBridged(SpokePool$EmitAllEvents$TokensBridged(inputs.amountToReturn, inputs.chainId, inputs.leafId, inputs.l2TokenAddress, inputs.caller));
  }
function onUpgradedEvent(EventContext memory ctx, SpokePool$UpgradedEventParams memory inputs) virtual external override {
    emit Upgraded(SpokePool$EmitAllEvents$Upgraded(inputs.implementation));
  }
function onV3FundsDepositedEvent(EventContext memory ctx, SpokePool$V3FundsDepositedEventParams memory inputs) virtual external override {
    emit V3FundsDeposited(SpokePool$EmitAllEvents$V3FundsDeposited(inputs.inputToken, inputs.outputToken, inputs.inputAmount, inputs.outputAmount, inputs.destinationChainId, inputs.depositId, inputs.quoteTimestamp, inputs.fillDeadline, inputs.exclusivityDeadline, inputs.depositor, inputs.recipient, inputs.exclusiveRelayer, inputs.message));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](23);
    triggers[0] = this.triggerOnAdminChangedEvent();
    triggers[1] = this.triggerOnBeaconUpgradedEvent();
    triggers[2] = this.triggerOnClaimedRelayerRefundEvent();
    triggers[3] = this.triggerOnEmergencyDeletedRootBundleEvent();
    triggers[4] = this.triggerOnEnabledDepositRouteEvent();
    triggers[5] = this.triggerOnExecutedRelayerRefundRootEvent();
    triggers[6] = this.triggerOnFilledRelayEvent();
    triggers[7] = this.triggerOnFilledV3RelayEvent();
    triggers[8] = this.triggerOnFundsDepositedEvent();
    triggers[9] = this.triggerOnInitializedEvent();
    triggers[10] = this.triggerOnOwnershipTransferredEvent();
    triggers[11] = this.triggerOnPausedDepositsEvent();
    triggers[12] = this.triggerOnPausedFillsEvent();
    triggers[13] = this.triggerOnRelayedRootBundleEvent();
    triggers[14] = this.triggerOnRequestedSlowFillEvent();
    triggers[15] = this.triggerOnRequestedSpeedUpDepositEvent();
    triggers[16] = this.triggerOnRequestedSpeedUpV3DepositEvent();
    triggers[17] = this.triggerOnRequestedV3SlowFillEvent();
    triggers[18] = this.triggerOnSetWithdrawalRecipientEvent();
    triggers[19] = this.triggerOnSetXDomainAdminEvent();
    triggers[20] = this.triggerOnTokensBridgedEvent();
    triggers[21] = this.triggerOnUpgradedEvent();
    triggers[22] = this.triggerOnV3FundsDepositedEvent();
    return triggers;
  }
}