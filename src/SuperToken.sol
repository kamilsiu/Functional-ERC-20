// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SuperToken is ERC20,ERC20Burnable,ERC20Capped,ERC20Pausable,Ownable{
    constructor(uint256 initialSupply, uint256 cap)
        ERC20("SuperToken", "SUPER")
        ERC20Capped(cap * 10 ** 18) 
        Ownable(msg.sender) {
            _mint(msg.sender,initialSupply*10**18);
        }
        function mint(address to,uint256 amount)public onlyOwner{
            _mint(to,amount*10**decimals());
        }
        function pause()public onlyOwner{
          _pause();
        }
        function unpause()public onlyOwner{
            _unpause();
        }
        
        function _update(address from,address to,uint256 amount)internal override(ERC20,ERC20Pausable,ERC20Capped){
            super._update(from,to,amount);
        }
}