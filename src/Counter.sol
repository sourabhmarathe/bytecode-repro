// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "src/errors/Exception.sol";

contract Counter {
    uint256 public number;

    constructor() {
        number = 100;
    }

    function setNumber(uint256 newNumber) public {
        if (true) {
            revert Exception(0, 0, 0, address(0), address(0));
        }
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
