**1) The parameter `X`represents a function. Complete the function signature so that `X`is a standard ERC20 transfer function (other than visibility). The `query` function should revert if the ERC20 function returns false**
The function 
```solidity
function query(uint _amount, address _receiver, X) public {
	...
}
```
My answer :
```solidity
function query (uint _amount, address _receiver, function (address _receiver, uint _amount) external returns(bool) result) public {
    require(result(_receiver, _amount), "");
}
```

**2) The following function checks function details passed in the data parameter. The data parameters is bytes encoded representing the following : Function selector, Target address, Amount (uin256). Complete the function as follows. The function should revert if the function is not an ERC20 transfer function. Otherwise extract the address and amount from the data variable and emit an event with those details `event transferOccured(address, uint256);`.

The function :
```solidity
function checkCall(bytes calldata data) external {
}
```
My answer :
```solidity
function checkCall(bytes calldata data) external {
// We exclude first 4 bytes that is the function selector
        (address _receiver,uint _amount) = abi.decode(data[4:], (address,uint256));
        require(keccak256(data) == keccak256(abi.encodeWithSignature("transfer(address,uint)", _receiver, _amount)));
        emit transferOccurred(_receiver,_amount);
}
```

