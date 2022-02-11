// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ConditionsLoops {
    address[] deposits;
    
    function saveAddresses(address _address) external {
        deposits.push(_address);
    }

    function checkAddress(address _address) external view returns(bool) {
        // avoid to use loops, it is expensive
        for(uint i; deposits.length < i; i++) {
            if(deposits[i] == _address) {
                return true;
            }
        }

        return false;
    }

}