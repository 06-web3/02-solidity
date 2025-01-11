// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * Event
 * - is the way smart contracts push data to outside
 */

contract ErrorHandling {
    uint amount = 5;

    function doSomething() public {
        amount = 10; // takes 1 gas
        // some operations, takes 50 gas
        require(amount == 5, 'Amount must be 5');
        // amount will be revert to 5
        // still have to pay gas fee for 51
    }
}
