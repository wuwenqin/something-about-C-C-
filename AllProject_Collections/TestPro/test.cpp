//
// Created by 吴文钦 on 2022/6/10.
//

/**
 * 实现类
 */

#include "test.h"

class Test::Number{
public:
    int i;
};

Test::Test(int x) {
    number=new Number();  //实例化
    number-> i = x;

}

//释放空间
Test::~Test() {
    delete number;
}


int Test::print_i() {
    return number->i;
}

