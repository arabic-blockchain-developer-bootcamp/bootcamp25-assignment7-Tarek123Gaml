// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Assignment7 is ERC20 {
  address public owner;
    // Constructor to initialize the token
    // Fill in the parameters for the token name and symbol
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
      owner = msg.sender;
    }

    // Function to mint tokens
    // Fill in the visibility modifier to be external
    // Set params as to address and amount
    function mint(address _to, uint256 _amount) external {
        // Fill in the logic
        require(owner == msg.sender);
        // call _mint function with to and amount params
        _mint(_to, _amount);
    }
}
