// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public simpleStorageArray;

    
    //generate a contract of simple storage type 
    function createSimpleStorageContract() public {
        //create a variable of type SimpeStorage called simpleStorage, 
        //which is going to be a new SimoleStorage contract(takes no input parameters)
        SimpleStorage simpleStorage = new SimpleStorage();  
        simpleStorageArray.push(simpleStorage);
    }

}