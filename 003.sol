// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
    instance화 하는 방식은 가스 가성비가 나쁨, 패턴을 활용해서 개선해야함 
*/

contract A{
    uint256 public a = 5;

    function changeA(uint256 _value) public {
        a = _value;
    }
}

contract B{

    A instance = new A();
    
    // ()를 붙여줘야지 값이 있을때 리턴됨
    // 기존 값을 변경하지 않기 때문에 view를 사용
    function get_a() public view returns(uint256){
        return instance.a();
    }
   
    function changeA2(uint256 _value) public {
        instance.changeA(_value + 10);
    }
}

contract Constructor_ex{

    string public name;
    uint256 public age;

    // constructor가 있는 contract는 deploy가 안됨
    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

contract Constructor_ex2{

    Constructor_ex instance = new Constructor_ex("Allice", 52);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }
    function get() public view returns(string memory, uint256){
        return (instance.name(),instance.age());
    }
}

