require("@nomiclabs/hardhat-waffle");
require("dotenv").config({ path: ".env" })

const PRIVATE_KEY = process.env.PRIVATE_KEY;
const ALCHEMY_URL = process.env.ALCHEMY_URL;

module.exports = {
  solidity: "0.8.4",
  networks: {
    rinkeby: {
      url: ALCHEMY_URL,
      accounts: [PRIVATE_KEY],
    }
  }
};
