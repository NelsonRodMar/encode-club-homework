// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console2 as console} from "forge-std/Script.sol";

import {Level_0} from "../src/Level_0.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() external {
        vm.startBroadcast();
        Level_0 lvl0 = new Level_0();
        console.log("Level_0 address: ", address(lvl0));
        vm.stopBroadcast();
    }
}
