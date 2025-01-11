// SPDX-License-Identifier: MIT 
pragma solidity 0.8.28;

contract DataTypes {
    uint _value;

    /**
     * private
     * - Root Contract: ✓
     * - Derived Contracts: ✕
     * - External Actors: ✕
     */

    function getValuePrivate() private view returns (uint){
        return _value;
    }

    /**
     * internal
     * - Root Contract: ✓
     * - Derived Contracts: ✓
     * - External Actors: ✕
     */

    function getValueInternal() internal view returns (uint){
        return _value;
    }

    /**
     * external
     * - Root Contract: ✕
     * - Derived Contracts: ✓
     * - External Actors: ✓
     */

    function getValueExternal() external view returns (uint){
        return _value;
    }

    /**
     * external
     * - Root Contract: ✓
     * - Derived Contracts: ✓
     * - External Actors: ✓
     */

    function getValuePublic() external view returns (uint){
        return _value;
    }
}