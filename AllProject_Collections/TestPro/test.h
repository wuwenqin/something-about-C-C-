//
// Created by 吴文钦 on 2022/6/10.
//
/**
 * 头文件，接口类
 */
#ifndef TESTPRO_TEST_H
#define TESTPRO_TEST_H

class Test{
private:
    //隐藏i ，通过pimpl用法隐藏细节实现
    // int i;
    class Number;
    Number *number;
public:
    Test(int x) ;
    ~Test();  //析构函数就是对象在销毁的时候自动调用的的
    int print_i();
};


#endif //TESTPRO_TEST_H
