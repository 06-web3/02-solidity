// SPDX-License-Identifier: MIT 
pragma solidity 0.8.28;

/**
 * Structure as key-value pair
 */

contract MappingTypes {
    mapping(address => uint) balancesOfUsers;

    function updateBalance() external {
        balancesOfUsers[msg.sender] = 100;
    }

    function removeBalance() external {
        delete balancesOfUsers[msg.sender];
    }

    function defaultValue() external view {
        address NotFound;
        balancesOfUsers[NotFound]; // return default value of type (uint)
    }

    /**
     * Nested mapping
     */

    mapping(address => mapping(address => bool)) delegatedUsers;

    function grantAccess() external {
        address spenderUser;
        delegatedUsers[msg.sender][spenderUser] = true;
    }
}