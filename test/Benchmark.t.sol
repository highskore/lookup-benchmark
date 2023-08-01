// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// Std

import { PRBTest } from "@prb/test/PRBTest.sol";
import { console2 } from "forge-std/console2.sol";
import { StdCheats } from "forge-std/StdCheats.sol";
import { HuffDeployer } from "foundry-huff/HuffDeployer.sol";

// Contracts

import { Map } from "../src/Map.sol";
import { Lookup } from "../src/Lookup.sol";
import { Lookup2 } from "../src/Lookup2.sol";
import { If } from "../src/If.sol";
import { YulSwitch } from "../src/YulSwitch.sol";
import { HuffWrapper } from "../src/HuffWrapper.sol";
import { HuffLib } from "../src/HuffLib.sol";

contract BenchmarkTest is PRBTest, StdCheats {
    Map internal map;
    Lookup internal lookup;
    Lookup2 internal lookup2;
    If internal if_;
    YulSwitch internal yulSwitch;
    HuffLib internal huffLib;
    Huff internal huffPure;

    function setUp() public {
        map = new Map();
        lookup = new Lookup();
        lookup2 = new Lookup2();
        if_ = new If();
        yulSwitch = new YulSwitch();
        huffPure = Huff(HuffDeployer.config().deploy("JumpTable_Pure"));
        setUpHuff();
    }

    /// @notice Deploy the HuffWrapper contract with the runtime bytecode specified in the constructor.
    function setUpHuff() public {
        // Grab the Solidity + Huff runtime code
        bytes memory bytecode = type(HuffLib).runtimeCode;
        bytes memory huff = (HuffDeployer.deploy("JumpTable")).code;
        // Concatenate the Solidity and Huff code
        bytes memory finalCode;
        assembly {
            // Grab the free memory pointer
            finalCode := mload(0x40)

            // Get the length of the Solidity and Huff code.
            let solLen := mload(bytecode)
            let huffLen := mload(huff)

            // Get the start of the final runtime code data
            let finalStart := add(finalCode, 0x20)

            // Copy the solidity code
            pop(staticcall(gas(), 0x04, add(bytecode, 0x20), solLen, finalStart, solLen))

            // Copy the huff code
            pop(staticcall(gas(), 0x04, add(huff, 0x20), huffLen, add(finalStart, solLen), huffLen))

            // The length of `finalCode` is the sum of the lengths of the two runtime code snippets
            let finalLen := add(solLen, huffLen)

            // Store the length of the final code
            mstore(finalCode, finalLen)

            // Update the free memory pointer
            mstore(0x40, add(finalCode, and(add(finalLen, 0x3F), not(0x1F))))
        }

        // Deploy the lib
        address addr = address(new HuffWrapper(finalCode));
        huffLib = HuffLib(addr);
    }

    function testFuzz_Huff(uint8 index) public {
        uint256 value = huffPure.jumpTable(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Huff_Min() public {
        uint256 value = huffPure.jumpTable(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Huff_Max() public {
        uint256 value = huffPure.jumpTable(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_Huffidity(uint8 index) public {
        uint256 value = huffLib.jumpTable(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Huffidity_Min() public {
        uint256 value = huffLib.jumpTable(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Huffidity_Max() public {
        uint256 value = huffLib.jumpTable(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_If(uint8 index) public {
        uint256 value = if_.getIf(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_If_Min() public {
        uint256 value = if_.getIf(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_If_Max() public {
        uint256 value = if_.getIf(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_Lookup(uint8 index) public {
        uint256 value = lookup.getLookup(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Lookup_Min() public {
        uint256 value = lookup.getLookup(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Lookup_Max() public {
        uint256 value = lookup.getLookup(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_Lookup2(uint8 index) public {
        uint256 value = lookup2.getLookup2(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Lookup2_Min() public {
        uint256 value = lookup2.getLookup2(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Lookup2_Max() public {
        uint256 value = lookup2.getLookup2(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_Map(uint8 index) public {
        uint256 value = map.map(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Map_Min() public {
        uint256 value = map.map(0);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_Map_Max() public {
        uint256 value = map.map(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function testFuzz_getSwitchYul(uint8 index) public {
        uint256 value = yulSwitch.getSwitchYul(index);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_getSwitchYul_Min() public {
        uint256 value = yulSwitch.getSwitchYul(type(uint8).min);
        assertEq(value, uint256(0xffffffffffffffffff));
    }

    function test_getSwitchYul_Max() public {
        uint256 value = yulSwitch.getSwitchYul(type(uint8).max);
        assertEq(value, uint256(0xffffffffffffffffff));
    }
}

interface Huff {
    function jumpTable(uint8 index) external returns (uint256);
}
