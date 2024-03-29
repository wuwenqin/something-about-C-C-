# C++对C的扩展

学习书籍： 《C++基础与提高》

## 2.1 类型增强

### 2.1.1 类型检查更严格

```cpp
int main()
{
    const int a = 100;
    int b = a;
    const int *pa = &a;
    int *pb = pa;  //在这里报错
    return 0;
}
```

把一个 const 类型的指针赋给非 const 类型的指针。c 语言中可以通的过，但是在 c++中则编不过去。

如上，报错提示为： " error: cannot initialize a variable of type 'int *' with an lvalue of type 'const int *' "

### 2.1.2 布尔类型

c语言 **逻辑真假** 以0和非0作为判断。C++中则有了具体类型。

```cpp
int main()
{
    bool flag = true;
    if(flag != false)
    {
    printf("i know bool type now\n");
    }
    printf("bool size = %d\n",sizeof(bool));
    return 0;
}
```

输出为：

```cpp
i know bool type now
bool size = 1
```

### 2.1.3 真正的枚举

    c 语言中枚举本质就是整型，枚举变量可以用任意整型赋值。而 c++中枚举变量，只能用被枚举出来的元素初始化。

```cpp
enum season {SPR,SUM,AUT,WIN};
int main()
{
enum season s = SPR;
s = 0;  //报错位置
return 0;
}
```

```cpp
报错提示为： error: assigning to 'enum season' from incompatible type 'int'
```

解决办法：不要使用0等数字，使用enum枚举中对应的元素。

### 2.1.4 表达式可以被赋值

```cpp
#include <iostream>
using namespace std;
int main(void)
{
int a,b = 5;
(a = b) = 10;
cout<<"a = "<<a<<" b = "<<b<<endl;
(a<b? a:b) = 200;
cout<<"a = "<<a<<" b = "<<b<<endl;
return 0;
}
```

输出为：

```cpp
a = 10 b = 5
a = 10 b = 200
```



## 2.2 输入和输出

c++的标准输入流和输出流 cin、cout。在头文件 iostream中定义。



### 2.2.1 设置域宽和位数

cout 默认输出 **6位**有效数据。**setprecision**() 可以设置有效位数。

**setprecision(n)<<setiosflags(ios::fixed)合用，可以设置小数点右边的位数。**

```cpp
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
printf("%c\n%d\n%f\n",'a',100,120.00);
printf("%5c\n%5d\n%6.2f\n",'a',100,120.00);
cout<<setw(5)<<'a'<<endl<<setw(5)<<100<<endl
<<setprecision(2)<<setiosflags(ios::fixed)<<120.00<<endl;
return 0;
}
```

输出为：

```cpp
a
100
120.000000
    a
  100
120.00
    a
  100
120.00
```



### 2.2.2 按进制输出

```cpp
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{

    int i =10;
    cout << i <<endl;
    cout << dec << i <<endl;
    cout << hex << i <<endl;
    cout << oct << i <<endl;
    cout << setbase(16) << i <<endl;
}
```

输出为:

```cpp
10
10
a
12
a
```



### 2.2.3 设置填充符

设置左右对齐：setiosflags(ios::left)  或ios::right

设置填充字符： setfill('ch')


















