pragma solidity ^0.8.4;

contract SubOverflow {
    // Modify this function so that on overflow it returns the value 0
    // otherwise it should return x - y
    function subtract(uint256 x, uint256 y) public pure returns (uint256 z) {
        // Write assembly code that handles overflows
        assembly {
            z := sub(x, y)
            if gt(z, x) {
                z := 0
            }
        }
    }
}
