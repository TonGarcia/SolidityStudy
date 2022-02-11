// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract BuiltIn {

    uint public id;
    address public endereco_miner;
    uint public dificuldade;
    uint public limit;
    uint public numero_bloco;
    uint public timestamp;
    
    address public chamou;
    uint public valor;
    
    // uint public precoGas;
    address public enviou;
    
    constructor() payable {
        id = block.chainid; // id of the evm network (1=mainnet, 3=ropsten, 4=rinkeby...)
        endereco_miner = block.coinbase; // the block miner address
        dificuldade = block.difficulty; // block mining  difficulty
        limit = block.gaslimit; // block gaslimit in wei unit, the limit of gas per transaction allows or not a transaction to be mined
        numero_bloco = block.number; // number/height of the block
        timestamp = block.timestamp; // when the block was mined
        
        chamou = msg.sender; // who sent the contract <wallet or contract> (BETTER EXPLAINED BELLOW IN CASE OF CONTRACTS INTERACTIONS)
        valor = msg.value; // 
         
        // precoGas = tx.gasprice;
        enviou = tx.origin; // the wallet origin for the transaction
    }
    
    // msg.value -> quanto foi enviado para o contrato em wei (unidades muito pequenas de eth que sao usadas para computacao) 1wei - 10^ (-18) ether
    // msg.sender -> quem enviou a transacao
    
    
    //DIFFERENCE BETWEEN ENTRE tx.origin e msg.sender:
    // Alice => Smart Contract A           => Smart Contract B                     => Smart Contract C
    //         tx.origin = Alice               tx.origin = Alice                   tx.origin = Alice
    //         msg.sender = Alice              msg.sender = Smart Contract A       msg.sender = Smart Contract B

}