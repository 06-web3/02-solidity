// SPDX-License-Identifier: MIT 
pragma solidity 0.8.28;


/**
 * - Delete keyword will reset the item to default value of type (e.g. unit => 0)
 */

contract StorageArray {
    uint[] storageArr = [2, 9];

    function addItem() external {
        storageArr.push(5);
        storageArr.push(7);
        storageArr[1] = 3;
        delete storageArr[2]; // [2, 3, 0, 7]
    }
}

/**
 * Memory Array
 * - DOESN'T have PUSH
 * - Define inside a function
 * - Define with fixed length
 */

contract MemoryArray {
    function doSomething() external pure {
        uint[] memory memoryArr = new uint[](3);
        memoryArr[0] = 0;
        memoryArr[1] = 1;
        memoryArr[2] = 2;
        memoryArr[0] = 5;
        delete memoryArr[1]; // [5, 0, 2]
    }
}

/**
 * Array as Parameter
 * - 
 */

contract ArrayAsParameter {
    function getArrayPrivate(uint[] memory arrArgs) private {}

    function getArrayInternal(uint[] calldata arrArgs) internal {}

    function getArrayExternal(uint[] memory arrArgs) external {}

    function getArrayPublic(uint[] calldata arrArgs) public {}
}