# 🚀 SuperToken (SUPER)

SuperToken is an ERC-20 token built with [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/) that includes:

- ✅ Standard ERC20 functionality
- 🔥 Burnable tokens
- ⛔ Pausable transfers (emergency stop)
- 🎯 Supply cap
- 👑 Owner-only minting

---

## 📦 Features

- **Name:** SuperToken  
- **Symbol:** SUPER  
- **Decimals:** 18  
- **Initial Supply:** Set on deployment  
- **Cap:** Maximum token supply  

---

## 🛠️ Deployment

Deploy using Foundry Script:

```bash
forge script script/SuperTokenScript.s.sol --broadcast --rpc-url <YOUR_RPC>
Example in SuperTokenScript.sol:

solidity
Copy
Edit
superToken = new SuperToken(1000, 210000);
Mints 1000 SUPER to deployer.

Caps total supply at 210,000 SUPER.

✅ Tests
Unit tests are written in Foundry (SuperTokenTest.t.sol).

Run tests:

forge test
Example Tests
testInitialSupply → ensures deployer gets the initial supply.

testMint → ensures owner can mint tokens.

📜 Functions
Function	Access	Description
mint(address to, uint256 amount)	Owner	Mint new tokens under the cap
burn(uint256 amount)	Anyone	Burn tokens from caller
pause()	Owner	Pause transfers
unpause()	Owner	Resume transfers
transfer(address to, uint256 amount)	Anyone	Standard ERC20 transfer

⚡ Quick Example
solidity
SuperToken token = new SuperToken(1000, 30000);

// Mint 500 tokens to user
token.mint(user, 500);

// User burns 100 tokens
token.burn(100);

// Pause transfers
token.pause();
🧪 Requirements
Foundry for testing/deployment

Solidity ^0.8.13

OpenZeppelin Contracts ^4.x

📄 License
This project is licensed under the MIT License.