// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_0} from "../src/Level_0.sol";

// @author NelsonRodMar.lens
contract Level_0Test is Test {
    Level_0 level0;

    function setUp() public {
        level0 = new Level_0();
    }

    function testLevel0() public view {
        uint8 solution = level0.solution();
        console.log("Level_0 solution: ", solution);
        //Test that the solution value is equal to 255
        require(solution == 255, "Level_0 solution should be 255");
    }
}
