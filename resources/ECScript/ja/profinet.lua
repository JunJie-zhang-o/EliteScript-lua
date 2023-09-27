---@meta

--- 整数入力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空：失敗 | レジスタ値のリスト：成功
function get_profinet_int_input_registers(addr, size) end

--- 整数出力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空：失敗 | レジスタ値のリスト：成功
function get_profinet_int_output_registers(addr, size) end

--- 浮動小数点入力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空：失敗 | レジスタ値のリスト：成功
function get_profinet_float_input_registers(addr, size) end

--- 浮動小数点出力レジスタの値を取得します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@return nil | number[] ... 空：失敗 | レジスタ値のリスト：成功
function get_profinet_float_output_registers(addr, size) end

--- 整数出力レジスタの値を設定します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@param value integer[] レジスタ値のリスト。
---@return ret ... 
function set_profinet_int_output_registers(addr, size, value) end

--- 浮動小数点出力レジスタの値を設定します。
---@param addr integer レジスタの開始アドレス。
---@param size integer レジスタの数。注意：addrとsizeの合計は32以下である必要があります。
---@param value number[] レジスタ値のリスト。
---@return ret ... 
function set_profinet_float_output_registers(addr, size, value) end
