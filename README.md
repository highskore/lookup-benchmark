# `Lookup Tables` vs `If Statements` vs `Mapping` vs `Yul Switch` vs `Huffidity` vs `Huff`

This repository contains foundry benchmark tests written in Solidity that are used to compare gas costs among seven different methods of accessing data: lookup tables (2 versions), if statements, mapping, yul switch, huffidity (huff+solidity) and pure huff.

I had a wild idea/use case that needed to have access to 255 different 9 byte values so I decided to test out the different methods of accessing data to see which one was the most gas efficient.

## Gas Snapshot

![Alt text](./assets/image.png)

## Comparison

### Huffidity

Adding huff code (JumpTable.huff) to the end of a solidity contract (HuffLib.sol).
The huff code is a jump table with 255 entries.

| src/HuffLib.sol:HuffLib contract |                 |      |        |      |         |
|----------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                  | Deployment Size |      |        |      |         |
| 2375207                          | 12045           |      |        |      |         |
| Function Name                    | min             | avg  | median | max  | # calls |
| jumpTable                        | 2014            | 2014 | 2014   | 2014 | 3       |

### If

A solidity if statement with 255 branches.

| src/If.sol:If contract |                 |      |        |      |         |
|------------------------|-----------------|------|--------|------|---------|
| Deployment Cost        | Deployment Size |      |        |      |         |
| 1256506                | 6305            |      |        |      |         |
| Function Name          | min             | avg  | median | max  | # calls |
| getIf                  | 288             | 4190 | 6130   | 6153 | 3       |

### Lookup

Concatenating 9 different lookup constants at [index] into a single return value

| src/Lookup.sol:Lookup contract |                 |      |        |      |         |
|--------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                | Deployment Size |      |        |      |         |
| 261098                         | 1333            |      |        |      |         |
| Function Name                  | min             | avg  | median | max  | # calls |
| getLookup                      | 1896            | 1896 | 1896   | 1896 | 3       |

### Lookup2

A method of looking up a single large constant value and from indexes [index, index+8] and then concatenating the result into a single return value


| src/Lookup2.sol:Lookup2 contract |                 |      |        |      |         |
|----------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                  | Deployment Size |      |        |      |         |
| 671100                           | 3381            |      |        |      |         |
| Function Name                    | min             | avg  | median | max  | # calls |
| getLookup2                       | 6723            | 6723 | 6723   | 6723 | 3       |


### Mapping

A solidity storage mapping with 255 entries.

| src/Map.sol:Map contract |                 |      |        |      |         |
|--------------------------|-----------------|------|--------|------|---------|
| Deployment Cost          | Deployment Size |      |        |      |         |
| 5725548                  | 232             |      |        |      |         |
| Function Name            | min             | avg  | median | max  | # calls |
| map                      | 2438            | 2438 | 2438   | 2438 | 3       |

### YulSwitch

A yul switch statement with 255 branches.

| src/YulSwitch.sol:YulSwitch contract |                 |      |        |      |         |
|--------------------------------------|-----------------|------|--------|------|---------|
| Deployment Cost                      | Deployment Size |      |        |      |         |
| 439272                               | 2223            |      |        |      |         |
| Function Name                        | min             | avg  | median | max  | # calls |
| getSwitchYul                         | 297             | 2170 | 319    | 5896 | 3       |

### Huff

Lowest avg gas ez win.

## Credits

* [solady-vs-huffidity (clabby)](https://github.com/clabby/solady-vs-huffidity/)
* [huffidity-poc (moodlezoup)](https://github.com/moodlezoup/huffidity-poc)

