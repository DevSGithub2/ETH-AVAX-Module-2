# DWallet Project

* This project demonstrates the implementation of a smart token using Solidity on Remix IDE, showcasing the use of require, assert, and revert statements to enforce conditions, ensure consistency, and manage execution flow.


## Description

* DWallet is an Ethereum smart contract allowing users to send coins with names and messages, view transaction details, and find transaction addresses.


## Features

- Connect to MetaMask wallet
- Display user account address
- View account balance
- Transfer ETH
- View last transaction details

## Getting Started

### Code
```

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract DWallet {
    struct Coin {
        string name;
        string message;
        uint256 timestamp;
        address from;
    }

    Coin[] coins;
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }git commit -m "Your commit message"


    function sendCoin(string memory name, string memory message) public payable {
        require(msg.value > 0, "Please send an amount greater than 0 ether");
        owner.transfer(msg.value);
        coins.push(Coin(name, message, block.timestamp, msg.sender));
    }

    function getCoins() public view returns (Coin[] memory) {
        return coins;
    }
}
```


1. **Install Dependencies:**

 ```
 npm install
 ```
 ```
npx hardhat node
 ```
2. Create an another terminal, deploy the contract to the local blockchain:
 ```
npx hardhat run --network localhost scripts/deploy.js
 ```
 ```
npx hardhat run --network localhost scripts/fulldeploy.js
 ```
3. Then run the command for the front-end in the terminal:
 ```
npm run dev
 ```



### Show the Function in the Front-End

- Press the connect button, ensuring MetaMask is on the same network as the Hardhat RPC URL.
- Confirm the connection in MetaMask.
- Send coins by entering values from the live smart contract on the blockchain.


## Author 

**Dev Sagar**  

GitHub: [DevSGithub2](https://github.com/DevSGitub2)

### Video Walkthrough

[Watch Video](https://www.loom.com/share/f52475635c744e6db6dcab8294c2bc9b?sid=d9046b37-213e-4a89-abc8-d43600385389)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.



