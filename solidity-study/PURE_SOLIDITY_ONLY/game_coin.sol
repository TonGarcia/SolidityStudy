// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract GameCoin {

    mapping(address => uint) balances;
    mapping(address => uint[]) scores; // game example

    function deposit() external payable {
        balances[msg.sender] = msg.value;
    }

    function balanceOf() external view returns(uint256) {
        return balances[msg.sender];
    }

    function saveScore(uint _score) external {
        scores[msg.sender].push(_score);
    }

    function gameMatchEarns() external view returns(uint) {
        uint earns = 0;
        for(uint i; i < scores[msg.sender].length; i++) {
            earns += scores[msg.sender][i];
        }

        return earns;
    }

}