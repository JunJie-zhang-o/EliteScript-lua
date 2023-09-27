---@meta

--- 整数型の入力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空: 失敗 | レジスタの値リスト: 成功
function get_eip_int_input_registers(addr, size) end

--- 整数型の出力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空: 失敗 | レジスタの値リスト: 成功
function get_eip_int_output_registers(addr, size) end

--- 浮動小数点数型の入力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空: 失敗 | レジスタの値リスト: 成功
function get_eip_float_input_registers(addr, size) end

--- 浮動小数点数型の出力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空: 失敗 | レジスタの値リスト: 成功
function get_eip_float_output_registers(addr, size) end

--- 整数型の出力レジスタの値を設定します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@param value integer[] レジスタの値リスト。
---@return ret ...
function set_eip_int_output_registers(addr, size, value) end

--- 浮動小数点数型の出力レジスタの値を設定します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注：addrとsizeの合計は32以下である必要があります。
---@param value number[] レジスタの値リスト。
---@return ret ...
function set_eip_float_output_registers(addr, size, value) end
