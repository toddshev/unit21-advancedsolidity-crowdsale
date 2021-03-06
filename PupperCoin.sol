pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

contract PupperCoin is ERC20, ERC20Detailed, ERC20Mintable {
    constructor(
        string memory _name, //added underscore since name is often a reserved word
        string memory symbol,
        uint initial_supply
    )
        ERC20Detailed(_name, symbol, 18)
        public
    {
        // constructor can stay empty
        
        mint(msg.sender, initial_supply); // this will only run once when deployed
                                         //ensure you add 18 zeroes to the desired supply
    }
}