// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
    맵핑
    .length 기능은 없음
*/

contract mapping_ex{

    // key값 타입 => value값 타입
    mapping(uint256=>uint256) private ageList;
    mapping(string=>uint256) private priceList;
    mapping(uint256=>string) private nameList;

    function setAgeList(uint256 _index, uint256 _age) public {
        ageList[_index] = _age;
    }

    function setPriceList(string memory _itemName, uint256 _price) public {
        priceList[_itemName] = _price;
    }

    function setNameList(uint256 _index, string memory _name) public {
        nameList[_index] = _name;
    }

    function getAge(uint256 _index) public view returns(uint256){
        return ageList[_index];
    }

    function getPriceList(string memory _index) public view returns(uint256){
        return priceList[_index];
    }

    function getName(uint256 _index) public view returns(string memory){
        return nameList[_index];
    }
}
