// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import './SimpleStorage.sol';

//Storage factory pattern allows contract to deploy another contract

contract StorageFactory  is SimpleStorage {//inheriting all properties and functions of SimpleStorage
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        //create on object of type SimpleStorage
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //to interact with a contract needed:
        //- address
        //- ABI (Application Binary Interface)
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrive();
    }
}
