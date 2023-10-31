// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray) {
        // Sorting unsortedArray in ascending order using bubble sort algorithm (https://en.wikipedia.org/wiki/Bubble_sort) and return in sortedArray
        bool swapped;
        uint256 temp;
        sortedArray = unsortedArray;
        // We use unecheked to avoid the overflow check since we never get overflow (we are sorting 10 elements)
        unchecked {
            for (uint256 i; i < 9; i++) {
                for (uint256 j; j < 9 - i; j++) {
                    if (sortedArray[j] > sortedArray[j + 1]) {
                        temp = sortedArray[j];
                        sortedArray[j] = sortedArray[j + 1];
                        sortedArray[j + 1] = temp;
                    }
                    swapped = true;
                }
                if (!swapped) {
                    break;
                }
            }
        }
    }
}
