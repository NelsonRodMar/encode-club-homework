// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_4 {
    function solution(uint256 numberToTest) external pure returns (uint256 result) {
        assembly {
            function calculateXToTheN(x, n) -> resultTwoToTheN {

                let i := 0
                for {} lt(i, sload(n)) {i := add(i, 1)} {
                    resultTwoToTheN := mul(resultTwoToTheN, sload(n))
                }
            }
            for { result := 0 } lt(result, calculateXToTheN(numberToTest, result)) { result := add(result, 1) } {}
        }
    }
}
