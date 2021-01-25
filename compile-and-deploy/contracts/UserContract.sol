pragma solidity ^0.4.24;

contract UsersContract {

    struct User {
        string name;
        string surName;
    }

    mapping(address => User) private users;

    function join(string name, string surName) public {
        User storage user = users[msg.sender];
        user.name = name;
        user.surName = surName;
    }

    function getUser(address addr) public view returns (string, string){
        User memory user = users[addr];
        return (user.name, user.surName);
    }
}