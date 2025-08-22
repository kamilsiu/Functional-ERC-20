// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SuperToken} from "../src/SuperToken.sol";

contract SuperTokenTest is Test {
    SuperToken superToken;
    function setUp() public {
        superToken = new SuperToken(1000,30000);
    }
    function testInitialSupply()public{
        assertEq(superToken.totalSupply(),1000*10**superToken.decimals());
    }
    function testMint()public{
        superToken.mint(address(this),500);
        assertEq(superToken.balanceOf(address(this)),500*10**18);
    }
}
