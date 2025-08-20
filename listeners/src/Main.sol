// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./SpokePoolListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        SpokePoolListener listener = new SpokePoolListener();
        Trigger[] memory t = new Trigger[](2);
        t[0] = listener.triggerOnFilledRelayEvent();
        t[1] = listener.triggerOnFundsDepositedEvent();

        addTriggers(chainContract(Chains.Ethereum, 0x5c7BCd6E7De5423a257D81B442095A1a6ced35C5), t);
        addTriggers(chainContract(Chains.Optimism, 0x6f26Bf09B1C792e3228e5467807a900A503c0281), t);
        addTriggers(chainContract(Chains.Unichain, 0x09aea4b2242abC8bb4BB78D537A67a245A7bEC64), t);
        addTriggers(chainContract(Chains.Base, 0x09aea4b2242abC8bb4BB78D537A67a245A7bEC64), t);
        addTriggers(chainContract(Chains.Arbitrum, 0xe35e9842fceaCA96570B734083f4a58e8F7C5f2A), t);
        addTriggers(chainContract(Chains.Ink, 0xeF684C38F94F48775959ECf2012D7E864ffb9dd4), t);
        addTriggers(chainContract(Chains.Soneium, 0x3baD7AD0728f9917d1Bf08af5782dCbD516cDd96), t);
        addTriggers(chainContract(Chains.WorldChain, 0x09aea4b2242abC8bb4BB78D537A67a245A7bEC64), t);
        addTriggers(chainContract(Chains.Zora, 0x13fDac9F9b4777705db45291bbFF3c972c6d1d97), t);
    }
}
