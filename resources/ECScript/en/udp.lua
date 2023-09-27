---@meta

--- Initialize the UDP server.
---@param port integer Port number.
---@return ret ... Greater than or equal to 0: Success
function init_udp_server(port) end

--- Receive UDP client data.
---@param port integer Server port number.
---@param timeout number Timeout in seconds.
---@param hex integer Optional parameter. Whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@return ret ret Greater than or equal to 0: Success
---@return string recvbuff Received data
---@return string client_ip Source client IP address
---@return integer client_port Source client port number
function  udp_server_recv_data(port, timeout, hex) end

--- Send data to UDP clients.
---@param server_port integer Server port number.
---@param msg string Data to send to clients.
---@param client_port string Target client IP
---@param hex? integer Optional parameter. Whether the data to be sent is in hexadecimal format (1 for hexadecimal, default is 0).
---@return result ... Greater than or equal to 0: Success
function udp_server_send_data(server_port, msg, client_port, client_ip, hex) end

--- Close the UDP server.
---@param port? integer Optional parameter. Server port number. If not specified, close all UDP servers.
---@return ret ... Greater than or equal to 0: Success
function close_udp_server(port) end

--- Connect to a UDP server.
---@param port integer Server port number
---@param IP string Target server IP address
---@return ret ... Greater than or equal to 0: Success | Less than 0: Failure
function connect_udp_server(port, IP) end

--- Receive data from the UDP server.
---@param port integer Target server port.
---@param IP string Target server IP address.
---@param timeout number Timeout in seconds.
---@param hex? integer Optional parameter. Whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@return ret ret Greater than or equal to 0: Success
---@return any recv Less than 0: Failure
function udp_client_recv_data(port, IP, timeout, hex) end

--- Send data to the UDP server.
---@param port integer Target server port.
---@param IP string Target server IP address.
---@param msg string Data to send to the server.
---@param hex? integer Optional parameter. Whether the data to be sent is in hexadecimal format (1 for hexadecimal, default is 0).
---@return ret ... Greater than or equal to 0: Success
function udp_client_send_data(port, IP, msg, hex) end

--- Disconnect from the UDP server.
---@param port? integer Optional parameter. Port number (default is to disconnect all UDP connections).
---@param IP? string Optional parameter. Target server IP address.
---@return ret ... Greater than or equal to 0: Success
function disconnect_udp_server(port, IP) end
