# DegenToken Smart Contract
The DegenToken smart contract is an ERC20 token deployed on the Avalanche. It allows for the creation, transfer, and burning of tokens. Players can redeem their tokens for in-game items from the provided list of game items. Only the contract owner can mint new tokens.

## Contract Details
### Token Name: DEGEN
### Token Symbol: DGN

### Initial Supply
The initial supply of DegenToken is provided during contract deployment.

### Minting New Tokens
The contract owner can mint new DegenTokens and distribute them to players as rewards.

### Transferring Tokens
Players can transfer their DegenTokens to other addresses.

### Redeeming Tokens
Players can redeem their DegenTokens for in-game items. The redemption function takes an item ID as input, and the corresponding amount of tokens is deducted from the player's account.

### Checking Token Balance
Players can check their DegenToken balance at any time.

### Burning Tokens
Players can burn their DegenTokens, removing them from circulation. The player must have sufficient tokens in their account to perform a burn operation.

### Game Items
The contract provides a list of in-game items that players can redeem using their DegenTokens. Each item has an associated item ID, price in tokens, and availability count.

* Ball gown: 50 tokens
* Glass slippers: 250 tokens
* Magic Wand: 500 tokens
* Crown: 750 tokens
* Castles: 1000 tokens

## Functions

* mint(address to, uint256 mint_amt) - Allows the contract owner to mint new DegenTokens and assign them to a specified address.
* game_items() - View function - Returns a list of available in-game items and their prices in tokens.
* redeem(uint nextItemId) - Allows players to redeem in-game items by providing the item ID. The function verifies the item's availability, the player's token balance, and burns the required amount of tokens.
* transferTokens(address to, uint256 trf_amt) - Allows players to transfer their DegenTokens to other addresses.
* checkBalance(address acc) - View function - Returns the DegenToken balance of a specified address.* burnTokens(uint256 burn_amt) - Allows players to burn their DegenTokens, reducing their token balance.

## Deployment
To deploy the DegenToken contract on the Avalanche Fuji Testnet network, you can get Testnet AVAX tokens from https://faucet.avax.network/. and connect to the Fuji Testnet, and add the network to Metamask wallet.
then run the below commands to deploy:
```
npx hardhat run scripts/mint.js --network fuji
```
set your private key on your hardhat.config.js file, as Hardhat will search there to deploy your smart contract.

```
npx hardhat run scripts/mint.js --network fuji
```
If you have set up your API key, we can verify the smart contract on Fuji by running the following command:
```
npx hardhat verify <TOKEN ADDRESS> --network fuji
```

To verify the deployed smart contract, we need an API Key from Snowtrace and paste it into our Hardhat config file.

to verify smart contracts on specific networks:
```
npx hardhat verify <contract address> <arguments> --network <network>
```

## Author
Mrudhula Dubasi
mrudhuladubasi@gmail.com

## Licence
This project is licensed under the MIT License
