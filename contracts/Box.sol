// SPDX-License-Identifier: MIT
// Implementation (logic)

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 internal value;

    event ValueChanged(uint256 newValue);

    function store(uint256 newValue) public onlyOwner {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() public view returns (uint256) {
        return value;
    }
}
