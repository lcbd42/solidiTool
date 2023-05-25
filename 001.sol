// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Hello{

    string public hi = "Hello solidity";

    // 불리언 타입
    bool public b = false;
    bool public b1 = !false;
    bool public b2 = false || true; 
    bool public b3 = false && true; 
    bool public b4 = false == true;

    // bytes 1~32까지 가능
    bytes public bt = "0x12345678";
    bytes public bt2 = "STRING";

    // address 
    address public addr = 0xf8e81D47203A594245E36C48e151709F0C19fBe8;

    // int: -2^7 ~ 2^7-1
    int8 public it = -4;

    // uint: 0 ~ 2^8-1 (범위가 가장 커서 주로 사용)
    uint256 public uit = 12345678;

    // 1 ether == 10^9 Gwei == 10*18 wei
    uint256 public value1 = 1 ether;
    uint256 public value2 = 1 gwei;
    uint256 public value3 = 1 wei;

}