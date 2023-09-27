---@meta

---打开232接口
---@return result ... 
function rs232_open() end

---设置232串口配置
---@param speed integer 波特率
---@param bits dataBits 数据长度 7/8
---@param event parityBits 奇偶校验“O”,“N”,“E”
---@param stop stopBits 停止位 1/2
---@return result ... 大于等于0:设置成功
function rs232_setopt(speed,bits,event,stop) end

---接收数据
---@param time_out integer 超时时间,单位:ms
---@param hex integer 是否为16进制数,1的接收到的数据为16进制字符格式（默认为0）
---@param len integer? 可选参数,想要获取的长度,在超过1024情况下,会自动被设置成1024
---@return integer ... 0,-1:读取失败 | 读到的长度（都是转化为字符长度）
---@return any ... 读取的数据
function rs232_recv(time_out,hex,len) end

---发送数据
---@param buff string 需要发送的字符
---@param hex integer 是否为16进制数,1的发送的数据为16进制字符格式
---@return ret ... 1:发送成功
function rs232_send(buff,hex) end

---关闭232接口
---@return result ... 
function rs232_close() end

---清空232缓冲区
function rs232_flush() end

