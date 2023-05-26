// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract basic{
    uint256 public a = 3;
    function changeA() public {
        a = 5;
    }

    // parameter 있고, return 값 없음
    function changeA1(uint256 _value) public {
        a = _value;
    }

    // paramemter 있고, return 값 있음
    function changeA2(uint256 _value) public returns(uint256){
        a = _value;
        return a;
    }

    // public: 모든곳에서 접근 가능
    uint256 public b = 5;

    // private: contract 내에서만 접근 가능
    uint256 private b1 = 6;

    // external: 자기 자신이 정의된 contract를 제외한 모든곳에서 접근 가능
    // internal: private처럼 오직 internal이 정의된 contract내 에서만 접근 가능하고, internal contract <- internal contract child contract
}


contract public_ex{
    uint256 public a = 3;

    function changeA(uint256 _value) public {
        a = _value;
    }

    function get_a() view public returns (uint256){
        return a;
    }
}

contract public_ex2 {
    
    public_ex instance = new public_ex();
    
    function changeA2(uint256 _value) public {
        instance.changeA(_value+10);
    }

    function use_public_example_a() view public returns (uint256){
        return instance.get_a();
    }
}

contract view_pure_ex {
    uint256 public a = 1;

    // view: function 밖 변수들을 읽을 수 있으나 변경 불가능
    function read_a1() public view returns(uint256){
        return a+2;
    }

    // pure: function 밖의 변수들을 읽지 못하고 변경도 불가능
    function read_b() public pure returns(uint256){
        uint256 b = 1;
        return b+3;
    }

    // pure와 view 둘 다 사용 안할때: function 밖의 변수들을 읽어서 변경해야함
    function read_a2() public returns(uint256){
        a = 13;
        return a;
    }
}

/*
    storage: 대부분의 변수, 함수들이 저장되며, 영속적으로 저장되어 가스 비용이 비쌈
    memory: 함수의 파라미터, 리턴값, 래퍼런스 타입이 주로 저장이 됨, 영속적이지 않고 함수내에서만 유효하기 때문에 가스 비용이 저렴함
*/
contract memory_string_ex{

     // 기본 데이터 타입은 memory를 써줄 필요 없음
    function get_uint(uint256 _ui) public pure returns(uint256){
        return _ui;
    }

    // string은 기본 데이터 타입이 아니라서 명시적으로 써줘야 함
    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }
}
