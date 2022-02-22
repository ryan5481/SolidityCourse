// SPDX-License-Identifier: MIT
pragma solidity >=0.6.6 <0.9.0;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe{

    mapping (address => uint256) public addrToAmountFunded;
    function fund() public payable {
        addrToAmountFunded[msg.sender] += msg.value;
        uint256 minimumUSD = 50 * 10 ** 18;
        require (getConversionRate(msg.value) >= minimumUSD, "ETH lower than required.");
        //; addr of msgsender =+ value
        // keeps track of all the addr thatsends value; someone will send 'value' to the addr 
    }
    function getVersion() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return  priceFeed.version();
    }

    function getPrice() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (,int256 answer,,,)= priceFeed.latestRoundData();
         return uint256 (answer * 10000000000) ;
         //2724.47706479
    }
    // convert whatever ETH value sent into USD
    function getConversionRate(uint256 ethAmount) public view returns (uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1000000000000000000;
        return ethAmountInUsd;
    }
}