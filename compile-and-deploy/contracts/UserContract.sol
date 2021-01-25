pragma solidity ^0.4.24;

contract UsersContract {

    struct User {
        string name;
        string surName;
    }

    mapping(address => User) private users;
}