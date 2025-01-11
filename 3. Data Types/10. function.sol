// SPDX-License-Identifier: MIT 
pragma solidity 0.8.28;

contract FunctionTypes {
    uint _value;

    constructor(uint value) {
        _value = value;
    }

    function getValue() external view returns (uint){
        return _value;
    }

    function setValue(uint value) external {
        _value = value;
    }
}