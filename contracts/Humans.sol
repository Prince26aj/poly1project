// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Humans is ERC721A {
    
    uint256 public maximumvalue = 5;
    string public prompt = "Humans with different powers";
    string baseUrl= "https://gateway.pinata.cloud/ipfs/QmbHTgTZfNt8CRpmfKY2jUVaDLxGYUG7dnBjVs3auBR4G8";
    address public owner;
    constructor() ERC721A("humans", "CRT") {
        owner = msg.sender;
    }
    function decimals() public pure returns (uint8) {
		return 0;
	}

    function mint(uint256 quantity) external payable {
        require(totalSupply() + quantity <= maximumvalue, "Max limit is 5 dont try to mint more tha 5");
        _mint(msg.sender, quantity);
    }
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }
    

    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}