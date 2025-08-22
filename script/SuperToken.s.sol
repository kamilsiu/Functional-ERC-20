// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SuperToken} from "../src/SuperToken.sol";

contract SuperTokenScript is Script {
    SuperToken public superToken;

    function setUp() public {}

    function run() public returns(SuperToken){
        vm.startBroadcast();
        superToken= new SuperToken(1000,210000);
        vm.stopBroadcast();
        return superToken;
    }
}
