# 🚀 SuperToken (SUPER)

**SuperToken** is a fully featured ERC-20 token built with [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/).  
It extends the standard ERC-20 implementation with extra features useful for real-world token projects.

---

## ✨ Features

- ✅ **Standard ERC-20** functionality (transfers, approvals, allowances)  
- 🔥 **Burnable** → Users can destroy their tokens to reduce supply  
- 🎯 **Capped Supply** → Enforces a maximum total supply  
- ⛔ **Pausable** → Owner can pause transfers in case of emergencies  
- 👑 **Owner-Only Minting** → Only the contract owner can mint new tokens  

---

## 📊 Token Information

- **Name:** SuperToken  
- **Symbol:** SUPER  
- **Decimals:** 18  
- **Initial Supply:** Chosen at deployment (minted to deployer)  
- **Cap:** Maximum total supply (cannot be exceeded)  

---

## ⚙️ Deployment

Deploy using a Foundry script:

```bash
forge script script/SuperTokenScript.s.sol --broadcast --rpc-url <YOUR_RPC>
```
Example from SuperTokenScript.sol:

superToken = new SuperToken(1000, 210000);

✅ Testing

Unit tests are included in SuperTokenTest.t.sol (using Foundry
).

Run all tests:
```
forge test
```
testInitialSupply → Ensures deployer receives the correct initial supply.
testMint → Ensures only the owner can mint new tokens, within the cap.

📜 Smart Contract Functions
Function	Access	Description
```
mint(address to, uint256 amount)	Owner	Mint new tokens under the supply cap
burn(uint256 amount)	Anyone	Burn tokens from caller’s balance
pause()	Owner	Pause all token transfers
unpause()	Owner	Resume token transfers
transfer(address to, uint256 amount)	Anyone	Standard ERC-20 transfer
⚡ Quick Example
// Deploy a new token
SuperToken token = new SuperToken(1000, 30000);

// Owner mints 500 tokens to user
token.mint(user, 500);

// User burns 100 tokens
token.burn(100);

// Owner pauses transfers
token.pause();
```
🧪 Requirements

Foundry
 (for testing & deployment)

Solidity ^0.8.13

OpenZeppelin Contracts ^4.x

📄 License

This project is licensed under the MIT License
