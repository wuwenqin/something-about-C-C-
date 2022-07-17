# 					C++必知必会

> 本章节主要是针对 C++的常用语言特性和类库的讲解。

 

## 第一小节

#### 	1.1  C++ RAII 惯用法

##### 		1.1.1 练习

​		练习：在Windows系统上写一个C++程序，用该程序实现一个简单的**服务**，在客户端连接上来时，给客户端发一条 “Hello World”消息后关闭连接，不用保证客户端一定能收到。

​		

解析：这是一个TCP网络通信的基本流程。那么其程序实现流程如下。

(1) 创建socket

(2) 绑定IP地址和端口号

(3) 在该IP地址和端口号上启动监听，循环等待客户端连接的到来，在客户端连接成功后，发送一条响应信息，并断开连接



> 在Windows上使用网络通信API之前，需要使用 WSAStartup函数初始化socket库；在程序结束时需要使用 WSACleanup函数清理socket库

​	

##### 1.1.2 RAII惯用法







p.s: 代码上，类似于Java的类创建，只是C++中需要 **自主释放对象内存**(在C++中称为**RAII惯用法**)。



**小结**：在C++中，**资源泄露和死锁等问题**具有非常强的隐蔽性，如果在生产环境中出现这些问题，则难以复现、排查和定位问题。理解并熟练使用**RAII惯用法**不仅能让我们的代码更加简洁和模块化，也能让我们在开发阶段避免一部分资源泄漏和死锁问题。





### 1.2pimpl惯用法

pimpl 是 point to implementor 的缩写。

意义：将实现细节从头文件中分离，进一步隐藏文件中的private成员变量或成员函数。（**指针隐藏，或使用智能指针**）

实现原理：公有类通过一个私有指针指向隐藏的实现类，是促进接口和实现分离的重要机制。



实现模板：

test.h

```c++

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

```

test.cpp

```c++

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


```

main.cpp

```c++
#include <iostream>

#include "test.h"
using namespace std;

int main(){
    Test T1(10);
    cout<<T1.print_i()<<endl;

}
```

