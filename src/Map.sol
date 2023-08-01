// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract Map {
    /// @notice a big constant
    uint256 public constant BIG = uint256(0xffffffffffffffffff);

    /// @notice a map of big values
    mapping(uint16 key => uint256 value) public map;

    constructor() {
        for (uint16 i; i < 256;) {
            map[i] = BIG;
            unchecked {
                ++i;
            }
        }
    }
}
