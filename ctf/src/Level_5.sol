// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_5 {
    function solution(int256 a, int256 b) external pure returns (int256 result) {
        assembly {
            result := add(div(a, 2), div(b, 2))
            if or(eq(mod(a, 2), 1), eq(mod(b, 2), 1)) { result := add(result, 1) }
        }
    }
}
