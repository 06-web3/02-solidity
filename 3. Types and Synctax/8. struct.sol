// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * Same as class in Javascript
 */

contract StructTypes {
    struct Player {
        uint Id;
        address addr;
        string name;
    }
    mapping(address => Player) ownerOfPlayers;

    function createPlayer() external view {
        Player memory player1 = Player({
            Id: 1,
            addr: msg.sender,
            name: 'John Doe'
        });
        Player memory player2 = Player(2, msg.sender, 'Marina Venus');

        player1.name = 'David Cook';
        delete player2;
    }
}
