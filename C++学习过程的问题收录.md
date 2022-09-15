# 收录集

## 1.VSCode 运行 C++程序时，终端显示乱码

​    解析：这是第一次安装VSCode，所以在程序内部是将终端默认为GBK的编码，故需要修改其编码格式。

在VSCode中打开  **文件->首选项->设置**，输入setting，寻找到setting.json并在其中进行修改。

```json
"terminal.integrated.profiles.windows": {
        "PowerShell": {
          "source": "PowerShell", //一般推荐使用powershell
          "overrideName": true,
          "args": ["-NoExit", "/c", "chcp 65001"],
          "icon": "terminal-powershell",
          "env": {
            "TEST_VAR": "value"
          }
        }
      },
    "terminal.integrated.defaultProfile.windows": "PowerShell",
```
