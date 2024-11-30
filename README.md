# MyToken Solidity Contract

This project implements a basic ERC-20-like token on the Ethereum blockchain. The contract supports token minting, burning, and transferring while enforcing owner restrictions for minting. Built using Solidity, this project is ideal for understanding token management concepts in blockchain development.

---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Demo Workflow](#demo-workflow)
- [License](#license)

---

## Features

1. **Token Information**:
   - Name: `Silver`
   - Abbreviation: `SLVR`
   - Total Supply: Dynamically updated.

2. **Token Functionalities**:
   - **Minting**: Only the contract owner can mint new tokens.
   - **Burning**: Any user can burn their tokens if they have a sufficient balance.
   - **Transferring**: Users can transfer tokens to other addresses.

3. **Access Control**:
   - A built-in modifier ensures that only the contract owner can mint tokens.

---

## Requirements

- [Remix IDE](https://remix.ethereum.org/) (for contract deployment and testing)
- Solidity ^0.8.18
- Ethereum development environment (e.g., Remix VM or a local Ethereum network)

---

## Installation

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and name it `MyToken.sol`. or anything you want
3. Paste the contract code into the file
4. Compile & Deploy using Remix

