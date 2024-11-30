// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    // Public variables
    string public tokenName = "Silver";
    string public tokenAbbreviation = "SLVR";
    uint public totalSupply = 0;

    // Address of the contract owner
    address public owner;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Mint function (restricted to the owner)
    function mint(address _address, uint _value) public onlyOwner {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function (open to all users but checks balance)
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // Transfer function (open to all users)
    function transfer(address _to, uint _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance to transfer");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }
}