// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_0 {
    function solution() public pure returns (uint8) {
        assembly {
            // Store 0xff(255) in memory position 0 using the mstore8 opcode that stores a single byte (more efficient)
            mstore(0x00, 0xff)
            // Return the value stored in memory position 0
            return(0x00, 0x20)
        }
    }
}
