pragma solidity ^0.4.0;

contract MyToken {
    struct Item { // Struct
        string name;
    }

    address public owner; // State variable

    enum State { Minted, Locked, Inactive } // Enum

    event TransferOccured(address from, uint amount); // Event

    modifier onlyOwner() { // Modifier
        require(msg.sender == owner);
        _;
    }

    function mint() public onlyOwner { // Modifier usage
        // ...
    }

    function transfer() public payable { // Function
        emit TransferOccured(msg.sender, msg.value); // Triggering event
        // ...
    }
}
