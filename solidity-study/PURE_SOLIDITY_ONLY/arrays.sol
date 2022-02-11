// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Arrays {

    string[] names;

    function saveNames(string memory _name) external {
        names.push(_name);
    }

    function saveNames(uint _position) external view returns(string memory) {
        return names[_position];
    }

    function updateNames(uint _position, string memory _newName) external {
        names[_position] = _newName;
    }

    function deleteName(uint _position) external {
        delete names[_position];
    }

}