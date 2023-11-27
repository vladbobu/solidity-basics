// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Variables {
    // State Variables: Stored on the blockchain.
    // Public state variables have an automatically generated getter function.
    uint public stateVariable = 10; // Unsigned integer, publicly accessible.

    // Private state variable: Not accessible outside the contract.
    // No automatic getter is generated for private variables.
    string private privateVariable = "Private";

    // Internal state variable: Accessible within the contract and derived contracts.
    // Similar to private, but also accessible in derived contracts.
    bytes internal internalVariable = "Internal";

    /**
     * @dev Example function to demonstrate local variables.
     * Local variables are not saved to the blockchain. They are temporary.
     */
    function localVariables() public pure returns (uint) {
        // Local Variable: Exists only within the function call.
        uint localVariable = 20;
        return localVariable; // Returns the value of the local variable.
    }

    /**
     * @dev Function to demonstrate global variables (provided by EVM).
     * Global variables provide information like blockchain details, transaction properties.
     */
    function globalVariables() public view returns (address, uint, uint) {
        address sender = msg.sender; // Address of the function caller.
        uint timestamp = block.timestamp; // Current block timestamp.
        uint blockNumber = block.number; // Current block number.

        return (sender, timestamp, blockNumber);
    }

    /**
     * @dev Function to demonstrate modifying state variables.
     * @param newValue The new value to set `stateVariable` to.
     */
    function setStateVariable(uint newValue) public {
        stateVariable = newValue;
    }

    /**
     * @dev Function to retrieve the private variable.
     * Manual getter function for a private variable.
     * @return The value of `privateVariable`.
     */
    function getPrivateVariable() public view returns (string memory) {
        return privateVariable;
    }

    /**
     * @dev Function to set the internal variable.
     * Internal function to modify `internalVariable`.
     * @param newBytes New value for `internalVariable`.
     */
    function setInternalVariable(bytes memory newBytes) internal {
        internalVariable = newBytes;
    }
}
