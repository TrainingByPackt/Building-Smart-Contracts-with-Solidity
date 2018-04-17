pragma solidity ^0.4.16;
contract MyToken {

    uint totalSupply

    function MyToken(uint total) {
        totalSupply = total;
    }

    function mint(uint n) public {
        totalSupply = totalSupply + n;
    }

    function get () public constant returns (uint) {
        return totalSupply;
    }
}
