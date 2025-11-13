require('dotenv').config();
require('@nomicfoundation/hardhat-toolbox');


const { PRIVATE_KEY, PROVIDER_URL } = process.env;


module.exports = {
solidity: '0.8.19',
networks: {
baseTestnet: {
url: PROVIDER_URL || 'https://base-goerli.publicnode.com',
accounts: PRIVATE_KEY ? [PRIVATE_KEY] : []
}
}
};
