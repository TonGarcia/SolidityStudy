// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Categories {

    enum STATUS {ACTIVE, INACTIVE, CANCELED, REGISTERED}
    mapping(address => STATUS) users;

    function addUser() external {
        users[msg.sender] = STATUS.REGISTERED;
    }

    function getUser() external view returns(STATUS) {
        // returns 3 because it is the position of the ENUM (registered)
        return users[msg.sender];
    }

    function calc(uint _a, uint _b) external view returns(uint) {
        // require: continue if true, else abort
        require(users[msg.sender] == STATUS.REGISTERED, "Not a registred user");
        users[msg.sender] == STATUS.ACTIVE;
        return _a + _b;
    }

}