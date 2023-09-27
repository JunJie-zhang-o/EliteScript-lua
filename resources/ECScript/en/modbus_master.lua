---@meta

--- Get a Modbus RTU handle.
---@param choose choose
---@param baud? integer 4800, 9600, ... Optional parameter, defaults to 4800 if not specified.
---@param parity? parityBits ASCII values 'E' (69), 'N' (78), 'O' (79). Optional parameter, defaults to 'N' (78) if not specified.
---@param data_bit? dataBits 8. Optional parameter, defaults to 8 if not specified.
---@param stop_bit? stopBits 1/2. Optional parameter, defaults to 1 if not specified.
---@return ctx ... Modbus handle
function modbus_new_rtu(choose, baud, parity, data_bit, stop_bit) end

--- Get a Modbus TCP handle.
---@param IP string IP address of the Modbus slave.
---@param port integer Port number of the Modbus slave.
---@return ctx ... Modbus handle
function modbus_new_tcp(IP, port) end

--- Connect to the Modbus handle.
---@param ctx ctx Handle created by TCP.
---@return result ... -1: Connection failed; Other: Normal
function modbus_connect(ctx) end

--- Close the Modbus handle.
---@param ctx ctx Handle created by TCP.
function modbus_close(ctx) end

--- Set the slave address.
---@param ctx ctx Modbus handle.
---@param slave_id integer Slave address.
---@return result ... -1: Error; Other: Normal
function modbus_set_slave(ctx, slave_id) end

--- Write a value to the specified register address.
---@param ctx ctx Modbus handle.
---@param reg integer Register address (in decimal).
---@param value integer Value.
---@return result ... -1: Error; Other: Normal
function modbus_write_register(ctx, reg, value) end

--- Read signal values from the specified register.
---@param ctx ctx Modbus handle.
---@param reg integer Register address (in decimal).
---@return result ret -1: Failed
---@return number|number[] value Value(s) read
function modbus_read_register(ctx, reg) end

--- Read signal values from the specified coils.
---@param ctx ctx Modbus handle.
---@param reg integer Coil address.
---@param len integer Number of coils (<128).
---@return number[] ... Table
function modbus_read_bits(ctx, reg, len) end

--- Write values to multiple coils.
---@param ctx ctx Modbus handle.
---@param reg integer Coil address.
---@param size integer Number of coils.
---@param value number[] Data to write to coils.
---@return result ... -1: Error; Other: Normal
function modbus_write_bits(ctx, reg, size, value) end

--- Write a value to the specified coil.
---@param ctx ctx Modbus handle.
---@param reg integer Coil address.
---@param value integer Data (1 or 0) to write to the coil.
---@return result ... -1: Error; Other: Normal
function modbus_write_bit(ctx, reg, value) end

--- Read input register values from Modbus.
---@param ctx ctx Modbus handle.
---@param addr integer Input register address.
---@return result ... -1: Error; Other: Normal
---@return number reg 0, 1: Normal
function modbus_read_input_register(ctx, addr) end

--- Write values to multiple registers.
---@param ctx ctx Modbus handle.
---@param reg integer Register address.
---@param size integer Number of registers.
---@param value number[] Data to write to registers.
---@return result ... -1: Error; Other: Normal
function modbus_write_registers(ctx, reg, size, value) end

--- Read values from multiple registers.
---@param ctx ctx Modbus handle.
---@param addr integer Register address.
---@param len integer Number of registers to read.
---@return result ... -1: Error; Other: Normal
---@return number[] ... Register value list: Successful
function modbus_read_registers(ctx, addr, len) end

--- Get the input coil status.
---@param ctx ctx Modbus handle.
---@param reg integer Coil address.
---@param len integer Number of coils (<=128).
---@return number[] ... Status of one or more input coils.
function modbus_read_input_bits(ctx, reg, len) end
