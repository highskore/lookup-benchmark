// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract Map {
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
}
