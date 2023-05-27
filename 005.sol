// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
    2개 이상의 contract에 상속을 받을때 구현
*/
contract Father{
    uint256 public fatherMoney = 100;
    function getFatherName() public pure returns(string memory){
        return "KimJung";
    }
    function getMoney() public view virtual returns (uint256){
        return fatherMoney;
    }
}

contract Mother{
    uint256 public motherMoney = 500;
    function getMotherName() public pure returns(string memory){
        return "Leopard";
    }
    function getMoney() public view virtual returns (uint256){
        return motherMoney;
    }
}

contract Son is Father,Mother {
    function getMoney() view public override(Father,Mother) returns(uint256){
        return fatherMoney+motherMoney;
    }

}