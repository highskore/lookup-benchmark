// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract Lookup4 {
    /// @notice 8 smaller arrays of bytes
    bytes public constant data1 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data2 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data3 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data4 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data5 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data6 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data7 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data8 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data9 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data10 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data11 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data12 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data13 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data14 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data15 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data16 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data17 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data18 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data19 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data20 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data21 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data22 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data23 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data24 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data25 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data26 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data27 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data28 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data29 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data30 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data31 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data32 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data33 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data34 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data35 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data36 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";

    /// @notice Get 8 bytes from 36 data arrays
    function getLookup4(uint256 index) public pure returns (uint256 result) {
        if (index <= 63) {
            return result = uint256(uint8(data1[index])) | uint256(uint8(data2[index])) << 8
                | uint256(uint8(data3[index])) << 16 | uint256(uint8(data4[index])) << 24
                | uint256(uint8(data5[index])) << 32 | uint256(uint8(data6[index])) << 40
                | uint256(uint8(data7[index])) << 48 | uint256(uint8(data8[index])) << 56
                | uint256(uint8(data9[index])) << 64;
        }
        if (index <= 127) {
            uint256 shiftedIndex = index - 64;
            return result = uint256(uint8(data10[shiftedIndex])) | uint256(uint8(data11[shiftedIndex])) << 8
                | uint256(uint8(data12[shiftedIndex])) << 16 | uint256(uint8(data13[shiftedIndex])) << 24
                | uint256(uint8(data14[shiftedIndex])) << 32 | uint256(uint8(data15[shiftedIndex])) << 40
                | uint256(uint8(data16[shiftedIndex])) << 48 | uint256(uint8(data17[shiftedIndex])) << 56
                | uint256(uint8(data18[shiftedIndex])) << 64;
        }
        if (index <= 191) {
            uint256 shiftedIndex = index - 128;
            return result = uint256(uint8(data19[shiftedIndex])) | uint256(uint8(data20[shiftedIndex])) << 8
                | uint256(uint8(data21[shiftedIndex])) << 16 | uint256(uint8(data22[shiftedIndex])) << 24
                | uint256(uint8(data23[shiftedIndex])) << 32 | uint256(uint8(data24[shiftedIndex])) << 40
                | uint256(uint8(data25[shiftedIndex])) << 48 | uint256(uint8(data26[shiftedIndex])) << 56
                | uint256(uint8(data27[shiftedIndex])) << 64;
        }
        if (index <= 255) {
            uint256 shiftedIndex = index - 192;
            return result = uint256(uint8(data28[shiftedIndex])) | uint256(uint8(data29[shiftedIndex])) << 8
                | uint256(uint8(data30[shiftedIndex])) << 16 | uint256(uint8(data31[shiftedIndex])) << 24
                | uint256(uint8(data32[shiftedIndex])) << 32 | uint256(uint8(data33[shiftedIndex])) << 40
                | uint256(uint8(data34[shiftedIndex])) << 48 | uint256(uint8(data35[shiftedIndex])) << 56
                | uint256(uint8(data36[shiftedIndex])) << 64;
        }
    }
}
