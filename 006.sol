// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

/*
    super
*/

contract Father{
    event FatherName(string name);

    function who() public virtual {
        emit FatherName("KimDaeHo");
    }
}

contract Son is Father{
    event sonName(string name);

    function who() public override {
       
        // super.who() == emit FatherName("KimDaeHo");. 부모 contraact의 요소의 데이터가 많을 경우 유용하다
        super.who();
        emit sonName("KimJin");
    }
}


