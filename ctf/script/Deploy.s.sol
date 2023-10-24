// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console2 as console} from "forge-std/Script.sol";

import {Level_2} from "../src/Level_2.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() external {
        vm.startBroadcast();
        Level_2 lvl2 = new Level_2();
        console.log("Level_2 address: ", address(lvl2));
        vm.stopBroadcast();
    }
}
