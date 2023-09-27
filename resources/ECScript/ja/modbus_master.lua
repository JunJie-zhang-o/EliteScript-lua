---@meta

--- Modbus RTUハンドルを取得します。
---@param choose choose
---@param baud? integer 4800、9600、... オプションパラメータ、指定しない場合はデフォルトで4800になります。
---@param parity? parityBits ASCII値 'E'（69）、'N'（78）、'O'（79）。 オプションパラメータ、指定しない場合はデフォルトで 'N'（78） になります。
---@param data_bit? dataBits 8。 オプションパラメータ、指定しない場合はデフォルトで8になります。
---@param stop_bit? stopBits 1/2。 オプションパラメータ、指定しない場合はデフォルトで1になります。
---@return ctx ... Modbusハンドル
function modbus_new_rtu(choose, baud, parity, data_bit, stop_bit) end

--- Modbus TCPハンドルを取得します。
---@param IP string ModbusスレーブのIPアドレス。
---@param port integer Modbusスレーブのポート番号。
---@return ctx ... Modbusハンドル
function modbus_new_tcp(IP, port) end

--- Modbusハンドルに接続します。
---@param ctx ctx TCPで作成されたハンドル。
---@return result ... -1：接続に失敗した場合。その他：正常
function modbus_connect(ctx) end

--- Modbusハンドルを閉じます。
---@param ctx ctx TCPで作成されたハンドル。
function modbus_close(ctx) end

--- スレーブアドレスを設定します。
---@param ctx ctx Modbusハンドル。
---@param slave_id integer スレーブアドレス。
---@return result ... -1：エラー。その他：正常
function modbus_set_slave(ctx, slave_id) end

--- 指定されたレジスタアドレスに値を書き込みます。
---@param ctx ctx Modbusハンドル。
---@param reg integer レジスタアドレス（10進数）。
---@param value integer 値。
---@return result ... -1：エラー。その他：正常
function modbus_write_register(ctx, reg, value) end

--- 指定されたレジスタから信号値を読み取ります。
---@param ctx ctx Modbusハンドル。
---@param reg integer レジスタアドレス（10進数）。
---@return result ret -1：失敗
---@return number|number[] value 読み取られた値
function modbus_read_register(ctx, reg) end

--- 指定されたコイルから信号値を読み取ります。
---@param ctx ctx Modbusハンドル。
---@param reg integer コイルアドレス。
---@param len integer コイル数（<128）。
---@return number[] ... テーブル
function modbus_read_bits(ctx, reg, len) end

--- 複数のコイルに値を書き込みます。
---@param ctx ctx Modbusハンドル。
---@param reg integer コイルアドレス。
---@param size integer コイル数。
---@param value number[] コイルに書き込むデータ。
---@return result ... -1：エラー。その他：正常
function modbus_write_bits(ctx, reg, size, value) end

--- 指定されたコイルに値を書き込みます。
---@param ctx ctx Modbusハンドル。
---@param reg integer コイルアドレス。
---@param value integer コイルに書き込むデータ（1または0）。
---@return result ... -1：エラー。その他：正常
function modbus_write_bit(ctx, reg, value) end

--- Modbusから入力レジスタ値を読み取ります。
---@param ctx ctx Modbusハンドル。
---@param addr integer 入力レジスタアドレス。
---@return result ... -1：エラー。その他：正常
---@return number reg 0、1：正常
function modbus_read_input_register(ctx, addr) end

--- 複数のレジスタに値を書き込みます。
---@param ctx ctx Modbusハンドル。
---@param reg integer レジスタアドレス。
---@param size integer レジスタ数。
---@param value number[] レジスタに書き込むデータ。
---@return result ... -1：エラー。その他：正常
function modbus_write_registers(ctx, reg, size, value) end

--- 複数のレジスタから値を読み取ります。
---@param ctx ctx Modbusハンドル。
---@param addr integer レジスタアドレス。
---@param len integer 読み取るレジスタの数。
---@return result ... -1：エラー。その他：正常
---@return number[] ... レジスタ値リスト：成功
function modbus_read_registers(ctx, addr, len) end

--- 入力コイルの状態を取得します。
---@param ctx ctx Modbusハンドル。
---@param reg integer コイルアドレス。
---@param len integer コイルの数（<=128）。
---@return number[] ... 1つまたは複数の入力コイルの状態
function modbus_read_input_bits(ctx, reg, len) end
