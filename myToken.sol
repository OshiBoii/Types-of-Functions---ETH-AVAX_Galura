// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Importing OpenZeppelin contracts from CDN
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Silver is ERC20, Ownable {

    // The constructor for the Silver token contract
    constructor(address initialOwner) 
        ERC20("Silver", "SLVR")  // Call the ERC20 constructor with token name and symbol
        Ownable(initialOwner)    // Pass the initial owner to the Ownable constructor
    {
        // Initialization logic, if needed
    }

    // Mint function (only accessible by the contract owner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Burn function (open to any token holder)
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Transfer function (overrides default ERC20 transfer for explicit definition)
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
