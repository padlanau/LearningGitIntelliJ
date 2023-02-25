// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * Write a simple contract and declare four different types of variables.
 * Write get and set functions for each of these variables. 
 * Return the value of the variable in the “set function”.
 *
 */
contract HelloVariables {

    uint256 age;  // state variable
    bool isAdult;  // state variable
        
    address owner; 

    constructor (uint256 _age){
        age = _age;
        owner = msg.sender;
    }

    function setAge(uint256 _age) public {
        require(msg.sender == owner);
        require(_age < 100, "Age needs to be below 100 only");
        age = _age;  // local variable
        if (_age >= 18) {
            isAdult = true;
        } else {
            isAdult = false;
        }
    }

    function getAge() public view returns (uint256){
        return age;
    }

    function canDrive() public view returns (bool){
        return isAdult;
    }

}