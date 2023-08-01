// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract Lookup5 {
    /// @notice 8 smaller arrays of bytes
    bytes public constant data1 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data2 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data3 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data4 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data5 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data6 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data7 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data8 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data9 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data10 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data11 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data12 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data13 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data14 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data15 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data16 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data17 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data18 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data19 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data20 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data21 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data22 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data23 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data24 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data25 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data26 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data27 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data28 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data29 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data30 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data31 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data32 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data33 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data34 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data35 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data36 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data37 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data38 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data39 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data40 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data41 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data42 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data43 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data44 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data45 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data46 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data47 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data48 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data49 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data50 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data51 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data52 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data53 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data54 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data55 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data56 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data57 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data58 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data59 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data60 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data61 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data62 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data63 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data64 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data65 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data66 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data67 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data68 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data69 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data70 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data71 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data72 = hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";

    /// @notice Get 8 bytes from 72 data arrays
    function getLookup5(uint256 index) public pure returns (uint256 result) {
        if (index <= 31) {
            return result = uint256(uint8(data1[index])) | uint256(uint8(data2[index])) << 8
                | uint256(uint8(data3[index])) << 16 | uint256(uint8(data4[index])) << 24
                | uint256(uint8(data5[index])) << 32 | uint256(uint8(data6[index])) << 40
                | uint256(uint8(data7[index])) << 48 | uint256(uint8(data8[index])) << 56
                | uint256(uint8(data9[index])) << 64;
        }
        if (index <= 63) {
            uint256 shiftedIndex = index - 32;
            return result = uint256(uint8(data10[shiftedIndex])) | uint256(uint8(data11[shiftedIndex])) << 8
                | uint256(uint8(data12[shiftedIndex])) << 16 | uint256(uint8(data13[shiftedIndex])) << 24
                | uint256(uint8(data14[shiftedIndex])) << 32 | uint256(uint8(data15[shiftedIndex])) << 40
                | uint256(uint8(data16[shiftedIndex])) << 48 | uint256(uint8(data17[shiftedIndex])) << 56
                | uint256(uint8(data18[shiftedIndex])) << 64;
        }
        if (index <= 95) {
            uint256 shiftedIndex = index - 64;
            return result = uint256(uint8(data19[shiftedIndex])) | uint256(uint8(data20[shiftedIndex])) << 8
                | uint256(uint8(data21[shiftedIndex])) << 16 | uint256(uint8(data22[shiftedIndex])) << 24
                | uint256(uint8(data23[shiftedIndex])) << 32 | uint256(uint8(data24[shiftedIndex])) << 40
                | uint256(uint8(data25[shiftedIndex])) << 48 | uint256(uint8(data26[shiftedIndex])) << 56
                | uint256(uint8(data27[shiftedIndex])) << 64;
        }
        if (index <= 127) {
            uint256 shiftedIndex = index - 96;
            return result = uint256(uint8(data28[shiftedIndex])) | uint256(uint8(data29[shiftedIndex])) << 8
                | uint256(uint8(data30[shiftedIndex])) << 16 | uint256(uint8(data31[shiftedIndex])) << 24
                | uint256(uint8(data32[shiftedIndex])) << 32 | uint256(uint8(data33[shiftedIndex])) << 40
                | uint256(uint8(data34[shiftedIndex])) << 48 | uint256(uint8(data35[shiftedIndex])) << 56
                | uint256(uint8(data36[shiftedIndex])) << 64;
        }
        if (index <= 159) {
            uint256 shiftedIndex = index - 128;
            return result = uint256(uint8(data37[shiftedIndex])) | uint256(uint8(data38[shiftedIndex])) << 8
                | uint256(uint8(data39[shiftedIndex])) << 16 | uint256(uint8(data40[shiftedIndex])) << 24
                | uint256(uint8(data41[shiftedIndex])) << 32 | uint256(uint8(data42[shiftedIndex])) << 40
                | uint256(uint8(data43[shiftedIndex])) << 48 | uint256(uint8(data44[shiftedIndex])) << 56
                | uint256(uint8(data45[shiftedIndex])) << 64;
        }
        if (index <= 191) {
            uint256 shiftedIndex = index - 160;
            return result = uint256(uint8(data46[shiftedIndex])) | uint256(uint8(data47[shiftedIndex])) << 8
                | uint256(uint8(data48[shiftedIndex])) << 16 | uint256(uint8(data49[shiftedIndex])) << 24
                | uint256(uint8(data50[shiftedIndex])) << 32 | uint256(uint8(data51[shiftedIndex])) << 40
                | uint256(uint8(data52[shiftedIndex])) << 48 | uint256(uint8(data53[shiftedIndex])) << 56
                | uint256(uint8(data54[shiftedIndex])) << 64;
        }
        if (index <= 223) {
            uint256 shiftedIndex = index - 192;
            return result = uint256(uint8(data55[shiftedIndex])) | uint256(uint8(data56[shiftedIndex])) << 8
                | uint256(uint8(data57[shiftedIndex])) << 16 | uint256(uint8(data58[shiftedIndex])) << 24
                | uint256(uint8(data59[shiftedIndex])) << 32 | uint256(uint8(data60[shiftedIndex])) << 40
                | uint256(uint8(data61[shiftedIndex])) << 48 | uint256(uint8(data62[shiftedIndex])) << 56
                | uint256(uint8(data63[shiftedIndex])) << 64;
        }
        uint256 shiftedIndex = index - 224;
        return result = uint256(uint8(data64[shiftedIndex])) | uint256(uint8(data65[shiftedIndex])) << 8
            | uint256(uint8(data66[shiftedIndex])) << 16 | uint256(uint8(data67[shiftedIndex])) << 24
            | uint256(uint8(data68[shiftedIndex])) << 32 | uint256(uint8(data69[shiftedIndex])) << 40
            | uint256(uint8(data70[shiftedIndex])) << 48 | uint256(uint8(data71[shiftedIndex])) << 56
            | uint256(uint8(data72[shiftedIndex])) << 64;
    }
}
