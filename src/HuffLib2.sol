// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/// @title HuffLib
/// @notice Example of a contract that interacts with appended Huff code.
/// @author clabby - https://github.com/clabby/solady-vs-huffidity/blob/master/src/FixedPointMathLib.sol
contract HuffLib2 {
    /// @notice Calls appended Huff code
    function lookup5_Huff(uint256 index) public pure returns (uint256 _res) {
        function (uint256) pure returns (uint256) _jumpTable;
        assembly {
            _jumpTable := sub(codesize(), 3347)
        }
        _res = _jumpTable(index);
    }
}
