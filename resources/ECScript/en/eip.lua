---@meta

--- Get the values of integer input registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failed | Register value list: Successful
function get_eip_int_input_registers(addr, size) end

--- Get the values of integer output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failed | Register value list: Successful
function get_eip_int_output_registers(addr, size) end

--- Get the values of float input registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failed | Register value list: Successful
function get_eip_float_input_registers(addr, size) end

--- Get the values of float output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failed | Register value list: Successful
function get_eip_float_output_registers(addr, size) end

--- Set the values of integer output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@param value integer[] Register value list.
---@return ret ...
function set_eip_int_output_registers(addr, size, value) end

--- Set the values of float output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@param value number[] Register value list.
---@return ret ...
function set_eip_float_output_registers(addr, size, value) end
