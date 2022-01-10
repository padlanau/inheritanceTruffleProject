# inheritanceTruffleProject 
## A simply smart contract to demonstrate Inheritance

Instructions :
> - make sure that the user can not withdraw more than their balance
> - correctly adjust the balance of the user after a withdrawal
> - if someone doesn't have enough balance for their withdrawal, the function call should throw an error and revert the transaction.
> - accept money and keep track of transfer money between different Ethereum      

Test: 
 > - address 1 deposited 1 ether.. getBalance() will give us 1 ether balance for address 1.
 > - address 2 deposited 3 ether.. getBalance() will give us 2 ether balance for address 2.
 > - but the deployed contract will have 3 ether. 
 > - because we are only tracking the balance internally using "balance" mapping.	

Migrate (run from the terminal and make sure your Ganache is open) :
> - D:\blockchain\inheritanceTruffleProject> truffle console (only if you are not in the console yet)
> - truffle(development)> migrate --reset (only use migrate if this is your first time) 


      Compiling your contracts...
      ===========================
      > Compiling .\contracts\Bank.sol
      > Compiling .\contracts\Destroyable.sol
      > Compiling .\contracts\Migrations.sol
      > Compiling .\contracts\Ownable.sol
      > Artifacts written to D:\blockchain\inheritanceTruffleProject\build\contracts
      > Compiled successfully using:
         - solc: 0.8.10+commit.fc410830.Emscripten.clang



      Starting migrations...
      ======================
      > Network name:    'development'
      > Network id:      5777
      > Block gas limit: 6721975 (0x6691b7)


      1_initial_migration.js
      ======================

         Deploying 'Migrations'
         ----------------------
         > transaction hash:    0x45e7bf853dd31f40da9dab87d1e0c2feb2594f891abd351b0e6af2395a273563
         > Blocks: 0            Seconds: 0

      Summary
      =======
      > Total deployments:   1
      > Final cost:          0.00497708 ETH


      - Blocks: 0            Seconds: 0
      - Saving migration to chain.

      truffle(development)>
