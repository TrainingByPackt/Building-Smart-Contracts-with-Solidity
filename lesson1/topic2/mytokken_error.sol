pragma solidity ^0.4.20;
contract MyToken {
    uint totalSupply

    // constructor: instantiate total supply
    constructor(uint total) {
        totalSupply = total;
    }

    function mint(uint n) public {
        totalSupply = totalSupply + n;
    }

    function get () public constant returns (uint) {
        return totalSupply;
    }
}
