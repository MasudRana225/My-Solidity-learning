// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Day 1 Demo Contract

contract HelloWorld{
    string public message = "Hello World";
    uint public fee = 5;
    function setmessage(string memory _message ,uint _fee) public{
        message = _message;
        fee = _fee;
    }
}
