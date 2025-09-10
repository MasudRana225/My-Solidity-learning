// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Constructor & Modifiers:

contract ExampleContract{
    address public owner;
    uint public value;

    //Constructor-- runs only once when the contract is deployed
    constructor(uint _initialValue){
        owner = msg.sender;// set the deployer as the owner
        value = _initialValue;// initialize the value
    }

    //Modifier-- checks that the caller is the owner(modifier used checking conditions in fucntions)
    modifier onlyOwner(){
        require(msg.sender == owner, "Not the owner");
        _;
    }

    //This function can only called by the owner
    function changeValue(uint _newValue)public onlyOwner{
        value = _newValue;
    }

    //Anyone can read the value (no Modifier needed)
    function getValue() public view returns (uint){
        return value;
    }
}

contract Ownable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "Not the owner");
        _;
    }
    function changeOwner(address newOwner) public onlyOwner{
        owner = newOwner;
    }
}

