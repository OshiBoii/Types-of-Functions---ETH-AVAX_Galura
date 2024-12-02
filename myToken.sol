// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing OpenZeppelin contracts from CDN
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

// Silver Token (SLVR)
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

contract Silver is ERC20, ERC20Burnable, Ownable {

    // The constructor for the Silver token contract
    constructor(address initialOwner) 
        ERC20("Silver", "SLVR")  // Call the ERC20 constructor with token name and symbol
        Ownable(initialOwner)  // Call the Ownable constructor to set the deployer as the owner
    {
        // The deployer's address is automatically set as the owner by Ownable constructor
    }

    // Mint function (only accessible by the contract owner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
