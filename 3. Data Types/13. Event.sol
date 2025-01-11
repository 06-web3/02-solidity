// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * Event
 * - is the way smart contracts push data to outside
 */

contract EvenType {
    event DepositEvent(address from, uint amount);

    function transfer() external {
        // do some transfer tasks
        emit DepositEvent(msg.sender, 50);
    }
}
