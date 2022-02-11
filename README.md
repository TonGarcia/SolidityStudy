# Solidity only

solidity-study > PURE_SOLIDITY_ONLY

# Flash Course

1. Each net has an Id, the mainnet is the ID 1 and so on...
1. Built-in data: solidity-study > PURE_SOLIDITY_ONLY > built-in.sol

## Add to MetaMask

1. Click on plug icon
    1. Active lib: FLATTENER
    1. Select FLATTENER tab
    1. Click on "Flatten crypto currency name.sol"
    1. Cli on "Save crypto.._flat.sol"
    1. Fix the warning (just add a comment with SPDX license on top)
    1. Compile it selecting it flat file version
    1. On deploy tab:
        1. On deploy tab on remix choose: Injected Web3
        1. Add the necessary params (name, symbol & initialSupply)
        1. Click on deploy --> it will open meta mask & take sometime
1. Copy the generated address on the token output after deploy
1. Go to etherscan (under the testnet like: https://kovan.etherscan.io or https://rinkeby.etherscan.io)
1. On search: paste the smart contract address
    1. --> It might take some time to the smart contract be available
    1. Click on "Contract" tab
    1. Click on "Verify and Publish"
        1. Compile type (in our case (OpenZepelin) is a "SingleFile" with optmization)
        1. Select compiler version
        1. No license or MIT as addded on SPDX comment
            1. On "Verify & Publish" upload the Coin.json, in this case is MintDollar.json
            1. Click on "verify" button on the bottom
1. Copy the Contract address to add to MetaMask (click on Assets > Add Token > Paste address code)

Upgrading an existing smart contract archtecture: https://www.youtube.com/watch?v=RoXgaAvoIjg

### Sample created Contract on real testnet Rinkeby: 0xcadfd54DC0F21571dB335044c7b14Eb1c8d38a71

Contract verified on EtherScan: https://rinkeby.etherscan.io/verifyContract-solc?a=0xcadfd54DC0F21571dB335044c7b14Eb1c8d38a71&c=v0.8.11%2bcommit.d7f03943&lictype=3
Contract itself: https://rinkeby.etherscan.io/address/0xcadfd54DC0F21571dB335044c7b14Eb1c8d38a71


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