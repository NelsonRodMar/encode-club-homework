// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_4} from "../src/Level_4.sol";

// @author NelsonRodMar.lens
contract Level_4Test is Test {
    Level_4 level4;

    function setUp() public {
        level4 = new Level_4();
    }

    function testLevel4() public {
        assertEq(8, level4.solution(10));
        assertEq(16, level4.solution(21));
        assertEq(2048, level4.solution(2048));
    }
}
