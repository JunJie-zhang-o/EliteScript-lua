---@meta

--- RS-485インターフェースを開きます。
---@return result ...
function tci_open() end

--- TCIシリアルポートの設定を行います。
---@param speed integer ボーレート。
---@param bits integer データ長: 7/8。
---@param event string パリティ: "O"（奇数）、"N"（なし）、"E"（偶数）。
---@param stop integer ストップビット: 1/2。
---@return result ... 
function tci_setopt(speed, bits, event, stop) end

--- データを受信します。
---@param time_out integer タイムアウト（ミリ秒）。
---@param hex integer 受信データが16進数形式であるかどうか（16進数の場合は1、デフォルトは0）。
---@param len integer? オプションのパラメータ。受信するための希望の長さ。1024を超える場合、自動的に1024に設定されます。
---@return integer ret 0、-1: 読み取り失敗 | 受信したデータの長さ（すべて文字長に変換されます）。
---@return any recv_buff 受信したデータ
function tci_recv(time_out, hex, len) end

--- データを送信します。
---@param buff string 送信する文字列。
---@param hex integer 送信するデータが16進数形式であるかどうか（16進数の場合は1）。
---@return ret ...
function tci_send(buff, hex) end

--- TCIインターフェースを閉じます。
---@return result ... 
function tci_close() end

--- TCIバッファをクリアします。
function tci_flush() end
