---@diagnostic disable: duplicate-doc-alias
---@meta

---@alias pose number[] tips:rx、ry、rz为弧度

---@alias joint number[]

---@alias torque number[]

---@alias coordSysNum
---| -1 # 基坐标系
---| 0 # 对应的0号坐标系
---| 1 # 对应的1号坐标系
---| 2 # 对应的2号坐标系
---| 3 # 对应的3号坐标系
---| 4 # 对应的4号坐标系
---| 5 # 对应的5号坐标系
---| 6 # 对应的6号坐标系
---| 7 # 对应的7号坐标系


---@alias toolNum
---| 0 # 对应0号工具坐标系
---| 1 # 对应1号工具坐标系
---| 2 # 对应2号工具坐标系
---| 3 # 对应3号工具坐标系
---| 4 # 对应4号工具坐标系
---| 5 # 对应5号工具坐标系
---| 6 # 对应6号工具坐标系
---| 7 # 对应7号工具坐标系

---@alias userNum
---| 0 # 对应0号用户坐标系
---| 1 # 对应1号用户坐标系
---| 2 # 对应2号用户坐标系
---| 3 # 对应3号用户坐标系
---| 4 # 对应4号用户坐标系
---| 5 # 对应5号用户坐标系
---| 6 # 对应6号用户坐标系
---| 7 # 对应7号用户坐标系


---@alias ret
---| 1 # 成功
---| -1 # 失败

---@alias result
---| 0 # 成功
---| -1 # 失败

---@alias enable
---| 0 # 未使能
---| 1 # 使能

---@alias choose
---| 0 # 主板485口
---| 2 # TCI485口

---@alias dataBits
---| 7
---| 8

---@alias parityBits
---| "O"
---| "E"
---| "N"

---@alias stopBits
---| 1
---| 2

---@alias coord
---| 0 # 关节坐标系
---| 1 # 基座坐标系
---| 2 # 工具坐标系
---| 3 # 用户坐标系
---| 4 # 圆柱坐标系

---@alias robotState
---| 0 # 停止
---| 1 # 暂停
---| 3 # 运行中
---| 4 # 报警
---| 5 # 碰撞

---@alias servoStatus
---| 0 # 伺服使能关闭
---| 1 # 伺服使能关闭

---@alias cycleMode
---| 0 # 单步
---| 1 # 单循环
---| 2 # 连续循环

---@alias robotMode
---| 0 # 示教模式
---| 1 # 自动模式
---| 2 # 远程模式

---@alias debug
---| 0 # 不输出INFO信息
---| 1 # 输出INFO信息

---@alias matrix number[][]

---@alias quaternion number[]


---@alias rs485Mode
---| 0 # 0:初始模式
---| 1 # tci通讯模式
---| 2 # modbusRTU主站模式

---@alias forceCtrlMode
---| 0 # 力矩数据来自内部
---| 1 # 力矩数据来自SDK
---| 2 # 力矩数据来自LUA
---| 3 # 力矩数据来自末端

---@class ctx
---Modbus句柄
