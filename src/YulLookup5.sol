// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

// solhint-disable
contract YulLookup5 {
    /// @notice Get 8 bytes from 72 data arrays
    function getYulLookup5(uint256 index) public pure returns (uint256 result) {
        assembly {
            // First, we calculate which segment of data arrays we're dealing with
            let segment := div(index, 32)

            switch segment
            case 0 {
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, index),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, index),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, index),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, index),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, index),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, index),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, index),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(mul(8, index), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(mul(8, index), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0xff
                            )
                        )
                    )
            }
            case 1 {
                let shiftedIndex := sub(index, 32)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 2 {
                let shiftedIndex := sub(index, 64)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 3 {
                let shiftedIndex := sub(index, 96)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 4 {
                let shiftedIndex := sub(index, 128)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 5 {
                let shiftedIndex := sub(index, 160)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 6 {
                let shiftedIndex := sub(index, 192)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
            case 7 {
                let shiftedIndex := sub(index, 224)
                result :=
                    or(
                        or(
                            or(
                                or(
                                    or(
                                        or(
                                            or(
                                                or(
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    ),
                                                    shl(
                                                        8,
                                                        and(
                                                            shr(
                                                                mul(8, shiftedIndex),
                                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                            ),
                                                            0xff
                                                        )
                                                    )
                                                ),
                                                shl(
                                                    16,
                                                    and(
                                                        shr(
                                                            mul(8, shiftedIndex),
                                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                        ),
                                                        0xff
                                                    )
                                                )
                                            ),
                                            shl(
                                                24,
                                                and(
                                                    shr(
                                                        mul(8, shiftedIndex),
                                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                    ),
                                                    0xff
                                                )
                                            )
                                        ),
                                        shl(
                                            32,
                                            and(
                                                shr(
                                                    mul(8, shiftedIndex),
                                                    0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                                ),
                                                0xff
                                            )
                                        )
                                    ),
                                    shl(
                                        40,
                                        and(
                                            shr(
                                                mul(8, shiftedIndex),
                                                0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                            ),
                                            0xff
                                        )
                                    )
                                ),
                                shl(
                                    48,
                                    and(
                                        shr(
                                            mul(8, shiftedIndex),
                                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        ),
                                        0xff
                                    )
                                )
                            ),
                            shl(
                                56,
                                and(
                                    shr(
                                        mul(8, shiftedIndex),
                                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    ),
                                    0xff
                                )
                            )
                        ),
                        shl(
                            64,
                            and(
                                shr(
                                    mul(8, shiftedIndex), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                ),
                                0xff
                            )
                        )
                    )
            }
        }
    }
}
