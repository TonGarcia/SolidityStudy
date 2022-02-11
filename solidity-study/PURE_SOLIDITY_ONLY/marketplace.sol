// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Marketplace {

    struct User {
        address wallet;
        uint id;
        string name;
    }

    User[] users;

    function addUserImplicit(uint _id, string memory _name) external {
        // avoid instantiating variables, it consume gas
        User memory user = User(msg.sender, _id, _name);
        users.push(user);
    }

    function addUserExplicit(uint _id, string memory _name) external {
        // avoid instantiating variables, it consume gas
        User memory user = User({wallet: msg.sender, id: _id, name: _name});
        users.push(user);
    }

    function addUserCheaper(uint _id, string memory _name) external {
        users.push(User(msg.sender, _id, _name));
    }

    function name(uint _position) external view returns(string memory) {
        return users[_position].name;
    }

}