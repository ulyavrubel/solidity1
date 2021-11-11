// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    // uint256 favoriteNumber = 5; //unsigned integer - only positive

    // bool favoriteBool = false;

    // string favoriteString = 'text';

    // int256 favoriteInt = -5; //signed integer - positive and negative

    // address favoriteAddress = 0xF52037E7dc5bA957767274Da6e86c1DcDaf01A12;

    // bytes32 favoriteBytes = 'cat';


    uint256 favoriteNumber; //this will get initialized as 0

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people; // [] - dinamic array, [1] - fixed sized array

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name)); //({favoriteNumber: _favoriteNumber, name: _name}) could be passed as well, shorter way (_favoriteNumber, _name) puts vars by indexes inside Struct
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
