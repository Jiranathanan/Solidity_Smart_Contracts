// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
// the uptick arrow ^ defiens a range compile version afther the non zero digit upwards to the next increment of the the non zero number

contract CryptoToken {
    // mapping acts like a dictionary to store data
    // mapping takes a key which maps to a value
    // mapping(key => value) public mapName
    mapping(address => uint) public balances;

    address public minter;

    // Events allow clients to react to specific contract
    // Types of events: Sent Transfer Allow
    // Events take 2 steps: 1. Setting up, 2. Emitting the event
    event Sent(address from, address to, uint amount);

    // a constructor is a special type of function that gets called immediately upon deployment
    constructor() {
        minter = msg.sender;
    } 
    
    // build a minting function to mint tokens
    function mint(address receiver, uint amount) public {
        // make sure that only owner can mint tokens by using requirement method
        require(msg.sender == minter);
        // sets the amount to a specific address
        balances[receiver] += amount;

    }

    function send(address receiver, uint amount) public {
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }

    // address public sender;



}
