// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * Modifier
 * - Is a function that can be applied to other functions to modify their behavior
 * - Reuse logic
 * - Often used to add preconditions
 */

contract FunctionModifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'You are not owner');
        _;
    }

    modifier balanceQualified(uint balance) {
        require(balance == 100, 'Your balance is insufficient');
        _;
    }

    function secureFunction(
        uint amount
    ) public onlyOwner balanceQualified(amount) {
        // This function applied 2 modifiers
    }
}
