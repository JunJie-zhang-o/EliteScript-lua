---@meta

---获取int型输入寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@return nil | number[] ... 空:失败 | 寄存器值列表:成功
function get_profinet_int_input_registers(addr,size) end

---获取int型输出寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@return nil | number[] ... 空:失败 | 寄存器值列表:成功
function get_profinet_int_output_registers(addr,size) end

---获取float型输入寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@return nil | number[] ... 空:失败 | 寄存器值列表:成功
function get_profinet_float_input_registers(addr,size) end

---获取float型输出寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@return nil | number[] ... 空:失败 | 寄存器值列表:成功
function get_profinet_float_output_registers(addr,size) end

---设置int型输出寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@param value integer[] 寄存器值列表
---@return ret ... 
function set_profinet_int_output_registers(addr,size,value) end

---设置float型输出寄存器的值
---@param addr integer 寄存器起始地址
---@param size integer 寄存器个数 注:addr与size的和应小于等于32
---@param value number[] 寄存器值列表
---@return ret ... 
function set_profinet_float_output_registers(addr,size,value) end

