pragma solidity ^0.4.20;

contract Cars {
    // we declare a custom type car
    struct Car {
        bytes32 make;
        uint year;
    }

    // we create a map that takes ethereum address and maps them to a Cars array
    mapping(address => Car[]) public carOwners;

    function registerCar(bytes32 _make, uint yr) public {
        // assign new struct
        // assign the car
        carOwners[msg.sender].push(Car({
            make: _make,
            year: yr
        }));
    }

    // change car ownership by providing owner and index
    function changeOwnership(address toOwner, uint index) public returns (bool) {
        // check if sender has cars
        // can be refactored to a function modifier
        if (carOwners[msg.sender].length == 0) {
            return false;
        }

        if (carOwners[msg.sender].length > index+1) {
            return false;
        }

        carOwners[toOwner].push(carOwners[msg.sender][index]);

        // TODO: remove the car from the current owner, otherwise there's a duplicate.
    }

    // get a car by providing owner and index
    function getCarMake(address owner, uint index) public view returns (bytes32 carMake) {
        if (carOwners[owner].length == 0 ){
            return;
        }

        if (carOwners[owner].length > index+1) {
            return;
        }

        carMake = carOwners[owner][index].make;
    }
}
