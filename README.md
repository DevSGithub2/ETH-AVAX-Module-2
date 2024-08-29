# DWallet Project

This project demonstrates the implementation of a smart token using Solidity on Remix IDE, showcasing the use of require, assert, and revert statements to enforce conditions, ensure consistency, and manage execution flow.

## Description

DWallet is an Ethereum smart contract allowing users to send coins with names and messages, view transaction details, and find transaction addresses.

### Features

- Connect to MetaMask wallet
- Display user account address
- View account balance
- Transfer ETH
- View last transaction details

## Getting Started

### Setup

1. **Install Dependencies:**
 ```
   npm install
 ```
2.Open two additional terminals in VS Code.

3.In the second terminal, start the Hardhat local blockchain:
 ```
npx hardhat node
 ```
4.In the third terminal, deploy the contract to the local blockchain:
 ```
npx hardhat run --network localhost scripts/deploy.js
 ```
5.In the first terminal, start the front-end application:
 ```
npm run dev
 ```
## Customization

Customize the UI elements, styles, and behavior of the DWallet component by modifying JSX, CSS, and event handlers to fit your design and functionality needs.

### Interacting with Front-End

- Press the connect button, ensuring MetaMask is on the same network as the Hardhat RPC URL.
- Confirm the connection in MetaMask.
- Send coins by entering values from the live smart contract on the blockchain.

## Author 

**Dev Sagar**  
GitHub: [DevSGitub2](https://github.com/DevSGitub2)

### Video Walkthrough

[Watch Video](https://www.loom.com/share/f52475635c744e6db6dcab8294c2bc9b?sid=d9046b37-213e-4a89-abc8-d43600385389)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.



