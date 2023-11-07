// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_4 {
    function solution(uint256 numberToTest) external view returns (uint256 result) {
        assembly {
            for { let i := 0 } xor(lt(calculateXToTheN(2, i), numberToTest),eq(calculateXToTheN(2, i), numberToTest)) { i := add(i, 1) } {
                result := calculateXToTheN(2, i)
            }

            function calculateXToTheN(x, n) -> resultXToTheN {
                resultXToTheN := 1
                for {let i := 0} lt(i, n) {} {
                    resultXToTheN := mul(resultXToTheN, x)
                    i := add(i, 1)
                }
            }
        }

    }
}
