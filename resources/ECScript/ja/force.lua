---@meta

--- 外部トルクデータ伝送の開始をマークします。
---@return result ...
function start_push_force() end

--- 外部トルクデータを伝送します。
---@param index integer
---@param torque_arry torque
---@return result ...
function push_external_force(index, torque_arry) end

--- 外部トルク伝送を停止します。
---@return result ...
function stop_external_force() end

--- 現在のトルクデータのソースを取得します。
---@return forceCtrlMode ...
function get_force_ctrl_mode() end

--- 外部力センサーに基づいたTCPおよびトルク情報を取得します。
---@return nil|number[]
function get_tcp_force_by_sensor() end
