pragma solidity ^0.4.20;

contract MyToken {
    uint totalSupply;
    mapping(address => uint) balances;

    constructor(uint total) public {
        totalSupply = total;
    }

    function transfer(address to, uint amount) public {
        // check if amount passed is less than 0
        // stop execution if it's less than 0
        if (amount < 0) {
            return;
        }

        // check if the caller of the function has enough amount
        // stop execution if they do not have enough
        if (balances[msg.sender] < amount) {
            return;
        }

        // add balances to the existing balance of the user
        balances[to] = balances[to] + amount;
    }
}
