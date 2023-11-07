// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_5} from "../src/Level_5.sol";

// @author NelsonRodMar.lens
contract Level_5Test is Test {
    Level_5 level5;

    function setUp() public {
        level5 = new Level_5();
    }

    function testLevel5() public {
        assertEq(8, level5.solution(10, 6));
        assertEq(16, level5.solution(21, 11));
        assertEq(2048, level5.solution(2048, 2048));
        assertEq(2, level5.solution(1, 2));
    }
}
