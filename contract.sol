// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartContract {
    uint public x;

    function requireStatement(uint _value) public {
        require(_value > 0, "Value must be greater than zero");
        x = _value;
    }

    function assertStatement(uint _value) public {
        assert(_value > 0);
        x = _value;
    }

    function revertStatement(uint _value) public {
        if (_value <= 0) {
            revert("Value must be greater than zero");
        }
        x = _value;
    }
}
