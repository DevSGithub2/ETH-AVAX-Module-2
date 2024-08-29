const hre = require("hardhat");

async function main() {
  const DWallet = await hre.ethers.getContractFactory("DWallet");
  const contract = await DWallet.deploy(); //instance of contract

  await contract.deployed();
  console.log("Address of contract:", contract.address);
}
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
