// contracts/LootRewards.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LootRewards {
    event Reward(address indexed winner, uint256 rewardId);

    function distribute(address[] calldata users) external {
        uint256 idx = uint256(keccak256(abi.encodePacked(block.timestamp))) % users.length;
        emit Reward(users[idx], idx + 1);
    }
}
