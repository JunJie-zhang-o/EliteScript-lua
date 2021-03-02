# 修改日志	Change log

### 0.1.1	2021.02.22

- 添加自定义函数块

```lua
--字符串转16进制
--如1234ABCD转为\\x12\\x34\\xAB\\xCD
------------------------------------------------------------------------------------------------------------
--使用方法：
	func_str2hex
```

```lua
--将16进制串转换为字符串
--如\\x12\\x34\\xAB\\xCD”转为“1234ABCD
--使用方法：
	func_hex2str
```

```lua
-- 数据收发监控
-- 使用前需声明一个Counter_B数组，并初始化其值
-- 如：Counter_B={0,0,0,0,0}
-- Counter传入的值小于0，会将B变量从0开始初始化 Counter_B数量 位
-- Counter传入的值大于0，会将对应的B变量加1
--------------------------------------------------------------------------------------------------------------使用方法：
	func_Counter
```



### 0.1.0	2021.01.17

- 补充部分lua自带指令

  Added some lua with instructions

- 添加依赖，实现高亮

  Add dependent, with standard lua switch

- 切换语言模式，可以编写elite_lua脚本和lua脚本

  Switch the language mode, you can write elite_lua scripts and lua script

### 0.0.1	2021.01.03

- 添加lua指令

  Add lua instruction