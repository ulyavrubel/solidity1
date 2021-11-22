// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;    // sender of the contract call, value - how much they sent

        //what the ETH -> USD conversion rate
        //api call in blockchain is impossible because each node will have different respond callin in different times
    }
}
