pragma solidity ^0.4.18;

contract Coursetro {
    string fName;
    uint256 age;
    address owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        // require is the same as if statement
        require(msg.sender == owner);
        // the below statement is to instruct that the method should get executed
        _;
    }
    
    event eventInstructor (
        string  _fname,
        uint256 _age
    );

    // applying the function modifier on the method
    function setInstructor(string _fname, uint256 _age) onlyOwner public {
        fName = _fname;
        age = _age;
        emit eventInstructor(_fname, _age);
    }
    
    function getInstructor() constant public returns (string, uint256) {
        return (fName, age);
    }
}