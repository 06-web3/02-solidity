// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ContractA {
    uint public amount = 5;

    function increaseAmount(uint addedAmount) public {
        amount += addedAmount;
    }
}

contract ContractB {
    address _contractAAddress;

    function setContractA(address contractAAddress) external {
        _contractAAddress = contractAAddress;
    }

    function calculation() public {
        ContractA contractA = ContractA(_contractAAddress);
        contractA.increaseAmount(10);
    }
}
