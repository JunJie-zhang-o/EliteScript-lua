---@meta

--- Open the RS-485 interface.
---@return result ...
function tci_open() end

--- Set the configuration of the TCI serial port.
---@param speed integer Baud rate.
---@param bits integer Data length: 7/8.
---@param event string Parity: "O" (Odd), "N" (None), "E" (Even).
---@param stop integer Stop bits: 1/2.
---@return result ... 
function tci_setopt(speed, bits, event, stop) end

--- Receive data.
---@param time_out integer Timeout in milliseconds.
---@param hex integer Whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@param len integer? Optional parameter. The desired length to receive. It will be automatically set to 1024 if exceeded.
---@return integer ret 0, -1: Read failed | Length of data received (all converted to character length).
---@return any recv_buff Received data
function tci_recv(time_out, hex, len) end

--- Send data.
---@param buff string Characters to send.
---@param hex integer Whether the data to be sent is in hexadecimal format (1 for hexadecimal).
---@return ret ...
function tci_send(buff, hex) end

--- Close the TCI interface.
---@return result ... 
function tci_close() end

--- Clear the TCI buffer.
function tci_flush() end
