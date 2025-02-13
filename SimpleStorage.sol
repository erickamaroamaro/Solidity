// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 favoriteNumber;

    struct Person {
        uint256 number;
        string name;
    }

    Person[] listPerson;

    mapping(string => uint256) public nameToNumber;

    function store(uint256 _favoriteNumber) virtual public {
        favoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(uint256 _number, string calldata _name) public {
        listPerson.push(Person(_number, _name));
        nameToNumber[_name] = _number;
    }
}