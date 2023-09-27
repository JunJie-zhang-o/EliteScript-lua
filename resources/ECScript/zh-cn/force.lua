---@meta

---标记外部力矩数据传输开始
---@return result ...
function start_push_force() end

---传递外部力矩数据
---@param index integer
---@param torque_arry torque
---@return result ...
function push_external_force(index, torque_arry) end

---停止外部力矩传输
---@return result ...
function stop_external_force() end

---获取当前力矩数据的来源
---@return forceCtrlMode ...
function get_force_ctrl_mode() end

---获取基于外部力传感器TCP及力矩信息
---@return nil|number[]
function get_tcp_force_by_sensor() end
