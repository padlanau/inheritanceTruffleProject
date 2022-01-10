// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
 * @title  Ownable  
 * @author Lodgerio Padlan
 * @dev    Ownable will be the same for all the contract we made  
           using "internal" keyword      
 * @notice A simply smart contract to demonstrate Inheritance           
*/

 contract Ownable {

    address internal owner;
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _; //run the function
    }
    
    constructor(){
        owner = msg.sender;
    }
 }