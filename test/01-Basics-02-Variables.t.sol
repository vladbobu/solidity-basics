// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Variables} from "../src/01-basics/02-Variables.sol";

contract VariablesTest is Test {
    Variables variablesContract; // Instance of your Variables contract

    // Set up the test environment before each test.
    function setUp() public {
        variablesContract = new Variables();
    }

    // Test retrieval of the public state variable.
    function testGetStateVariable() public {
        uint expectedValue = 10; // The initial value set in Variables.sol
        assertEq(
            variablesContract.stateVariable(),
            expectedValue,
            "State variable should initially be 10."
        );
    }

    // Test modifying the state variable.
    function testSetStateVariable() public {
        uint newValue = 15;
        variablesContract.setStateVariable(newValue);
        assertEq(
            variablesContract.stateVariable(),
            newValue,
            "State variable should be updated to the new value."
        );
    }

    // Test retrieval of the private variable via its public getter function.
    function testGetPrivateVariable() public {
        string memory expectedValue = "Private"; // The initial value set in Variables.sol
        assertEq(
            variablesContract.getPrivateVariable(),
            expectedValue,
            "Private variable should match the expected value."
        );
    }

    // Test global variables: Here we're testing the msg.sender global variable.
    function testGlobalVariablesSender() public {
        address expectedSender = address(this); // 'this' refers to the contract itself
        (address sender, , ) = variablesContract.globalVariables();
        assertEq(
            sender,
            expectedSender,
            "Sender should be the address of this test contract."
        );
    }
}
