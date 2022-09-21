// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "src/errors/Exception.sol";

import "src/Counter.sol";

contract Doubler is Counter {
    constructor(uint256 n) {
        number = n;
    }

    function double() external {
        if (number == 431) {
            revert Exception(10, 0, number, address(this), address(0));
        }
        number = number * 2;
    }
}
