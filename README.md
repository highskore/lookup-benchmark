# Lookup Tables vs If Statements vs Mapping

This repository contains a smart contract Benchmark written in Solidity that is used to compare gas costs among three different methods of accessing data: lookup tables, if statements, and mapping.

## Gas Snapshot

![Alt text](image.png)

| src/Benchmark.sol |                 |      |        |      |         |
|--------------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                      | Deployment Size |      |        |      |         |
| 7741102                              | 10415           |      |        |      |         |
| Function Name                        | min             | avg  | median | max  | # calls |
| getIf                                | 372             | 3699 | 4489   | 6237 | 3       |
| getLookup                            | 1768            | 1768 | 1768   | 1768 | 3       |
| getLookup2                           | 6070            | 6070 | 6070   | 6070 | 3       |
| map                                  | 2531            | 2531 | 2531   | 2531 | 3       |





