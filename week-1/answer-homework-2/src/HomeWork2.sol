// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
 * @title HomeWork2
 * @dev Delete element in an array at index
 */
/// @title HomeWork2
/// @author NelsonRodMar.lens
/// @notice Delete element in an array at index
/// @custom:precision This contract suppose that we delete only one element at a time
contract HomeWork2 {
    uint256[] public numbers;

    constructor(uint256[] memory _numbers) {
        numbers = _numbers;
    }

    /**
     * @dev Delete element at index
     * @param index The index of the element to delete
     */
    function deleteElement(uint256 index) public {
        require(index < numbers.length, "Index out of bounds");
        numbers[index] = numbers[numbers.length - 1];
        numbers.pop();
    }

    /**
     * @dev Get the numbers array
     * @return The numbers array
     */
    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    /**
     * @dev Get the length of the numbers array
     * @return The length of the numbers array
     */
    function getNumbersLength() public view returns (uint256) {
        return numbers.length;
    }
}
