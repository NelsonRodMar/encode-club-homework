// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_3 {
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        // Decode each variable from abi.encodePacked() format and return them uint16, bool, bytes6
        /// @solidity memory-safe-assembly
        assembly {
            a := mload(add(packed, 0x02))
            b := mload(add(packed, add(0x02, 0x01)))
            c := mload(add(packed, add(0x02, add(0x01, 0x06))))
        }
    }
}
