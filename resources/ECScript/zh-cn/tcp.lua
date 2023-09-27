---@meta

---初始化TCP服务器
---@param port integer 端口号
function init_tcp_server(port) end

---判断客户端是否连接了服务器
---@param IP string 客户端IP地址
---@param port? integer TCP服务器端口号
---@return ret ... 1:参数中的IP地址已连接tcp服务器 -1:未连接
function is_client_connected(IP,port) end

---接收客户端数据
---@param IP string 客户端IP地址
---@param hex? integer 可选参数,是否为16进制数,1的接收数据为16进制数（默认为0）
---@param port? integer TCP服务器端口号
---@param recv_timeout? number 可选参数,超时时间,单位:秒
---@return number ret 接收到的数据数量 ｜ -1:接收错误
---@return string recv 接收到的数据
function server_recv_data(IP,hex,port,recv_timeout) end

---向客户端发送数据
---@param IP string 客户端IP地址
---@param msg string 发送的消息
---@param hex? integer 可选参数,是否为16进制数,1的发送数据为16进制数（默认为0）
---@param port? integer TCP服务器端口号
---@return number ... 发送数据数量 | -1:发送失败
function server_send_data(IP,msg,hex,port) end

---连接服务器
---@param IP string 客户端IP地址
---@param port integer 端口号
---@return number ... 1:链接成功 ｜ 0:  未连接
function connect_tcp_server(IP,port) end

---接收服务器数据
---@param IP string IP地址
---@param recv_timeout? integer 超时时间,单位:秒
---@param hex? integer 是否为16进制数,1的接收数据为16进制字符格式（默认为0）
---@param port? integer 可选参数,端口号
---@return number ret 接收到的数据数量 ｜ -1:接收错误,需要重连
---@return string recv 接收到的数据
function client_recv_data(IP,recv_timeout,hex,port) end

---整体设置超时时间
---@param IP string IP地址
---@param recv_timeout integer 超时时间,单位:秒
---@return ret ... 
function client_set_recv_timeout(IP,recv_timeout) end

---清除客户端缓冲区
---@param IP string 服务器IP地址
---@param port integer 服务器端口号
function client_flush(IP, port) end

---向服务器发送数据
---@param IP string IP地址
---@param msg string 向服务器发送的数据
---@param hex integer 是否为16进制数,1发送数据为16进制字符格式（默认为 0）
---@param port? integer 可选参数,端口号
---@return ret ... 服务器发送的数据长度 ｜ -1:发送失败需要重连
function client_send_data(IP,msg,hex,port) end

---断开TCP链接
---@param IP string IP地址
---@param port? integer 可选参数,端口号（不写则默认断开所有TCP连接）
function disconnect_tcp_server(IP,port) end

