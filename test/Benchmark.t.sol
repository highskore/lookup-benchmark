// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import { PRBTest } from "@prb/test/PRBTest.sol";
import { console2 } from "forge-std/console2.sol";
import { StdCheats } from "forge-std/StdCheats.sol";

import { Benchmark } from "../src/Benchmark.sol";

contract BenchmarkTest is PRBTest, StdCheats {
    Benchmark internal benchmark;

    function setUp() public {
        benchmark = new Benchmark();
    }

    function testFuzz_If(uint8 index) public view returns (uint256 value) {
        value = benchmark.getIf(index);
    }

    function test_If_Min() public view returns (uint256 value) {
        value = benchmark.getIf(type(uint8).min);
    }

    function test_If_Max() public view returns (uint256 value) {
        value = benchmark.getIf(type(uint8).max);
    }

    function testFuzz_Lookup(uint8 index) public view returns (uint256 value) {
        value = benchmark.getLookup(index);
    }

    function test_Lookup_Min() public view returns (uint256 value) {
        value = benchmark.getLookup(type(uint8).min);
    }

    function test_Lookup_Max() public view returns (uint256 value) {
        value = benchmark.getLookup(type(uint8).max);
    }

    function testFuzz_Lookup2(uint8 index) public view returns (uint256 value) {
        value = benchmark.getLookup2(index);
    }

    function test_Lookup2_Min() public view returns (uint256 value) {
        value = benchmark.getLookup2(type(uint8).min);
    }

    function test_Lookup2_Max() public view returns (uint256 value) {
        value = benchmark.getLookup2(type(uint8).max);
    }

    function testFuzz_Map(uint8 index) public view returns (uint256 value) {
        value = benchmark.map(index);
    }

    function test_Map_Min() public view returns (uint256 value) {
        value = benchmark.map(0);
    }

    function test_Map_Max() public view returns (uint256 value) {
        value = benchmark.map(type(uint8).max);
    }
}
