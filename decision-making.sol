// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0 ;


contract DecisionMaking {
    uint stakingwallet = 10;

    function airDrop() public view returns(uint) {
        if(stakingwallet == 10) {
            return stakingwallet + 10;
        } else {
            return stakingwallet + 1;
        }
    }
}