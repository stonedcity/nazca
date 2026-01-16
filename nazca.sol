// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NazcaToken is ERC20, Ownable {
    constructor() ERC20("Nazca", "NAZCA") Ownable(msg.sender) {
        // Mint 42 million tokens to the deployer
        _mint(msg.sender, 42000000 * 10 ** decimals());
    }
}
