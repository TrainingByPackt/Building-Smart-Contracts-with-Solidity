pragma solidity ^0.4.20;

contract MyToken {
    /* Declare Variables Here */
    mapping(address => uint) public balances;

    /* addOne using a while loop */
    function addOneWhile(address to) public {
        uint i = 0;
        while (i < 10) {
            balances[to] = balances[to] + 1;
            i++;
        }
    }

    /* add one using a Do Loop*/
    function addOneDo(address to) public {
        uint i = 0;
        do {
            balances[to] = balances[to] + 1;
            i++;
        } while (i < 10);
    }

    /* add one using a for loop */
    function addOneFor(address to) public {
        for (uint i = 0; i < 10; i++) {
            balances[to] = balances[to] + 1;
        }
    }
}
