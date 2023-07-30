// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// Std

import { PRBTest } from "@prb/test/PRBTest.sol";
import { console2 } from "forge-std/console2.sol";
import { StdCheats } from "forge-std/StdCheats.sol";

// Contracts

import { Map } from "../src/Map.sol";
import { Lookup } from "../src/Lookup.sol";
import { Lookup2 } from "../src/Lookup2.sol";
import { If } from "../src/If.sol";
import { YulSwitch } from "../src/YulSwitch.sol";

contract BenchmarkTest is PRBTest, StdCheats {
    Map internal map;
    Lookup internal lookup;
    Lookup2 internal lookup2;
    If internal if_;
    YulSwitch internal yulSwitch;

    function setUp() public {
        map = new Map();
        lookup = new Lookup();
        lookup2 = new Lookup2();
        if_ = new If();
        yulSwitch = new YulSwitch();
    }

    function testFuzz_If(uint8 index) public view returns (uint256 value) {
        value = if_.getIf(index);
    }

    function test_If_Min() public view returns (uint256 value) {
        value = if_.getIf(type(uint8).min);
    }

    function test_If_Max() public view returns (uint256 value) {
        value = if_.getIf(type(uint8).max);
    }

    function testFuzz_Lookup(uint8 index) public view returns (uint256 value) {
        value = lookup.getLookup(index);
    }

    function test_Lookup_Min() public view returns (uint256 value) {
        value = lookup.getLookup(type(uint8).min);
    }

    function test_Lookup_Max() public view returns (uint256 value) {
        value = lookup.getLookup(type(uint8).max);
    }

    function testFuzz_Lookup2(uint8 index) public view returns (uint256 value) {
        value = lookup2.getLookup2(index);
    }

    function test_Lookup2_Min() public view returns (uint256 value) {
        value = lookup2.getLookup2(type(uint8).min);
    }

    function test_Lookup2_Max() public view returns (uint256 value) {
        value = lookup2.getLookup2(type(uint8).max);
    }

    function testFuzz_Map(uint8 index) public view returns (uint256 value) {
        value = map.map(index);
    }

    function test_Map_Min() public view returns (uint256 value) {
        value = map.map(0);
    }

    function test_Map_Max() public view returns (uint256 value) {
        value = map.map(type(uint8).max);
    }

    function testFuzz_getSwitchYul(uint8 index) public view returns (uint256 value) {
        value = yulSwitch.getSwitchYul(index);
    }

    function test_getSwitchYul_Min() public view returns (uint256 value) {
        value = yulSwitch.getSwitchYul(type(uint8).min);
    }

    function test_getSwitchYul_Max() public view returns (uint256 value) {
        value = yulSwitch.getSwitchYul(type(uint8).max);
    }
}
