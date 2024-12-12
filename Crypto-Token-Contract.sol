// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
// the uptick arrow ^ defiens a range compile version afther the non zero digit upwards to the next increment of the the non zero number

contract CryptoToken {
    // mapping acts like a dictionary to store data
    // mapping takes a key which maps to a value
    // mapping(key => value) public mapName
    mapping(address => uint) public balances;

    // Events allow clients to react to specific contract
    // Types of events: Sent Transfer Allow
    // Events take 2 steps: 1. Setting up, 2. Emitting the event
    event Sent(address from, address to, uint amount);
    
    // uint private tokens = 4000000;

    uint private totalSupply = 7;
    address public sender;
    
    address private minter;

    // a constructor is a special type of function that gets called immediately upon deployment
    constructor() {
        minter = msg.sender;
    } 

}
