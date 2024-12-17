// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Profile{

    struct ProfileStruct{
      string name;
      uint age;
      string location;
      uint weight;
    }
    mapping(uint256 => ProfileStruct) private  profile;

    uint256 public count;

    function createProfile(string memory _name, uint _age, string memory _location, uint _weight)public  returns(string memory)  {

    profile[count] = ProfileStruct({
        name: _name,
        age:_age,
        location: _location,
        weight:_weight
    });
    count++;

    return "Success uploading users data";
    

    }
    function viewProfile(uint256 user)public view returns (string memory, uint256, string memory, uint256){
      return (profile[user].name, profile[user].age, profile[user].location, profile[user].weight);


    }
  
    
}