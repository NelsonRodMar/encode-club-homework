// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console2 as console} from "forge-std/Script.sol";

import {Level_3} from "../src/Level_3.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() external {
        vm.startBroadcast();
        Level_3 lvl3 = new Level_3();
        console.log("Level_3 address: ", address(lvl3));
        vm.stopBroadcast();
    }
}
