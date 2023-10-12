// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {HomeWork2} from "../src/HomeWork2.sol";

contract HomerWork2Test is Test {
    HomeWork2 homerwork2;

    function setUp() public {
        uint256[] memory _numbers = new uint256[](10);
        // Add 10 random numbers to the array
        for (uint256 i = 0; i < 10; i++) {
            _numbers[i] = uint256(keccak256(abi.encodePacked(block.timestamp, i)));
        }
        homerwork2 = new HomeWork2(_numbers);
    }

    /**
     * @notice Test to delete one number
     * @param index The index of the number to delete
     */
    function test_delete_one_number(uint256 index) public {
        vm.assume(index < homerwork2.getNumbersLength());
        console2.log("Index to delete :", index);
        uint256[] memory _indexes = homerwork2.getNumbers();
        homerwork2.deleteElement(index);
        assertEq(homerwork2.getNumbers().length, _indexes.length - 1);
        // Test each number of the array to see if it is the same less the deleted number
        for (uint256 i = 0; i < homerwork2.getNumbersLength(); i++) {
            if (i != index) {
                assertEq(homerwork2.getNumbers()[i], _indexes[i]);
            } else {
                // Since we move the last number to the deleted index, we need to check if the last number is the same
                assertEq(homerwork2.getNumbers()[i], _indexes[_indexes.length - 1]);
            }
        }
    }

    /**
     * @notice Test to delete multiple numbers
     * @param nbIndexesToDelete The total of indexes to delete
     */
    function test_delete_multiple_number(uint256 nbIndexesToDelete) public {
        vm.assume(nbIndexesToDelete < homerwork2.getNumbersLength());
        console2.log("Number of indexes to delete :", nbIndexesToDelete);
        for (uint256 i = 0; i < nbIndexesToDelete; i++) {
            test_delete_one_number(i);
        }
    }
}
