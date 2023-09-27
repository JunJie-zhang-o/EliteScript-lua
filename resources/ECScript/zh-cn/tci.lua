---@meta

---打开末端485接口
---@return result ...
function tci_open() end

---设置TCI串口的配置
---@param speed integer 波特率
---@param bits integer 数据长度 7/8
---@param event string 奇偶校验“O”,“N”,“E”
---@param stop integer 停止位 1/2
---@return result ... 
function tci_setopt(speed,bits,event,stop) end

---接收数据
---@param time_out integer 超时时间,单位:ms
---@param hex integer  是否为16进制数,1的接收到的数据为16进制字符格式（默认为0）
---@param len integer? 可选参数,想要获取的长度,在超过1024情况下,会自动被设置成1024
---@return integer ret 0,-1:读取失败 ｜ 读到的长度（都是转化为字符长度）
---@return any recv_buff 获取的数据
function tci_recv(time_out,hex,len) end

---发送数据
---@param buff string 需要发送的字符
---@param hex integer 是否为16进制数,1的发送的数据为16进制字符格式
---@return ret ...
function tci_send(buff,hex) end

---关闭TCI接口
---@return result ... 
function tci_close() end

---清空TCI缓冲区
function tci_flush() end

