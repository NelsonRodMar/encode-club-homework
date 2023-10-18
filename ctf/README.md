## CTF Encode Club 2023

In this repository you can find the source code for each level of the CTF Encode Club 2023.
The challenge everytime is to get the most gas optimized solution.

## Tutorial

For each level you will be asked to write a smart contract based on the given interface. You are free to write the solution as you see fit as long as your contract adheres to the contract interface. In practice this means, for most levels, you will be given an empty function and asked to write the logic. Once you have written your solution you will need to deploy the contract and submit the address to receive a score.
<br><br>
You can submit as many times as you like. The contract will save your max score with the lowest gas.

## Level 0 - Return 255 (tutorial)
### Instruction
This level is really simple. Use the interface below to write a smart contract. Your contract should contain a function called solution that returns a uint8. In this case the function body logic is very simply as the answer is always 255.
Interface:

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

interface Isolution {
function solution() external pure returns (uint8);
}
```
Example solution : <br>
To solve we need write the function to return the correct answer. In this case we would just need to write return 255

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

contract Level_0 {
    function solution() external pure returns (uint8){
        return 255;
    }
}
```
### Solution
My solution can be find here: [Level 0](./src/Level_0.sol). 
<br>
Point of this solution : 3021.


## Contract Instruction 

### Build

```shell
$ forge build
```

### Deploy threw a ledger

```shell
$ forge script script/Deploy.s.sol --broadcast  --ledger --hd-paths HD_PATHS --legacy --rpc-url RPC_URL --sender ADDRESS_SENDER
```
