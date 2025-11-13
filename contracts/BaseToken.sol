// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


/**
* @title BaseToken
* @dev Basit mint edilebilir ERC20 token şablonu — GitHub'a koymak için hazır.
* Sahip (owner) istendiğinde yeni token basabilir.
*/
contract BaseToken is ERC20, Ownable {
constructor(string memory name_, string memory symbol_, uint256 initialSupply) ERC20(name_, symbol_) {
if (initialSupply > 0) {
_mint(msg.sender, initialSupply);
}
}


/**
* @dev Sahip (owner) için mint fonksiyonu
*/
function mint(address to, uint256 amount) external onlyOwner {
_mint(to, amount);
}


/**
* @dev Token yakma fonksiyonu (isteğe bağlı)
*/
function burn(uint256 amount) external {
_burn(msg.sender, amount);
}
}
