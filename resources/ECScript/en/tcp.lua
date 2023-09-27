---@meta

--- Initialize a TCP server.
---@param port integer Port number.
function init_tcp_server(port) end

--- Check if a client is connected to the server.
---@param IP string Client IP address.
---@param port? integer TCP server port number.
---@return ret ... 1: IP address in the parameter is connected to the TCP server, -1: Not connected.
function is_client_connected(IP, port) end

--- Receive data from a client.
---@param IP string Client IP address.
---@param hex? integer Optional parameter, whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@param port? integer TCP server port number.
---@param recv_timeout? number Optional parameter, timeout in seconds.
---@return number ret Number of received data | -1: Reception error
---@return string recv Received data
function server_recv_data(IP, hex, port, recv_timeout) end

--- Send data to a client.
---@param IP string Client IP address.
---@param msg string Message to send.
---@param hex? integer Optional parameter, whether the data to be sent is in hexadecimal format (1 for hexadecimal, default is 0).
---@param port? integer TCP server port number.
---@return number ... Number of sent data | -1: Sending failed
function server_send_data(IP, msg, hex, port) end

--- Connect to a server.
---@param IP string Server IP address.
---@param port integer Port number.
---@return number ... 1: Connection successful | 0: Not connected
function connect_tcp_server(IP, port) end

--- Receive data from the server.
---@param IP string IP address.
---@param recv_timeout? integer Timeout in seconds.
---@param hex? integer Whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@param port? integer Optional parameter, port number.
---@return number ret Number of received data | -1: Reception error, needs reconnection
---@return string recv Received data
function client_recv_data(IP, recv_timeout, hex, port) end

--- Set an overall timeout.
---@param IP string IP address.
---@param recv_timeout integer Timeout in seconds.
---@return ret ... 
function client_set_recv_timeout(IP, recv_timeout) end

--- Clear the client buffer.
---@param IP string Server IP address.
---@param port integer Server port number.
function client_flush(IP, port) end

--- Send data to the server.
---@param IP string IP address.
---@param msg string Data to send to the server.
---@param hex integer Whether the data to send is in hexadecimal format (1 for hexadecimal, default is 0).
---@param port? integer Optional parameter, port number.
---@return ret ... Length of data sent to the server | -1: Sending failed, needs reconnection
function client_send_data(IP, msg, hex, port) end

--- Disconnect TCP connection.
---@param IP string IP address.
---@param port? integer Optional parameter, port number (default disconnects all TCP connections).
function disconnect_tcp_server(IP, port) end
