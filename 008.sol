// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;


/*
    배열: 선언, push, pop, delete, change, length, get
*/
contract array_ex{

    uint256[] public ageArray;
    uint256[10] public ageFixedSizeArray;
    string[] public nameArray = ["A","B","C"];

    function AgePush(uint256 _age) public {
        ageArray.push(_age);
    }

    function AgePop() public {
        ageArray.pop();
    }

    // 삭제한 값을 디폴트 값인 0으로 변경한다. 길이는 변하지 않는다
    function AgeDelete(uint256 _index) public {
        delete ageArray[_index];
    }

    function AgeChange(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }

    function AgeLength() public view returns(uint256){
        return ageArray.length;
    }

    function AgeGet(uint256 _index) public view returns(uint256){
        return ageArray[_index];
    }


}