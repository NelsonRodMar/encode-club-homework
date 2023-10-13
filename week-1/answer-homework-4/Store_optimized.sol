// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {

    struct payments {
        bool valid;
        bool checked;
        uint8 paymentType;
        address sender;
        address receiver;
        uint256 amount;
        uint256 finalAmount;
        uint256 initialAmount;
    }
    address admin;
    bool flag1;
    bool flag2;
    bool flag3;
    uint8 index;
    uint256 public number;
    mapping (address=>uint256) balances;
    address admin2;
    payments[8] topPayments;


    constructor(){

    }


    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
