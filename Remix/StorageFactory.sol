// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract storageFactory {
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();  
    }

}