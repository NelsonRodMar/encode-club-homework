// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// @author NelsonRodMar.lens
contract Level_7 {
    function solution(address addr) external view returns (uint256 codeSize) {
        assembly {
            codeSize := extcodesize(addr)
        }
    }
}
