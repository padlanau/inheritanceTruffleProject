// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./Ownable.sol";
import "./Destroyable.sol";

/**
 * @title  Bank  
 * @author Lodgerio Padlan
 * @dev 
        - make sure that the user can not withdraw more than their balance
        - correctly adjust the balance of the user after a withdrawal
        - if someone doesn't have enough balance for their withdrawal, the function call should throw an error and revert the transaction.

        - accept money and keep track of transfer money between different Ethereum      
        - test: 
            - address 1 deposited 1 ether.. getBalance() will give us 1 ether balance for address 1.
		    - address 2 deposited 3 ether.. getBalance() will give us 2 ether balance for address 2.
		    - but the deployed contract will have 3 ether. 
		    - because we are only tracking the balance internally using "balance" mapping.	

 * @notice  A simply smart contract to demonstrate Inheritance
*/
contract Bank is Ownable, Destroyable {
    
    mapping(address => uint) balance;
    
    event depositDone(uint amount, address indexed depositedTo);
    
    function deposit() public payable returns (uint)  {
        balance[msg.sender] += msg.value;
        emit depositDone(msg.value, msg.sender);
        return balance[msg.sender];
    }
    
    function withdraw(uint amount) public onlyOwner returns (uint){
        require(balance[msg.sender] >= amount);
        payable(msg.sender).transfer(amount);
        return balance[msg.sender];
    }
    
    function getBalance() public view returns (uint){
        return balance[msg.sender];
    }
    
    function transfer(address recipient, uint amount) public {
        require(balance[msg.sender] >= amount, "Balance not sufficient");
        require(msg.sender != recipient, "Don't transfer money to yourself");
        
        uint previousSenderBalance = balance[msg.sender];
        
        _transfer(msg.sender, recipient, amount);    
        
        assert(balance[msg.sender] == previousSenderBalance - amount);
    }
    
    function _transfer(address from, address to, uint amount) private {
        balance[from] -= amount;
        balance[to] += amount;
    }
    
} 

