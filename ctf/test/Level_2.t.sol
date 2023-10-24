// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import {Test} from "forge-std/Test.sol";
import {console2 as console} from "forge-std/console2.sol";

import {Level_2} from "../src/Level_2.sol";

// @author NelsonRodMar.lens
contract Level_2Test is Test {
    Level_2 level2;

    function setUp() public {
        level2 = new Level_2();
    }

    function testLevel2() public  {
        // Create the same array but unsorted
        uint256[10] memory unsortedArray = [uint256(7),8,5,9,3,1,6,2,4,10];
        // Call the solution function
        uint256[10] memory resultSortedArray = level2.solution(unsortedArray);
        // Check if the array is sorted in ascending order
        for (uint256 i; i < 10; i++) {
            require(resultSortedArray[i] == (i + 1), "Level_2 solution is incorrect");
        }
    }
}
