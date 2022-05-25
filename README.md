# NFT using HardHat

This is a simple project demonstrating the creation of a Ethereum Smart Contract for NFTs using the stablished ERC-721 standard.

This project is deployed to the Ethereum's Rinkeby Testnet using HardHat, instead of the Remix IDE.

## Installation and configuration

1. Clone repository and npm install dependencies:

```bash
git clone https://github.com/RobertoCDiaz/nft-using-hardhat.git
cd nft-using-hardhat
npm i
```

2. Create an Alchemy node in the Rinkeby network
    * Sign up to the [Alchemy](https://www.alchemyapi.io) service and create a new app using the Rinkeby network

3. Configure environment variables
    * Create a '.env' as a copy of the [.envtemplate](.envtemplate) file and replace the values of the indicated variables.
    * **PRIVATE_KEY** is the private key for your account on the Rinkeby Network. You can use Metamask for this.
    * **ALCHEMY_URL** is the URL with the API Key that Alchemy provides on the dashboard for your new app (the one created on the previous step).
```
PRIVATE_KEY=<Here goes the private key for your Rinkeby Account>
ALCHEMY_URL=<Replace this with your Alchemy node URL>
```

## Deployment

1. Use HardHat to execute the deployment script. 

```bash
npx hardhat run scripts/deploy.js --network rinkeby
```

Inside the [HardHat config](hardhat.config.js) file, a network called 'rinkeby' was created using the information provided through the environment variables.