// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{

    // to override we use virtual or override

    function store (uint256 _number) override public {
        favoriteNumber = _number +5;
    }
}