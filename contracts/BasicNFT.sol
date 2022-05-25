// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    constructor() ERC721("Basic NFT", "BNFT") {
        for (uint i = 1; i <= 5; ++i) {
            // Mint NFTs with ID = i and transfer them to the contact deployer's address.
            _mint(msg.sender, i);
        }
    }
}