// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Solidity Data Types: value type, reference type, special type.

contract dataTypes{
    //value Types: bool, uint, int, address, bytes1...bytes32, enum
     bool public isTrue = true;
     int public age = 20;
     address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
     bytes32 dataHash;
     enum Status {Pending, Shipped, Accepted, Rejected, Canceled}
           Status public status = Status.Pending;

    //reference Types: arrays, structs, mapping, bytes, string
        uint[] public arr = [1,2,3];

         struct Person{
         uint age;
         string name;
        }
        Person public person = Person(20, "John");
        mapping (string => uint) public nameToAge;
        bytes public data = "abc";

        string public myName = "John";

    //special Types: msg.sender, msg.value. block.timestamp, payable
}