// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Solidity Functions

contract SimpleStorage {   
    //function syntex: function <name>(<parameter>) <visibility> <stateMutablity> returns(<return type>){
        //function body }

     function add (uint a, uint b) public  pure returns (uint){
        return a + b;
     }   

    //function visibility: public(Anyone can call it), 
                        // pritvate(Only inside this contract can call it(not even it child contracts)),
    //                  // external(only outside this contract can call it), 
                        // internal(only inside this contract can call it and child contracts)  

    //State Mutabilitiy: view(read Only: can read state variables, but not change them), pure(Intreraction-free: doesn't even read state variables)
    //                  payable(Can send ETH to the contract), nonpayable(Can't send ETH to the contract), no keyword(can modify state variables);

    //Examples:
    uint public value; //state variable

    function setValue(uint _V) public {
        value = _V; //can modify state variable
    }
    function getValue() public view returns (uint){
        return value;//read state
    }
    function addPure(uint a, uint b) public pure returns(uint){
        return a + b;//pure math
    }
    function receiveEther() public payable {
        //can receive Ether
    }

}