pragma solidity ^0.5.0;

contract MiniToken {
    mapping(address=>uint256) public balances;
    
    function transfer(address to, uint256 amount) public {
        require(balances[msg.sender] >= amount, "insufficient tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
    
    constructor() public {
        balances[msg.sender] = 100;
    }
}
