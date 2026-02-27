// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {MultiSig} from "../src/MultiSig.sol";

contract MultiSigScript is Script {
    MultiSig public multiSig;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        address[] memory owners = new address[](1);
        owners[0] = 0xe84503EBC06fcbCC00f3c2C81F34813837F4A4ae;
        uint256 confirmations = 1;

        multiSig = new MultiSig(owners, confirmations);

        vm.stopBroadcast();
    }
}
