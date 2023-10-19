**1) Create a Solidity contract with one function. The Solidity function should return the 
amount of ETH that was passed to it, and the function body should written in assembly**

```solidity
pragma solidity 0.8.20;

contract GetValue {

    function valueEthSend() public payable returns(uint256 value) {
      assembly{
         value := callvalue()
      }
    }
}
```

**2) Do you know what this code is doing ?**

The code :

```
push9 0x601e8060093d393df3
msize
mstore                      # mem = 000...000 601e8060093d393df3
                            #     = 000...000 spawned constructor payload

# copy the runtime bytecode after the constructor code in mem
codesize                    # cs
returndatasize              # 0 cs
msize                       # 0x20 0 cs
codecopy                    # mem = 000...000 601e8060093d393df3 RUNTIME_BYTECODE


                            # --- stack ---
push1 9                     # 9
codesize                    # cs 9
add                         # cs+9 = CS = total codesize in memory

push1 23                    # 23 CS
returndatasize              # 0 23 CS
dup3                        # CS 0 23 CS

dup3                        # 23 CS 0 23 CS
callvalue                   # v 23 CS 0 23 CS
create                      # addr1 0 23 CS
pop                         # 0 23 CS

create                      # addr2

selfdestruct
```

This code is deleting a contract and sending the balance to a newly created account 🤔



**3) Explain what the following code is doing in the Yul ERC20 contract ?**

The code : 

```solidity
function allowanceStorageffset (account,spender) →> offset {
	offset := accountToStorage0ffset (account)
	mstore(0, offset)
	mstore (0x20, spender)
	offset := keccak256(0, 0x40)
｝
```

This return the offset where the value of allowance of spending is store for a account - spender.

. First we get the offset of the account.<br>
. Then we store this value in memory.<br>
. Right after we get store the spender value right after.<br>
. And finally we return the keccak256 of this precedent two value store in memory.