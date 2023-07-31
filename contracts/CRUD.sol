// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CRUD {
    mapping(uint => string) public data;

    function createData(uint _key, string memory _value) public {
        require(
            bytes(data[_key]).length == 0,
            "Key is already used to store data!"
        );
        data[_key] = _value;
    }

    function readData(uint _key) public view returns ( string memory ) {
        return data[_key];
    }

    function updateData(uint _key, string memory _value) public {
        require(bytes(data[_key]).length != 0, "Key is not used yet!");
        data[_key] = _value;
    }

    function deleteData(uint _key) public {
        delete data[_key];
    }
}
