// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract Benchmark {
    /// @notice a big array of bytes
    bytes public constant data =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";

    /// @notice 8 smaller arrays of bytes
    bytes public constant data1 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data2 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data3 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data4 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data5 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data6 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data7 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    bytes public constant data8 =
        hex"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";

    /// @notice a big constant
    uint256 public constant BIG = type(uint64).max;

    /// @notice a map of big values
    mapping(uint8 key => uint256 value) public map;

    constructor() {
        for (uint8 i; i <= 254;) {
            map[i] = BIG;
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Get 8 bytes from 8 data arrays
    function getLookup(uint256 index) public pure returns (uint256 result) {
        result = uint256(uint8(data1[index])) | uint256(uint8(data2[index])) << 8 | uint256(uint8(data3[index])) << 16
            | uint256(uint8(data4[index])) << 24 | uint256(uint8(data5[index])) << 32 | uint256(uint8(data6[index])) << 40
            | uint256(uint8(data7[index])) << 48 | uint256(uint8(data8[index])) << 56;
    }

    /// @notice Get 8 bytes from 1 data array at index + (0, 7)
    function getLookup2(uint256 index) public pure returns (uint256 output) {
        output = uint256(uint8(data[index])) | uint256(uint8(data[index + 1])) << 8
            | uint256(uint8(data[index + 2])) << 16 | uint256(uint8(data[index + 3])) << 24
            | uint256(uint8(data[index + 4])) << 32 | uint256(uint8(data[index + 5])) << 40
            | uint256(uint8(data[index + 6])) << 48 | uint256(uint8(data[index + 7])) << 56;
    }

    /// @notice Get 8 bytes from const based on index
    function getIf(uint256 index) public pure returns (uint256 out) {
        if (index == 0) return BIG;
        if (index == 1) return BIG;
        if (index == 2) return BIG;
        if (index == 3) return BIG;
        if (index == 4) return BIG;
        if (index == 5) return BIG;
        if (index == 6) return BIG;
        if (index == 7) return BIG;
        if (index == 8) return BIG;
        if (index == 9) return BIG;
        if (index == 10) return BIG;
        if (index == 11) return BIG;
        if (index == 12) return BIG;
        if (index == 13) return BIG;
        if (index == 14) return BIG;
        if (index == 15) return BIG;
        if (index == 16) return BIG;
        if (index == 17) return BIG;
        if (index == 18) return BIG;
        if (index == 19) return BIG;
        if (index == 20) return BIG;
        if (index == 21) return BIG;
        if (index == 22) return BIG;
        if (index == 23) return BIG;
        if (index == 24) return BIG;
        if (index == 25) return BIG;
        if (index == 26) return BIG;
        if (index == 27) return BIG;
        if (index == 28) return BIG;
        if (index == 29) return BIG;
        if (index == 30) return BIG;
        if (index == 31) return BIG;
        if (index == 32) return BIG;
        if (index == 33) return BIG;
        if (index == 34) return BIG;
        if (index == 35) return BIG;
        if (index == 36) return BIG;
        if (index == 37) return BIG;
        if (index == 38) return BIG;
        if (index == 39) return BIG;
        if (index == 40) return BIG;
        if (index == 41) return BIG;
        if (index == 42) return BIG;
        if (index == 43) return BIG;
        if (index == 44) return BIG;
        if (index == 45) return BIG;
        if (index == 46) return BIG;
        if (index == 47) return BIG;
        if (index == 48) return BIG;
        if (index == 49) return BIG;
        if (index == 50) return BIG;
        if (index == 51) return BIG;
        if (index == 52) return BIG;
        if (index == 53) return BIG;
        if (index == 54) return BIG;
        if (index == 55) return BIG;
        if (index == 56) return BIG;
        if (index == 57) return BIG;
        if (index == 58) return BIG;
        if (index == 59) return BIG;
        if (index == 60) return BIG;
        if (index == 61) return BIG;
        if (index == 62) return BIG;
        if (index == 63) return BIG;
        if (index == 64) return BIG;
        if (index == 65) return BIG;
        if (index == 66) return BIG;
        if (index == 67) return BIG;
        if (index == 68) return BIG;
        if (index == 69) return BIG;
        if (index == 70) return BIG;
        if (index == 71) return BIG;
        if (index == 72) return BIG;
        if (index == 73) return BIG;
        if (index == 74) return BIG;
        if (index == 75) return BIG;
        if (index == 76) return BIG;
        if (index == 77) return BIG;
        if (index == 78) return BIG;
        if (index == 79) return BIG;
        if (index == 80) return BIG;
        if (index == 81) return BIG;
        if (index == 82) return BIG;
        if (index == 83) return BIG;
        if (index == 84) return BIG;
        if (index == 85) return BIG;
        if (index == 86) return BIG;
        if (index == 87) return BIG;
        if (index == 88) return BIG;
        if (index == 89) return BIG;
        if (index == 90) return BIG;
        if (index == 91) return BIG;
        if (index == 92) return BIG;
        if (index == 93) return BIG;
        if (index == 94) return BIG;
        if (index == 95) return BIG;
        if (index == 96) return BIG;
        if (index == 97) return BIG;
        if (index == 98) return BIG;
        if (index == 99) return BIG;
        if (index == 100) return BIG;
        if (index == 101) return BIG;
        if (index == 102) return BIG;
        if (index == 103) return BIG;
        if (index == 104) return BIG;
        if (index == 105) return BIG;
        if (index == 106) return BIG;
        if (index == 107) return BIG;
        if (index == 108) return BIG;
        if (index == 109) return BIG;
        if (index == 110) return BIG;
        if (index == 111) return BIG;
        if (index == 112) return BIG;
        if (index == 113) return BIG;
        if (index == 114) return BIG;
        if (index == 115) return BIG;
        if (index == 116) return BIG;
        if (index == 117) return BIG;
        if (index == 118) return BIG;
        if (index == 119) return BIG;
        if (index == 120) return BIG;
        if (index == 121) return BIG;
        if (index == 122) return BIG;
        if (index == 123) return BIG;
        if (index == 124) return BIG;
        if (index == 125) return BIG;
        if (index == 126) return BIG;
        if (index == 127) return BIG;
        if (index == 128) return BIG;
        if (index == 129) return BIG;
        if (index == 130) return BIG;
        if (index == 131) return BIG;
        if (index == 132) return BIG;
        if (index == 133) return BIG;
        if (index == 134) return BIG;
        if (index == 135) return BIG;
        if (index == 136) return BIG;
        if (index == 137) return BIG;
        if (index == 138) return BIG;
        if (index == 139) return BIG;
        if (index == 140) return BIG;
        if (index == 141) return BIG;
        if (index == 142) return BIG;
        if (index == 143) return BIG;
        if (index == 144) return BIG;
        if (index == 145) return BIG;
        if (index == 146) return BIG;
        if (index == 147) return BIG;
        if (index == 148) return BIG;
        if (index == 149) return BIG;
        if (index == 150) return BIG;
        if (index == 151) return BIG;
        if (index == 152) return BIG;
        if (index == 153) return BIG;
        if (index == 154) return BIG;
        if (index == 155) return BIG;
        if (index == 156) return BIG;
        if (index == 157) return BIG;
        if (index == 158) return BIG;
        if (index == 159) return BIG;
        if (index == 160) return BIG;
        if (index == 161) return BIG;
        if (index == 162) return BIG;
        if (index == 163) return BIG;
        if (index == 164) return BIG;
        if (index == 165) return BIG;
        if (index == 166) return BIG;
        if (index == 167) return BIG;
        if (index == 168) return BIG;
        if (index == 169) return BIG;
        if (index == 170) return BIG;
        if (index == 171) return BIG;
        if (index == 172) return BIG;
        if (index == 173) return BIG;
        if (index == 174) return BIG;
        if (index == 175) return BIG;
        if (index == 176) return BIG;
        if (index == 177) return BIG;
        if (index == 178) return BIG;
        if (index == 179) return BIG;
        if (index == 180) return BIG;
        if (index == 181) return BIG;
        if (index == 182) return BIG;
        if (index == 183) return BIG;
        if (index == 184) return BIG;
        if (index == 185) return BIG;
        if (index == 186) return BIG;
        if (index == 187) return BIG;
        if (index == 188) return BIG;
        if (index == 189) return BIG;
        if (index == 190) return BIG;
        if (index == 191) return BIG;
        if (index == 192) return BIG;
        if (index == 193) return BIG;
        if (index == 194) return BIG;
        if (index == 195) return BIG;
        if (index == 196) return BIG;
        if (index == 197) return BIG;
        if (index == 198) return BIG;
        if (index == 199) return BIG;
        if (index == 200) return BIG;
        if (index == 201) return BIG;
        if (index == 202) return BIG;
        if (index == 203) return BIG;
        if (index == 204) return BIG;
        if (index == 205) return BIG;
        if (index == 206) return BIG;
        if (index == 207) return BIG;
        if (index == 208) return BIG;
        if (index == 209) return BIG;
        if (index == 210) return BIG;
        if (index == 211) return BIG;
        if (index == 212) return BIG;
        if (index == 213) return BIG;
        if (index == 214) return BIG;
        if (index == 215) return BIG;
        if (index == 216) return BIG;
        if (index == 217) return BIG;
        if (index == 218) return BIG;
        if (index == 219) return BIG;
        if (index == 220) return BIG;
        if (index == 221) return BIG;
        if (index == 222) return BIG;
        if (index == 223) return BIG;
        if (index == 224) return BIG;
        if (index == 225) return BIG;
        if (index == 226) return BIG;
        if (index == 227) return BIG;
        if (index == 228) return BIG;
        if (index == 229) return BIG;
        if (index == 230) return BIG;
        if (index == 231) return BIG;
        if (index == 232) return BIG;
        if (index == 233) return BIG;
        if (index == 234) return BIG;
        if (index == 235) return BIG;
        if (index == 236) return BIG;
        if (index == 237) return BIG;
        if (index == 238) return BIG;
        if (index == 239) return BIG;
        if (index == 240) return BIG;
        if (index == 241) return BIG;
        if (index == 242) return BIG;
        if (index == 243) return BIG;
        if (index == 244) return BIG;
        if (index == 245) return BIG;
        if (index == 246) return BIG;
        if (index == 247) return BIG;
        if (index == 248) return BIG;
        if (index == 249) return BIG;
        if (index == 250) return BIG;
        if (index == 251) return BIG;
        if (index == 252) return BIG;
        if (index == 253) return BIG;
        if (index == 254) return BIG;
        if (index == 255) return BIG;
    }
}
