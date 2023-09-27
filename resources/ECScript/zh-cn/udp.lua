---@meta

---初始化UDP服务器
---@param port integer 端口号
---@return ret ... 
function init_udp_server(port) end

---接收UDP客户端数据
---@param port integer 服务器端口号
---@param timeout number 超时时间,单位:s
---@param hex integer 可选参数,是否为16进制数,1的接收数据为16进制数（默认为0）
---@return ret ret 大于等于0:成功
---@return string recvbuff 接收到的数据
---@return string client_ip 源客户端IP地址
---@return integer client_port 源客户端端口号
function  udp_server_recv_data(port,timeout,hex) end

---向UDP客户端发送数据
---@param server_port integer 服务器端口号
---@param msg string 向客户端发送的数据
---@param client_port string 目标客户端IP
---@param hex? integer 可选参数,是否为16进制数,1的发送数据为16进制数（默认为0）
---@return result ... 大于等于0:成功
function udp_server_send_data(server_port,msg,client_port,client_ip,hex) end

---关闭udp服务器
---@param port? integer 可选参数,服务器端口号,不填关闭所有udp服务器
---@return ret ... 大于等于0:成功
function close_udp_server(port) end

---连接UDP服务器
---@param port integer 标服务器端口
---@param IP string 目标服务器IP地址
---@return ret ... 大于等于0:成功 | 小于0:失败
function connect_udp_server(port,IP) end

---接收UDP服务器数据
---@param port integer 目标服务器端口
---@param IP string 目标服务器IP地址
---@param timeout number 超时时间,单位:秒
---@param hex? integer 可选参数,是否为16进制数,1的接收数据为16进制数（默认为0）
---@return ret ret 大于等于0:成功
---@return any recv 小于0:失败
function udp_client_recv_data(port,IP,timeout,hex) end

---向UDP服务器发送数据
---@param port integer 目标服务器端口
---@param IP string 目标服务器IP地址
---@param msg string 向服务器发送的数据
---@param hex? integer 可选参数,是否为16进制数,1发送数据为16进制数（默认为 0）
---@return ret ... 大于等于0:成功
function udp_client_send_data(port,IP,msg,hex) end

---取消连接udp服务器
---@param port? integer 可选参数,端口号（不写则默认断开所有UDP连接）
---@param IP? string 可选参数,目标服务器IP地址
---@return ret ... 大于等于0:成功
function disconnect_udp_server(port,IP) end

