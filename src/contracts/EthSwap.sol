pragma solidity ^0.5.0;

import "./Token.sol";

contract EthSwap {
    string public name = "Eth Swap";
    // name here is a state variable
    Token public token;
    uint256 public rate = 100;

    constructor(Token _token) public {
        token = _token;
    }

    function buyTokens() public payable {
        // Redemption rate = # of tokens they receive for 1 ether

        // Amount of ethereum * redemption rate
        uint256 tokenAmount = msg.value * rate;
        token.transfer(msg.sender, tokenAmount);
    }
}
