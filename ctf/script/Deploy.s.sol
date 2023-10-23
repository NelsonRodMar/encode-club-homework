// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console2 as console} from "forge-std/Script.sol";

import {Level_1} from "../src/Level_1.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() external {
        vm.startBroadcast();
        Level_1 lvl1 = new Level_1();
        console.log("Level_1 address: ", address(lvl1));
        vm.stopBroadcast();
    }
}
