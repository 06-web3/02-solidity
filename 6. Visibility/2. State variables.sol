// SPDX-License-Identifier: MIT 
pragma solidity 0.8.28;

/**
 * External is not available in variables
 * For a public variable, Solidity auto creates a get function for it
 */

contract DataTypes {
    uint _privateValue1;
    uint private __privateValue2;
    uint internal _internalValue;
    // No external
    uint public _externalValue;
}