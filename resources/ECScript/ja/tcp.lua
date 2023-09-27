---@meta

--- TCPサーバーを初期化します。
---@param port integer ポート番号。
function init_tcp_server(port) end

--- クライアントがサーバーに接続しているかどうかを確認します。
---@param IP string クライアントのIPアドレス。
---@param port? integer TCPサーバーのポート番号。
---@return ret ... 1：パラメータのIPアドレスがTCPサーバーに接続されています、-1：未接続
function is_client_connected(IP, port) end

--- クライアントからデータを受信します。
---@param IP string クライアントのIPアドレス。
---@param hex? integer オプションのパラメータ、受信したデータが16進数形式であるかどうか（16進数の場合は1、デフォルトは0）。
---@param port? integer TCPサーバーのポート番号。
---@param recv_timeout? number オプションのパラメータ、タイムアウト（秒単位）。
---@return number ret 受信したデータの数 | -1：受信エラー
---@return string recv 受信したデータ
function server_recv_data(IP, hex, port, recv_timeout) end

--- クライアントにデータを送信します。
---@param IP string クライアントのIPアドレス。
---@param msg string 送信するメッセージ。
---@param hex? integer オプションのパラメータ、送信するデータが16進数形式であるかどうか（16進数の場合は1、デフォルトは0）。
---@param port? integer TCPサーバーのポート番号。
---@return number ... 送信したデータの数 | -1：送信に失敗
function server_send_data(IP, msg, hex, port) end

--- サーバーに接続します。
---@param IP string サーバーのIPアドレス。
---@param port integer ポート番号。
---@return number ... 1：接続成功 | 0：未接続
function connect_tcp_server(IP, port) end

--- サーバーからデータを受信します。
---@param IP string IPアドレス。
---@param recv_timeout? integer タイムアウト（秒単位）。
---@param hex? integer 受信したデータが16進数形式であるかどうか（16進数の場合は1、デフォルトは0）。
---@param port? integer オプションのパラメータ、ポート番号。
---@return number ret 受信したデータの数 | -1：受信エラー、再接続が必要
---@return string recv 受信したデータ
function client_recv_data(IP, recv_timeout, hex, port) end

--- 全体的なタイムアウトを設定します。
---@param IP string IPアドレス。
---@param recv_timeout integer タイムアウト（秒単位）。
---@return ret ... 
function client_set_recv_timeout(IP, recv_timeout) end

--- クライアントバッファをクリアします
