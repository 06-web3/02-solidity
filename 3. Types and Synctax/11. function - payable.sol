// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * Allow function to accept Ether
 */

contract PayableFunctionType {
    function sendEth(address payable to, uint amount) external {
        to.transfer(amount);
    }

    function buySomething() external payable {
        uint smBalance = address(this).balance;
    }

    receive() external payable {
        // when ETH sent, this function will be executed
    }
}
