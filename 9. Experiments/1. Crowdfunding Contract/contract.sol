// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Crowdfunding {
    address public owner;
    uint public goal;
    uint public totalContributed;

    // Mapping to keep track of each contributor's contribution
    mapping(address => uint) public contributions;

    // Event to log the contributions
    event ContributionReceived(address indexed contributor, uint amount);

    // Constructor to initialize the owner and the crowdfunding goal
    constructor(uint _goal) {
        owner = msg.sender; // The person who deploys the contract is the owner
        goal = _goal; // The funding goal set at deployment
        totalContributed = 0; // Total amount contributed starts at 0
    }

    // Payable function to allow contributors to send Ether to the contract
    function contribute() public payable {
        require(msg.value > 0, 'You must send some Ether!');
        contributions[msg.sender] += msg.value; // Track the contributor's total contribution
        totalContributed += msg.value; // Add the contribution to the total

        // Emit an event to log the contribution
        emit ContributionReceived(msg.sender, msg.value);
    }

    // Function to withdraw funds by the owner (after reaching the goal)
    function withdraw() public {
        require(msg.sender == owner, 'Only the owner can withdraw funds!');
        require(
            totalContributed >= goal,
            "Goal not reached, can't withdraw yet!"
        );

        // Transfer the total funds to the owner
        payable(owner).transfer(address(this).balance);
    }

    // Function to check the current balance of the contract (how much Ether is left in the contract)
    function contractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
