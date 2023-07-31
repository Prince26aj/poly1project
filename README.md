# poly1project

## Humans Contract
The Humans contract is an ERC721A-compliant contract that represents humans with different powers. It extends the ERC721A contract and allows for the creation of human tokens with a maximum limit value of 5 tokens.

## Contract Details
Name: humans
Symbol: CRT

## Maximum Limit
The contract has a maximum limit value of 5 human tokens. If you will mint more than 5 than it will give errors.
## Prompt Description
The human tokens are based on the description: "Humans with different powers."

## Functionality
The contract provides the following functionality:

## Minting: 
External function mint(uint256 quantity) allows users to mint new human tokens. Users can mint multiple tokens in one transaction, but the total number of tokens in circulation cannot exceed the maximum limit of 5.

## Prompt Description: 
External function promptDescription() allows users to retrieve the prompt description, which is "Humans with different powers."

## Commands
npx hardhat run scripts/deploy.js --network goerli
npx hardhat run scripts/batchMint.js --network goerli
npx hardhat run scripts/approvedDeposit.js --network goerli

## License
This contract is released under the MIT License. 
