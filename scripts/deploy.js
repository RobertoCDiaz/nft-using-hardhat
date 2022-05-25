const { ethers } = require("hardhat");

async function main() {
    const contract = await ethers.getContractFactory("BasicNFT");
    const deployedContract = await contract.deploy();

    console.log("Deployed Contract Address: ", deployedContract.address);
}

main().then(() => process.exit(0)).catch(err => {
    console.error(err);
    process.exit(1);
})