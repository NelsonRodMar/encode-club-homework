// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_1} from "../src/Level_1.sol";

// @author NelsonRodMar.lens
contract Level_1Test is Test {
    Level_1 level1;

    function setUp() public {
        level1 = new Level_1();
    }

    function testLevel1() public view {
        uint256[2][3] memory x;
        for (uint256 i; i < 3; i++) {
            for (uint256 j; j < 2; j++) {
                x[i][j] = i + j;
            }
        }

        uint256[2][3] memory y;
        for (uint256 i; i < 3; i++) {
            for (uint256 j; j < 2; j++) {
                x[i][j] = i * j;
            }
        }

        uint256[2][3] memory solution = level1.solution(x, y);

        // Check that the solution is correct
        for (uint256 i = 0; i < 3; i++) {
            for (uint256 j = 0; j < 2; j++) {
                require(solution[i][j] == x[i][j] + y[i][j], "Level_1 solution is incorrect");
            }
        }
    }
}
