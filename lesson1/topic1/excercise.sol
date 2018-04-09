pragma solidity ^0.4.16;

contract Cars {
    // we declare a custom type car
    struct Car {
        bytes32 make;
        bytes32 registration;
    }

    // we create a map that takes ethereum address and maps them to a Car struct
    mapping(address => Car) public carOwners;

    function registerCar(bytes32 _make, bytes32 reg) public {
      // assign new struct
      // assign the car
      carOwners[msg.sender] = Car({
        make: _make,
        registration: reg
      });
    }

    function changeOwnership(address toOwner) public {
      // only car owner can change ownership
      // get my car and assign to a new owner
      carOwners[address] = carOnwers[msg.sender];
    }
}
