// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract ConstrucA {

    uint _totalSupply;
    uint _decimals;
    address admin;

    constructor(uint initialSupply) {
        _decimals = 18;
        admin = msg.sender;
        _totalSupply = initialSupply;
    }

    function getSupply() external view returns(uint) {
        return _totalSupply;
    }

}

contract ConstrucB is ConstrucA {

    // it is passing the first param to the constructor to it parent and using the second
    constructor(uint initialSupply, uint _valueB) ConstrucA(initialSupply) {
        // use valueB...
    }

}