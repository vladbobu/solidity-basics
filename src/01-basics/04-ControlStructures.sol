// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Control Structures in Solidity
 * @dev Demonstrates the use of various control structures in Solidity.
 * This includes if-else statements, for and while loops, and conditional (ternary) operators.
 */
contract ControlStructures {
    /**
     * @dev Determines if a number is even using an if-else statement.
     * @param num The number to check.
     * @return true if the number is even, false otherwise.
     */
    function isEven(uint num) public pure returns (bool) {
        if (num % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Sums numbers from 1 to `n` using a for loop.
     * @param n The upper limit of the range.
     * @return The sum of numbers from 1 to `n`.
     */
    function sumNumbers(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    /**
     * @dev Counts the number of digits in a number using a while loop.
     * @param num The number to check.
     * @return The number of digits in `num`.
     */
    function countDigits(uint num) public pure returns (uint) {
        uint count = 0;
        while (num != 0) {
            count++;
            num /= 10;
        }
        return count;
    }

    /**
     * @dev Returns the maximum of two numbers using the ternary operator.
     * @param a First number.
     * @param b Second number.
     * @return The larger of `a` and `b`.
     */
    function max(uint a, uint b) public pure returns (uint) {
        return a > b ? a : b;
    }
}
