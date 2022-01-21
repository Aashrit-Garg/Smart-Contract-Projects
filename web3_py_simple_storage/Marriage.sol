// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract Marriage {
    mapping(address => string) public getVow;
    address[] couple;

    function iDo(string memory vow) public {
        require(couple.length < 2, "Only 2 people may sign this contract");
        bytes memory emptyStringTest = bytes(getVow[msg.sender]); // Uses memory
        require(emptyStringTest.length == 0, "Vow already added");
        couple.push(msg.sender);
        getVow[msg.sender] = vow;
    }
}
