pragma solidity ^0.4.16;
contract MyToken {
    // tokens total supply
    uint totalSupply;

    // constructor: instantiate total supply
    constructor(uint total) public {
        totalSupply = total;
    }

    // mint additional tokens
    function mint(uint n) public {
        totalSupply = totalSupply + n;
    }

    // get the current total tokens
    function get () public constant returns (uint) {
        return totalSupply;
    }
}
