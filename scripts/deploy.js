async function main() {
const [deployer] = await ethers.getSigners();
console.log('Deploying contracts with the account:', deployer.address);


const initialSupply = ethers.parseUnits('1000000', 18); // 1,000,000 tokens
const Token = await ethers.getContractFactory('BaseToken');
const token = await Token.deploy('MyBaseToken', 'MBT', initialSupply);
await token.waitForDeployment();


console.log('Token deployed to:', token.target);
}


main().catch((error) => {
console.error(error);
process.exitCode = 1;
});
