// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray){
        // Sorting unsortedArray in ascending order using bubble sort algorithm (https://en.wikipedia.org/wiki/Bubble_sort) and return in sortedArray
        bool swapped;
        uint temp;
        sortedArray = unsortedArray;
        for (uint i; i < sortedArray.length - 1;) {
            for (uint j; j < sortedArray.length - i - 1;) {
                if (sortedArray[j] > sortedArray[j + 1]) {
                    temp = sortedArray[j];
                    sortedArray[j] = sortedArray[j + 1];
                    sortedArray[j + 1] = temp;
                    swapped = true;
                }
                unchecked {
                    j++;
                }
            }
            if (!swapped) {
                break;
            }
            unchecked {
                i++;
            }
        }
    }
}
