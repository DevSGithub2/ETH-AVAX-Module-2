
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
