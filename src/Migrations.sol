// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
  address public owner = msg.sender;
  uint public lastCompletedMigration;

  modifier restricted() {
    _restricted();
    _;
  }

  function _restricted() internal view {
    require(
      msg.sender == owner,
      "This function is restricted to the contract's owner"
    );
  }

  function setCompleted(uint completed) public restricted {
    lastCompletedMigration = completed;
  }
}