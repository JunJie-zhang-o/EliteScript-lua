# 修改日志	Change log

## 1.1.0

`2023.11.05`

- Add SFTP extension
- Remove EliteScript_lua File Type
- 

## 1.0.0

`2023.09.30`

- 内置Elite Lua 脚本库,可以在完整的lua语言服务器中进行使用

## 0.1.8

`2022.07.20`

- 接口添加

  - modbus_read_bits
  - modbus_write_bits
  - modbus_write_bit
  - modbus_read_input_register
  - modbus_write_registers
  - modbus_read_registers
  - modbus_read_input_bits
  - get_profinet_int_input_registers
  - get_profinet_int_output_registers
  - get_profinet_float_input_registers
  - get_profinet_float_output_registers
  - set_profinet_int_output_registers
  - set_profinet_float_output_registers

## 0.1.7

`2022.05.01`

- 不同的语言模式下支持不同的自定义代码块
- 在lua语言模式下，定义全局的艾利特机器人的lua接口函数

## 0.1.6

`2022.03.11`

- 修复一些问题

## 0.1.5

`2022.01.26`

- 添加新版本适配的接口
- 添加自定义函数块

  func_Hex2bin

  func_SignInt32_2_Dec

  func_Euler_2_Quaternons

  func_Quaternons_2_Matrix

  func_matrix_2_Euler

  func_Quaternons_2_Euler
- 添加示例代码块

  example_tcp_client

  example_tcp_server

## 0.1.4

`2021.03.15`

- 添加自定义函数块

  func_M2int16

  func_M2float32

  func_string.split

## 0.1.1

`2021.02.22`

- 添加自定义函数块

  func_str2hex

  func_hex2str

  func_Counter

## 0.1.0

`2021.01.17`

- 补充部分lua自带指令

  Added some lua with instructions
- 添加依赖，实现高亮

  Add dependent, with standard lua switch
- 切换语言模式，可以编写elite_lua脚本和lua脚本

  Switch the language mode, you can write elite_lua scripts and lua script

## 0.0.1

`2021.01.03`

- 添加lua指令

  Add lua instruction
