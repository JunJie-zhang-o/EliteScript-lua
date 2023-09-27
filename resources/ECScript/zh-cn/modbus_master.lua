---@meta


---获取modbusrtu句柄
---@param choose choose
---@param baud? integer 4800,9600...可选参数,不写默认为4800
---@param parity? parityBits ‘E’,‘N’,‘O’的ASCII码值69,78,79,可选参数,不写默认为78
---@param data_bit? dataBits 8,可选参数,不写默认8
---@param stop_bit? stopBits 1/2,可选参数,不写默认1
---@return ctx ... modbus句柄
function modbus_new_rtu(choose, baud, parity, data_bit, stop_bit) end

---获取modbustcp句柄
---@param IP string modbus slave的IP地址
---@param port integer modbus slave的端口号
---@return ctx ... modbus句柄
function modbus_new_tcp(IP, port) end

---连接modbus句柄
---@param ctx ctx tcp创建的句柄
---@return result ... -1:连接失败 其他:正常
function modbus_connect(ctx) end

---关闭modbus句柄
---@param ctx ctx tcp创建的句柄
function modbus_close(ctx) end

---设置slave地址
---@param ctx ctx Modbus句柄
---@param slave_id integer slave地址
---@return result ... -1:出错 其他:正常
function modbus_set_slave(ctx, slave_id) end

---modbus往指定寄存器地址写入值
---@param ctx ctx Modbus句柄
---@param reg integer 寄存器地址（为十进制）
---@param value integer 值
---@return result ... -1:出错 其他:正常
function modbus_write_register(ctx, reg, value) end

---modbus从指定寄存器读取信号值
---@param ctx ctx Modbus句柄
---@param reg integer 寄存器地址（为十进制）
---@return result ret -1:失败
---@return number|number[] value 返回读到的值
function modbus_read_register(ctx, reg) end

---modbus从指定线圈读取信号值
---@param  ctx ctx Modbus句柄
---@param reg integer 线圈地址
---@param len integer 线圈个数(<128)
---@return number[] ... table
function modbus_read_bits(ctx, reg, len) end

---modbus往指定多个线圈写入值
---@param ctx ctx Modbus句柄
---@param reg integer 线圈地址
---@param size integer 数量
---@param value number[] 写入线圈的数据
---@return result ... -1:出错 其他:正常
function modbus_write_bits(ctx, reg, size, value) end

---modbus往指定线圈写入值
---@param ctx ctx Modbus句柄
---@param reg integer 线圈地址
---@param value integer 写入线圈的数据1或0
---@return result ... -1:出错 其他:正常
function modbus_write_bit(ctx, reg, value) end

---modbus读input寄存器值
---@param ctx ctx Modbus句柄
---@param addr integer input register地址
---@return result ... -1:出错 其他:正常
---@return number reg 0,1:正常
function modbus_read_input_register(ctx, addr) end

---modbus往指定多个寄存器地址写入值
---@param ctx ctx Modbus句柄
---@param reg integer 寄存器地址
---@param size integer 数量
---@param value number[] 写入寄存器的数据
---@return result ... -1:出错 其他:正常
function modbus_write_registers(ctx, reg, size, value) end

---读取多个寄存器的值
---@param ctx ctx Modbus句柄
---@param addr integer 寄存器地址
---@param len integer 读取长度
---@return result ... -1:出错 其他:正常
---@return number[] ... 寄存器值列表:成功
function modbus_read_registers(ctx, addr, len) end

---获取输入线圈状态
---@param ctx ctx Modbus句柄
---@param reg integer 线圈地址
---@param len integer 线圈个数 (<=128)
---@return number[] ... 单个或多个输入线圈的状态
function modbus_read_input_bits(ctx, reg, len) end
