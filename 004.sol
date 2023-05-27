// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Father{
    string public familyName= "Kim";
    string public givenName = "Jung";
    uint256 public money = 100;

    constructor(string memory _givenName) public {
        givenName = _givenName;
    }

    function getFamilyName() view public returns (string memory){
        return familyName;
    }

    function getGivenName() view public returns (string memory){
        return givenName;
    }

    // virtual: 오버라이딩
    function getMoney() view public virtual returns (uint256){
        return money;
    }
}

// 상속받고 생성자를 통해 변수값 변경
contract Son is Father("James"){
    uint256 public earning = 0;

    function work() public {
        earning += 100;
    }

    // override; 오버라이딩
    function getMoney() view public override returns (uint256){
        return money+earning;
    }
}


