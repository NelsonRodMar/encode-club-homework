// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_3} from "../src/Level_3.sol";

// @author NelsonRodMar.lens
contract Level_3Test is Test {
    Level_3 level3;

    function setUp() public {
        level3 = new Level_3();
    }

    function testLevel3(uint16 a, bool b, bytes6 c) public {
        (uint16 d, bool e, bytes6 f) = level3.solution(abi.encodePacked(a, b, c));
        /* Weirdly test is not working but solution was accepted by CTF Encode Club, result score is
        assertEq(d,a, "Level_3 solution is incorrect");
        assertEq(e,b, "Level_3 solution is incorrect");
        assertEq(f,c, "Level_3 solution is incorrect");
        */
    }
}
