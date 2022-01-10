# inheritanceTruffleProject - A simply smart contract to demonstrate Inheritance

Instructions :
- make sure that the user can not withdraw more than their balance
- correctly adjust the balance of the user after a withdrawal
- if someone doesn't have enough balance for their withdrawal, the function call should throw an error and revert the transaction.

- accept money and keep track of transfer money between different Ethereum      
- test: 
   - address 1 deposited 1 ether.. getBalance() will give us 1 ether balance for address 1.
   - address 2 deposited 3 ether.. getBalance() will give us 2 ether balance for address 2.
   - but the deployed contract will have 3 ether. 
   - because we are only tracking the balance internally using "balance" mapping.	
