# G++基本用法  



## objdump查看obj文件

前言：生成一个可执行文件需经过两个阶段：**编译（将程序的源代码转译成电脑能理解的二进制机器代码obj）、链接(obj文件与所需库链接，形成可执行文件)**。

**编译阶段**将**生成obj文件**。(该阶段有三个步骤：**预处理、编译、汇编**)

链接阶段则有两个步骤： 对obj文件的合并，符号表合并后，对符号进行解析，分配虚拟地址；对符号进行重定位。

![C++程序编译和链接](C:\Users\AWU\Desktop\C++Study\图片收录\C++程序编译和链接.png)



### 1.g++编译过程

​		执行编译需经过四个步骤：预处理、转成汇编文件、转成目标文件、链接。

p.s:  **-o 选项指定输出的文件名**

​		① 预处理：对c/c++源文件中的宏定义、头文件等进行处理，生成.i文件。

```c++
g++ -E 源文件 -o 文件名.i
```



​		② 转为汇编。（使用-S 选项，将 .i文件转译为.s文件）

```c++
g++ -S 文件.i -o 文件名.s
```



​		③ 汇编文件转为目标文件obj

```c++
g++ -c 文件.s -o 文件.o
```



​		④ 链接：将目标文件obj与所需库进行链接，生成可执行文件。

```c++
ld -e main 文件.o   //main为入口函数
```



以上是编译的具体过程。 也可通过

```c++
g++ 文件名.cpp -o 文件名
```

直接生成可执行文件。



### 2.使用objdump查看obj文件(.o)

![objdump命令](C:\Users\AWU\Desktop\C++Study\图片收录\objdump命令.png)



```c++
objdump -D //反汇编
  -a, --archive-headers    Display archive header information
  -f, --file-headers       Display the contents of the overall file header
  -p, --private-headers    Display object format specific file header contents
  -P, --private=OPT,OPT... Display object format specific contents
  -h, --[section-]headers  Display the contents of the section headers
  -x, --all-headers        Display the contents of all headers
  -d, --disassemble        Display assembler contents of executable sections
  -D, --disassemble-all    Display assembler contents of all sections
  -S, --source             Intermix source code with disassembly
  -s, --full-contents      Display the full contents of all sections requested
  -g, --debugging          Display debug information in object file
  -e, --debugging-tags     Display debug information using ctags style
  -G, --stabs              Display (in raw form) any STABS info in the file
  -W[lLiaprmfFsoRtUuTgAckK] or
  --dwarf[=rawline,=decodedline,=info,=abbrev,=pubnames,=aranges,=macro,=frames,
          =frames-interp,=str,=loc,=Ranges,=pubtypes,
          =gdb_index,=trace_info,=trace_abbrev,=trace_aranges,
          =addr,=cu_index,=links,=follow-links]
                           Display DWARF info in the file
  -t, --syms               Display the contents of the symbol table(s)
  -T, --dynamic-syms       Display the contents of the dynamic symbol table
  -r, --reloc              Display the relocation entries in the file
  -R, --dynamic-reloc      Display the dynamic relocation entries in the file
  @<file>                  Read options from <file>
  -v, --version            Display this program's version number
  -i, --info               List object formats and architectures supported
  -H, --help               Display this information

```















