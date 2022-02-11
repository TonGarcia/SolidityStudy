// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;
import "@openzeppelin/contracts/utils/Strings.sol";

contract DataStorage {

    string randomNum;

    function getNum() public returns(string memory) {
        return randomNum;    
    } 

    // as it is passing param as memory it is allowed to update it param valeu 
    // if CALLDATA instead memory the value can not be changed
    // memory & calldata are not stored
    // any var outside function is treated as storage (saved on blockchain)
    // any var inside a function is treated as memory by default, but can be changed to storage to store on the blockchain
    function setNum(string memory _num) public returns(string memory) {
        randomNum = _num;
        _num = "another value";
        
        uint valSaved = 55;
        //uint storage nval = valSaved + 5; ==> NOT WORKING
        uint nval = valSaved + 5;
        
        return Strings.toString(nval);
    }

}
