//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract project{
    receive() payable external{
    }

    uint projectCode;
    string projectName;
    address payable owner;

    constructor(address _owner){
        owner = payable(_owner);
    }
    
}