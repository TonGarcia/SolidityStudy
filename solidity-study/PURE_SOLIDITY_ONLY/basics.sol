// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Basics {
    
    // primary data types
    uint age; // only positive
    string name = "Mint Dollar";
    address wallet = msg.sender;
    bool active;
    uint number = 10;
    
    // gas optimizer
    bytes32 data;

    // arrays
    uint[] ages;
    string[] customers;
    address[] wallets;

    // dictionary (in this case the KEY is the type ADDRESS and the VALUE is the type UINT
    mapping(address => uint) balances;

    // might be complete filled once it is required (data patterns)
    struct User {
        uint id;
        string name;
        address wallet;
    }

    enum State {
        ACTIVE,
        FILLED,
        CLOSED,
        INACTIVE
    }

    function fillingData() external {
        // base var
        active = true;

        // array pushing
        ages.push(1);

        // dict mapping
        balances[msg.sender] = 10;

        // enum
        State state = State.ACTIVE;
        if (state == State.ACTIVE) {

        } else {

        }
    }

    // Functions
    // parameters: received from the interface on the ethereum network
    // visibility: if only this contract can call it function or any contract can call it
        // external = only visible outside it contract
    // state: if this function modifies the blockchain data (this kind spend a higher gas fee)
    // payable: functions that receives tokens or ethers outside it contract
    // return: can return or be void
    // pure: it is saying that the function doesnt consume and not add data to the blockchain
    // --> using _ before the var name is a convention to say that it is temporary and not persistent
    function sum(uint _a, uint _b) external pure returns (uint) {
        return _a + _b;
    }

    // readOnly function: view
    // memory means that the read data is only on memory (RAM) not on storage (ROM)
    function getName() external view returns(string memory) {
        return name;
    }

    // payable function
    // public: 
    function invest() public payable returns (uint) {
        // using the dict from this contract
        balances[msg.sender] += msg.value;
        return balances[msg.sender];
    }

    // Blockchain data update
    // state: if alter data or not on the blockchain
    // if change state (data) it might pay
    // ways to interact with the blockchain:
        // transaction: alter the blockchain state --> IF NOT DEFINED IT IS THE DEFAULT SO IT GONNA REQUIRE FEES
        // call: doesnt alter the blockchain state
    // state types:
        // default = transaction (paid to alter blockchain state)
        // view = read only
        // pure = do not read nor alter state
    function getNumber() external view returns(uint) {
        return number;
    }

    function getNumberView() external view returns(uint) {
        return number;
    }

    function mult(uint _a, uint _b) external pure returns(uint) {
        return _a*_b;    
    }

    // ONCE THE OUTPUT SHOWS UP WEI IT IS A TRANSACTION (PAID FEES)
    // [CALL] read only withou ether spending ==> PURE or VIEW
    // [VM] (transaction) -> has transaction as output with all data that any transaction has

    // FUNCTIONS MODIFIERS
    // external: only visible outside the contract
    // internal: only inside the contract or in case inheritance (derivated contract) --> identifier "is" is the inheritance
    // public: anyone can view and interact with
    // private: only itself contract

    // VAR MODIFIERS
    // same as functions but without the "external" modifier
    // public variables don't need function to be called outside

    // function getNumberPublic() public view returns(string memory) {}
    // function getNumberExterral() external view returns(string memory) {}
    // function getNumberPrivate() private view returns(string memory) {}
    // function getNumberInternal() internal view returns(string memory) {}

}