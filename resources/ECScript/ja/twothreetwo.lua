---@meta

--- RS-232インターフェースを開きます。
---@return result ...
function rs232_open() end

--- RS-232シリアルポートの設定を行います。
---@param speed integer ボーレート。
---@param bits dataBits データ長：7/8。
---@param event parityBits パリティ： "O"（奇数）、"N"（なし）、"E"（偶数）。
---@param stop stopBits ストップビット：1/2。
---@return result ... 0以上: 設定成功
function rs232_setopt(speed, bits, event, stop) end

--- データを受信します。
---@param time_out integer タイムアウト（ミリ秒）。
---@param hex integer 受信したデータが16進数形式であるかどうか（16進数の場合は1、デフォルトは0）。
---@param len integer? オプションのパラメータ、受信するための希望の長さ。1024を超える場合、自動的に1024に設定されます。
---@return integer ... 0、-1： 読み取り失敗 | 受信したデータの長さ（すべて文字長に変換されます）。
---@return any ... 受信したデータ
function rs232_recv(time_out, hex, len) end

--- データを送信します。
---@param buff string 送信する文字列。
---@param hex integer 送信するデータが16進数形式であるかどうか（16進数の場合は1）。
---@return ret ... 1: 送信成功
function rs232_send(buff, hex) end

--- RS-232インターフェースを閉じます。
---@return result ... 
function rs232_close() end

--- RS-232バッファをクリアします。
function rs232_flush() end
