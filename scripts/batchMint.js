const { ethers } = require("hardhat");
require("dotenv").config();

async function main() {

  const privateKey = process.env.PRIVATE_KEY;

 
  const networkAddress =
    "https://eth-goerli.g.alchemy.com/v2/53q66jVbbz9nAJtQAk2MbQ3ZVNdJ3GEI";
  
  const provider = new ethers.providers.JsonRpcProvider(networkAddress);

  const signer = new ethers.Wallet(privateKey, provider);

  const contractAddress = "0x1689cE9a48553bf3418a1e481959356b4246d7Ef";

  const IndianNFT = await ethers.getContractFactory("Humans", signer);
  const contract = await IndianNFT.attach(contractAddress);

  await contract.mint(5);

  console.log("Minted five tokens here");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
