---@meta

--- Mark the beginning of external torque data transmission.
---@return result ...
function start_push_force() end

--- Transmit external torque data.
---@param index integer
---@param torque_arry torque
---@return result ...
function push_external_force(index, torque_arry) end

--- Stop external torque transmission.
---@return result ...
function stop_external_force() end

--- Get the source of current torque data.
---@return forceCtrlMode ...
function get_force_ctrl_mode() end

--- Get TCP and torque information based on external force sensor.
---@return nil|number[]
function get_tcp_force_by_sensor() end
