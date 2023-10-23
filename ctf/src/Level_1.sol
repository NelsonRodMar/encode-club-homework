// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_1 {
    function solution(uint256[2][3] calldata x, uint256[2][3] calldata y)
        external
        pure
        returns (uint256[2][3] memory z)
    {
        // Add the values of x and y and store the result in z
        for (uint8 i; i < 3;) {
            for (uint8 j; j < 2;) {
                z[i][j] = x[i][j] + y[i][j];
                unchecked {
                    j++;
                }
            }
            unchecked {
                i++;
            }
        }
        /*
        // Try to solve it using assembly, but not working yet
        assembly {
            for {let i := 0} lt(i, 3) {i := add(i, 1)} {
                for {let j := 0} lt(j, 2) {j := add(j, 1)} {
                    // z[i][j] = x[i][j] + y[i][j]
                    // Load x[i][j] and y[i][j] from memory
                    let xij := mload(add(add(x, mul(i, 0x40)), mul(j, 0x20)))
                    let yij := mload(add(add(y, mul(i, 0x40)), mul(j, 0x20)))
                    // Add x[i][j] and y[i][j]
                    let zij := add(xij, yij)
                    // Store zij in z[i][j]
                    //mstore(add(add(z, mul(i, 0x40)), mul(j, 0x20)), zij)
                }
            }
        }*/
    }
}
