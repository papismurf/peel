pragma solidity ^0.4.21;

contract Peel {
    
    string public name;
    string public symbol;
    uint public decimals;
    uint public bonusEnds;
    uint public icoEnds;
    uint public icoStarts;
    uint public allContributors;
    uint allTokens;
    address admin;
    mapping (address => uint) public balances;

    function ICO () public {
        name = "Peel Coin";
        decimals = 18;
        symbol = "PCO";
        bonusEnds = now + 54 weeks;
        icoStarts = now + 53 weeks;
        icoEnds = now + 56 weeks;
        allTokens = 18000000;
        admin = (msg.sender);
        balances[msg.sender] = allTokens;

    }
    // 1 PEEL == 1 USD
    function buyTokens() public payable {

        uint tokens;
        tokens = msg.value;
        balances[msg.sender] = balances[msg.sender] + tokens;
        allTokens = allTokens + tokens;


    }

    function totalSupply() public view returns (uint) {
        return allTokens;
    }

    function myBalance() public view returns (address) {
        address myAdr = msg.sender;
        return myAdr;
    }
}