// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable 
{

    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol)
    {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    function mint(address to, uint256 mint_amt) public onlyOwner {
        _mint(to, mint_amt);
    }

  
    function game_items() public pure returns (string memory)
    {
        return ("1. Ball gown = 50 \n 2.Glas slippers = 250 \n 3. Magic Wand = 500 \n 4. Crown = 750 \n 5. Castles = 1000");
    }


    function redeem(uint nextItemId) external
    {
        uint256 redeemAmount;
        require(nextItemId >= 1 && nextItemId <= 5, "Please select an ItemID from the Game item menu");

        if (nextItemId == 1){ redeemAmount = 50; }

        else if (nextItemId == 2) { redeemAmount = 250; }

        else if(nextItemId == 3) { redeemAmount = 500; }

        else if(nextItemId == 4) { redeemAmount = 750; }

        else if(nextItemId == 5) { redeemAmount = 1000; }

        require(balanceOf(msg.sender) >= redeemAmount, "Insufficient tokkens to redeem this item, You can buy more token and purchase this item");
        _burn(msg.sender, redeemAmount);
        }


    function transferTokens(address to, uint256 trf_amt) public {
        require(balanceOf(msg.sender) >= trf_amt, "Insufficient token balance");
        _transfer(msg.sender, to, trf_amt);
    }

    function checkBalance(address acc) public view returns (uint256) {
        return balanceOf(acc);
    }

    function burnTokens(uint256 burn_amt) public {
        require(balanceOf(msg.sender) >= burn_amt, "Insufficient token balance");
        _burn(msg.sender, burn_amt);
    }
}
