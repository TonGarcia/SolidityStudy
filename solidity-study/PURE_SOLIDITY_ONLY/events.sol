// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

// Contracts does not communicate outside itself. 
// So it can emit events to output data integrations.
// To input data it is used oracles
contract Events {

    // indexed allows to add a filter to listen specific filter
    // if the clientside wants to showup only the unique user event, so the indexed allows it
    event Transfer(address indexed _from, address _to, uint256 _amount);

    function transfer(address _to, uint256 _amount) public {
        // verifications 
        // ....

        // emit the event to broadcast
        emit Transfer(msg.sender, _to, _amount);

        // the event is displayed on "logs"

        // most common events:
        // DEX: approval
        // any contract: transfer

    }

}