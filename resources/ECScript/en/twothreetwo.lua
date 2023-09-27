---@meta

--- Open the RS-232 interface.
---@return result ...
function rs232_open() end

--- Set the configuration of the RS-232 serial port.
---@param speed integer Baud rate.
---@param bits dataBits Data length: 7/8.
---@param event parityBits Parity: "O" (Odd), "N" (None), "E" (Even).
---@param stop stopBits Stop bits: 1/2.
---@return result ... Greater than or equal to 0: Configuration successful
function rs232_setopt(speed, bits, event, stop) end

--- Receive data.
---@param time_out integer Timeout in milliseconds.
---@param hex integer Whether the received data is in hexadecimal format (1 for hexadecimal, default is 0).
---@param len integer? Optional parameter. The desired length to receive. It will be automatically set to 1024 if exceeded.
---@return integer ... 0, -1: Read failed | Length of data received (all converted to character length).
---@return any ... Received data
function rs232_recv(time_out, hex, len) end

--- Send data.
---@param buff string Characters to send.
---@param hex integer Whether the data to be sent is in hexadecimal format (1 for hexadecimal).
---@return ret ... 1: Send successful
function rs232_send(buff, hex) end

--- Close the RS-232 interface.
---@return result ... 
function rs232_close() end

--- Clear the RS-232 buffer.
function rs232_flush() end
