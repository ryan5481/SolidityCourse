// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract storageFactory {
    SimpleStorage[] public SimpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();  
        SimpleStorageArray.push(simpleStorage);
    }

}