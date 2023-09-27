---@meta

--- Get the values of integer input registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failure | List of register values: Success
function get_profinet_int_input_registers(addr, size) end

--- Get the values of integer output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failure | List of register values: Success
function get_profinet_int_output_registers(addr, size) end

--- Get the values of float input registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failure | List of register values: Success
function get_profinet_float_input_registers(addr, size) end

--- Get the values of float output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@return nil | number[] ... Empty: Failure | List of register values: Success
function get_profinet_float_output_registers(addr, size) end

--- Set the values of integer output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@param value integer[] List of register values.
---@return ret ... 
function set_profinet_int_output_registers(addr, size, value) end

--- Set the values of float output registers.
---@param addr integer Starting address of the registers.
---@param size integer Number of registers. Note: The sum of addr and size should be less than or equal to 32.
---@param value number[] List of register values.
---@return ret ... 
function set_profinet_float_output_registers(addr, size, value) end
