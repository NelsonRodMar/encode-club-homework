// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_0 {
    function solution() public pure returns (uint8) {
        assembly {
            // Store 0xFF(255) in memory position 0
            mstore(0, 0xFF)
            // Return the value stored in memory position 0
            return(0, 0x20)
        }
    }
}
