pragma solidity ^0.4.0;

contract MyToken {
    struct TokenHolder {
        bytes32 name;
    }

    address public owner;

    event MintOccurred(address from, uint amount); // Event

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function mint(uint amount) public onlyOwner { // Modifier usage
        // mint code goes here
        emit MintOccurred(msg.sender, amount); // Emit Event
    }

    function transfer(address to, uint amount) public {
        // transfer code goes here
    }
}
