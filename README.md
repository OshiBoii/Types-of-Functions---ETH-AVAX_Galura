# Silver ERC-20 Token Solidity Contract

This project implements a basic ERC-20 token called *Silver* (SLVR) on the Ethereum blockchain. The contract includes features such as minting, burning, and transferring tokens. Only the contract owner can mint new tokens, while any user can burn and transfer tokens. Feel free to change the token name and symbol for your own usecase.
---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Author](#author)

---

## Features

1. **Token Information**:
   - Name: `Silver`
   - Symbol: `SLVR`
   - Total Supply: Dynamically updated with minting and burning operations.

2. **Token Functionalities**:
   - **Minting**: 
     - Only the contract owner can mint new tokens to a specified address.
   - **Burning**: 
     - Any user can burn their own tokens, reducing the total supply.
   - **Transferring**: 
     - Any user can transfer their tokens to other addresses.

3. **Access Control**:
   - The **minting** function is restricted to the contract owner using OpenZeppelin's `Ownable` contract.
   - The **burning** and **transferring** functions are accessible to all token holders.
   - The `transfer` function is explicitly defined for clarity but retains the standard ERC-20 behavior.

---

## Requirements

- [Remix IDE](https://remix.ethereum.org/) (for contract deployment and testing)
- Solidity version `^0.8.0`
- OpenZeppelin Contracts for ERC-20 functionality and `Ownable` extension.

---

## Installation

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Create a new file and name it appropriately (e.g., `Silver.sol` or anything related to your own token).
3. Paste the contract code into the new file.
4. Compile the contract using the Remix Solidity compiler (version `^0.8.0`).
5. Deploy the contract using Remix’s **Deploy & Run** tab

---

## Usage

1. **Minting Tokens**:
   - Only the contract owner can mint tokens. Use the `mint` function to mint a specific amount of tokens to any address.
   - Example: `mint(address recipient, uint256 amount)`.

2. **Transferring Tokens**:
   - Any user can transfer tokens to another address using the `transfer` function.
   - Example: `transfer(address to, uint256 amount)`.

3. **Burning Tokens**:
   - Any user can burn a specified amount of their tokens using the `burn` function.
   - Example: `burn(uint256 amount)`.

---

## License

This project is licensed under the MIT License.

---

## Author

Ywan Scazi Galura | 202110347@fit.edu.ph
