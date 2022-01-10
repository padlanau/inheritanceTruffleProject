// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
import "./Ownable.sol";

/**
 * @title  Destroyable  
 * @author Lodgerio Padlan
 * @dev https://articles.caster.io/blockchain/self-destructing-smart-contracts-in-ethereum/
        
 * @notice  A simply smart contract to demonstrate Inheritance
*/

 contract Destroyable is Ownable {

  function destroy() public onlyOwner {
    address payable receiver = payable(msg.sender);
    selfdestruct(receiver);
  }
}