// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT {
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        for (uint i = 1; i <= 5; ++i) {
            // Mint NFTs with ID = i and transfer them to the contact deployer's address.
            _mint(msg.sender, i);
        }
    }
}