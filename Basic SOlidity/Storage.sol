pragma solidity ^0.6.0;
contract simpleStorage{

    uint256 favoriteNumber;
    bool favoriteBool;
  

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people; 


    function store(uint256 _favoriteNumber) public returns(uint){
        favoriteNumber = _favoriteNumber;
    }

    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
      
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
    }

}