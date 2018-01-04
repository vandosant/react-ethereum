pragma solidity ^0.4.19;

contract Example {
    address private owner;

    function Example () public {
        owner = msg.sender;
    }

    function kill () public {
        require (msg.sender == owner);
        selfdestruct (owner);
    }

    function () public payable {
        revert ();
    }
}
