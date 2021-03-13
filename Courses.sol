// coded in remix.ethereum.org

pragma solidity ^0.4.18;

contract Owned {
    address _owner;
    
    constructor() public {
        _owner = msg.sender;
    }
    
    function getContractOwner() view public returns (address) {
        return _owner;
    }
    
    modifier onlyOwner {
        require (msg.sender == _owner);
        _;
    }
}

contract Courses is Owned {
    struct Instructor {
        uint256 age;
        string fName;
        string lName;
    }
    
    mapping (address => Instructor) creator_instructor_map;
    address[] keys;
    
    // Adding the onlyOwner modifier ensures that only the owner that creates the contract instance can add instructors
    function addInstructor(address _key, uint256 _age, string _fname, string _lname) onlyOwner public {
        var instructor = creator_instructor_map[_key];
        
        instructor.age = _age;
        instructor.fName = _fname;
        instructor.lName = _lname;
        
        keys.push(_key) -1;
    }
    
    function getKeys() view public returns(address[]) {
        return keys;
    }
    
    function getInstructor(address _key) view public returns (uint256, string, string) {
        return (creator_instructor_map[_key].age, creator_instructor_map[_key].fName, creator_instructor_map[_key].lName);
    }
    
    function getKeysCount() view public returns (uint256) {
        return keys.length;
    }
}