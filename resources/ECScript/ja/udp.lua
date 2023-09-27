---@meta

--- UDPサーバーを初期化します。
---@param port integer ポート番号。
---@return ret ... 0以上: 成功
function init_udp_server(port) end

--- UDPクライアントデータを受信します。
---@param port integer サーバーポート番号。
---@param timeout number タイムアウト（秒単位）。
---@param hex integer オプションパラメータ。受信データが16進数形式かどうか（16進数の場合は1、デフォルトは0）。
---@return ret ret 0以上: 成功
---@return string recvbuff 受信したデータ
---@return string client_ip ソースクライアントIPアドレス
---@return integer client_port ソースクライアントポート番号
function  udp_server_recv_data(port, timeout, hex) end

--- UDPクライアントにデータを送信します。
---@param server_port integer サーバーポート番号。
---@param msg string クライアントに送信するデータ。
---@param client_port string ターゲットクライアントIP
---@param hex? integer オプションパラメータ。送信するデータが16進数形式かどうか（16進数の場合は1、デフォルトは0）。
---@return result ... 0以上: 成功
function udp_server_send_data(server_port, msg, client_port, client_ip, hex) end

--- UDPサーバーを閉じます。
---@param port? integer オプションパラメータ。サーバーポート番号。指定しない場合、すべてのUDPサーバーを閉じます。
---@return ret ... 0以上: 成功
function close_udp_server(port) end

--- UDPサーバーに接続します。
---@param port integer サーバーポート番号
---@param IP string ターゲットサーバーIPアドレス
---@return ret ... 0以上: 成功 | 0未満: 失敗
function connect_udp_server(port, IP) end

--- UDPサーバーからデータを受信します。
---@param port integer ターゲットサーバーポート。
---@param IP string ターゲットサーバーIPアドレス。
---@param timeout number タイムアウト（秒単位）。
---@param hex? integer オプションパラメータ。受信データが16進数形式かどうか（16進数の場合は1、デフォルトは0）。
---@return ret ret 0以上: 成功
---@return any recv 0未満: 失敗
function udp_client_recv_data(port, IP, timeout, hex) end

--- UDPサーバーにデータを送信します。
---@param port integer ターゲットサーバーポート。
---@param IP string ターゲットサーバーIPアドレス。
---@param msg string サーバーに送信するデータ。
---@param hex? integer オプションパラメータ。送信データが16進数形式かどうか（16進数の場合は1、デフォルトは0）。
---@return ret ... 0以上: 成功
function udp_client_send_data(port, IP, msg, hex) end

--- UDPサーバーから切断します。
---@param port? integer オプションパラメータ。ポート番号（すべてのUDP接続を切断するためのデフォルトのポート番号）。
---@param IP? string オプションパラメータ。ターゲットサーバーIPアドレス。
---@return ret ... 0以上: 成功
function disconnect_udp_server(port, IP) end
