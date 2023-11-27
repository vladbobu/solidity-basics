// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataTypes {
    // Integer Types
    // different sizes are available
    //     uint8   ranges from 0 to 2 ** 8 - 1
    //     uint16  ranges from 0 to 2 ** 16 - 1
    //     ...
    //     uint256 ranges from 0 to 2 ** 256 - 1
    uint256 public unsignedInteger = 10; // Unsigned integer (positive numbers)
    int256 public signedInteger = -10; // Signed integer (positive and negative numbers)

    // Boolean Type
    bool public flag = true;

    // Address Type
    address public contractCreator = msg.sender;

    // Byte Types
    // bytes32: Fixed-size byte array, suitable for storing fixed-length data efficiently.
    // It's more gas-efficient for shorter, fixed-size data.
    // Ideal for data like cryptographic hashes, which are exactly 32 bytes.
    bytes32 public fixedBytes = "Hello World"; // Truncated after 32 bytes

    // bytes: Dynamic-size byte array, can store arbitrary length binary data.
    // More flexible than bytes32, but less gas-efficient for small and fixed-size data.
    // Use this when you need to store or manipulate raw binary data of variable length.
    bytes public dynamicBytes = "Hello, Solidity!"; // Can be resized, more versatile

    // String Type
    // string: Dynamic array specifically for UTF-8 encoded string (textual) data.
    // More suitable for text that can vary in length and for human-readable content.
    // Prefer string when the data represents readable text and may need to be changed.
    string public text = "Hello Solidity"; // UTF-8 text, good for variable-length strings

    // Enum Type
    enum State {
        Created,
        Active,
        Inactive
    }
    State public state = State.Created;

    // Struct Type
    struct Person {
        string name;
        uint age;
    }
    Person public person = Person("Alice", 30);

    // Array Types
    uint[] public numbers = [1, 2, 3];
    Person[] public people;

    // Adding a new Person to the people array
    function addPerson(string memory name, uint age) public {
        people.push(Person(name, age));
    }
}
