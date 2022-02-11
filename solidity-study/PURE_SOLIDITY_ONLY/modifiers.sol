// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Modifier {

    uint supply = 10;
    address admin = msg.sender;

    function getSupply() external view returns(uint) {
        return supply;
    }

    function mint(uint _value) external onlyAdmin minMint(_value) {
        supply += _value;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin user");
        _; // means to execute the code the comes on the function that is modified (means the next code)
    }

    modifier minMint(uint _value) {
        require(_value >= 10, "Not min mint value");
        _; // means to execute the code the comes on the function that is modified (means the next code)
    }

}