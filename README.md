# Solidity only

solidity-study > PURE_SOLIDITY_ONLY

# Flash Course

1. Each net has an Id, the mainnet is the ID 1 and so on...
1. Built-in data: solidity-study > PURE_SOLIDITY_ONLY > built-in.sol

## Depositing Ether

1. Create a function with "payable" identifier
1. It allows us to get msg.sender & msg.value
1. On the deploy JS EVM we need to add the amount to be sent on the input at the top (there is no input in the function place) and then click on the function
    1. --> remember to check the unit to be sent
    1. the balance retrieves it in wei unit
    1. if a key is not present in the dictionary (mapping) it is gonna to retrieve 0


# DeFi

![Build Status](https://github.com/TonGarcia/DeFi/actions/workflows/.github/workflows/tests.yaml/badge.svg?branch=master)

This repository contains the core smart contract code for Multi Collateral Stable Coin (based on Dai). This is a high level description of the system, assuming familiarity with the basic economic mechanics as described in the whitepaper.

## Additional Documentation (StableCoin)

`dss` is also documented in the [wiki](https://github.com/makerdao/dss/wiki) and in [DEVELOPING.md](https://github.com/makerdao/dss/blob/master/DEVELOPING.md)

## Solidity overview

https://github.com/TonGarcia/DeFi/blob/master/README.sol.md


## Dai Framework

Dai (MakerDAO overall) uses DappTools as framework: https://github.com/dapphub/dapptools