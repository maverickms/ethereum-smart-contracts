// coded in remix.ethereum.org

pragma solidity ^0.4.18;

contract Courses {
    struct Instructor {
        uint256 age;
        string fName;
        string lName;
    }
    
    mapping (address => Instructor) creator_instructor_map;
    address[] creators;
    
    function addInstructor(address _creator, uint256 _age, string _fname, string _lname) public {
        var instructor = creator_instructor_map[_creator];
        
        instructor.age = _age;
        instructor.fName = _fname;
        instructor.lName = _lname;
        
        creators.push(_creator) -1;
    }
    
    function getCreators() view public returns(address[]) {
        return creators;
    }
    
    function getInstructor(address _creator) view public returns (uint256, string, string) {
        return (creator_instructor_map[_creator].age, creator_instructor_map[_creator].fName, creator_instructor_map[_creator].lName);
    }
    
    function getCreatorsCount() view public returns (uint256) {
        return creators.length;
    }
}