// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Operators} from "../src/01-basics/03-Operators.sol";

contract OperatorsTest is Test {
    Operators operators;

    function setUp() public {
        operators = new Operators();
    }

    function testArithmeticOperators() public {
        (uint sum, uint diff, uint prod, uint quot, uint rem) = operators
            .arithmeticOperators(10, 5);
        assertEq(sum, 15, "Sum should be 15");
        assertEq(diff, 5, "Difference should be 5");
        assertEq(prod, 50, "Product should be 50");
        assertEq(quot, 2, "Quotient should be 2");
        assertEq(rem, 0, "Remainder should be 0");
    }

    function testComparisonOperators() public {
        (bool isEqual, bool isLessThan, bool isGreaterThan) = operators
            .comparisonOperators(10, 5);
        assertFalse(isEqual, "10 is not equal to 5");
        assertFalse(isLessThan, "10 is not less than 5");
        assertTrue(isGreaterThan, "10 is greater than 5");
    }

    function testLogicalOperators() public {
        (bool andResult, bool orResult, bool notResult) = operators
            .logicalOperators(true, false);
        assertFalse(andResult, "AND of true and false should be false");
        assertTrue(orResult, "OR of true and false should be true");
        assertFalse(notResult, "NOT of true should be false");
    }

    function testAssignmentOperators() public {
        (
            uint addAssign,
            uint subAssign,
            uint mulAssign,
            uint divAssign
        ) = operators.assignmentOperators(10, 5);
        assertEq(addAssign, 15, "10 += 5 should be 15");
        assertEq(subAssign, 5, "10 -= 5 should be 5");
        assertEq(mulAssign, 50, "10 *= 5 should be 50");
        assertEq(divAssign, 2, "10 /= 5 should be 2");
    }
}
