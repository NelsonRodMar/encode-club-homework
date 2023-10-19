**1) When do the CODECOPY operation, what are we overwriting ?**

We overwrite the value of `value1` to set 17 instead of 0.


**2) Could the answer to Q1 allow an optimisation ?**

Yes by setting up 17 right when we declare `value1` at line 6.



**3) Can you trigger a revert in the init code in Remix ?**


Yes by send some WEI when we deployed, because the constructor is not payable. 


**4) Write some Yul to :**

1) Add 0x07 to 0x08
2) Store the result at the next free memory location
3) (optional) write again in opcodes

1 & 2 :

```solidity
function yul() public pure returns{
     assembly {
        let t := add(0x07, 0x08)
     }
   }
```

3:


```solidity
function yul() public pure returns{
     assembly {
         
        mstore(0,add(0x07, 0x08))
     }
   }
```


**5) Can you think of a situation whre the opcode EXTCODECOPY is used ?**

A simple function where we need an address to send some token or ETH. So we just need it in memory, not in storage (permanent) because once we send him the token or ETH we don't need to store it.


**6) Complete the assembly exercises in this repo [Exercises](https://github.com/ExtropyIO/ExpertSolidityBootcamp)**

You can fin all my solution [here](./ExpertSolidityBootcamp)
