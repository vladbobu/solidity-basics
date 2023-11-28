// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {ControlStructures} from "../src/01-basics/04-ControlStructures.sol";

contract ControlStructuresTest is Test {
    ControlStructures controlStructures;

    function setUp() public {
        controlStructures = new ControlStructures();
    }

    function testIsEven() public {
        assertTrue(controlStructures.isEven(10), "10 should be even");
        assertFalse(controlStructures.isEven(5), "5 should be odd");
    }

    function testSumNumbers() public {
        uint sum = controlStructures.sumNumbers(5);
        assertEq(sum, 15, "Sum of numbers from 1 to 5 should be 15");
    }

    function testCountDigits() public {
        uint count = controlStructures.countDigits(12345);
        assertEq(count, 5, "12345 should have 5 digits");
    }

    function testMax() public {
        assertEq(
            controlStructures.max(10, 20),
            20,
            "Max of 10 and 20 should be 20"
        );
        assertEq(
            controlStructures.max(30, 20),
            30,
            "Max of 30 and 20 should be 30"
        );
    }
}
