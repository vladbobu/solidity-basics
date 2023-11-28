// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Operators in Solidity
 * @dev Demonstrates the use of various types of operators in Solidity.
 * This includes arithmetic, comparison, logical, and assignment operators.
 */
contract Operators {
    /**
     * @dev Demonstrates arithmetic operators.
     * @param a First operand.
     * @param b Second operand.
     * @return sum, difference, product, quotient, and remainder of two numbers.
     */
    function arithmeticOperators(
        uint a,
        uint b
    ) public pure returns (uint, uint, uint, uint, uint) {
        uint sum = a + b;
        uint difference = a - b;
        uint product = a * b;
        uint quotient = a / b;
        uint remainder = a % b;

        return (sum, difference, product, quotient, remainder);
    }

    /**
     * @dev Demonstrates comparison operators.
     * @param a First operand.
     * @param b Second operand.
     * @return isEqual, isLessThan, isGreaterThan.
     */
    function comparisonOperators(
        uint a,
        uint b
    ) public pure returns (bool, bool, bool) {
        bool isEqual = a == b;
        bool isLessThan = a < b;
        bool isGreaterThan = a > b;

        return (isEqual, isLessThan, isGreaterThan);
    }

    /**
     * @dev Demonstrates logical operators.
     * @param x First boolean operand.
     * @param y Second boolean operand.
     * @return andResult, orResult, notResult.
     */
    function logicalOperators(
        bool x,
        bool y
    ) public pure returns (bool, bool, bool) {
        bool andResult = x && y;
        bool orResult = x || y;
        bool notResult = !x;

        return (andResult, orResult, notResult);
    }

    /**
     * @dev Demonstrates assignment operators.
     * @param a First operand.
     * @param b Second operand.
     * @return addAssign, subAssign, mulAssign, divAssign.
     */
    function assignmentOperators(
        uint a,
        uint b
    ) public pure returns (uint, uint, uint, uint) {
        uint addAssign = a;
        addAssign += b;

        uint subAssign = a;
        subAssign -= b;

        uint mulAssign = a;
        mulAssign *= b;

        uint divAssign = a;
        divAssign /= b;

        return (addAssign, subAssign, mulAssign, divAssign);
    }
}
