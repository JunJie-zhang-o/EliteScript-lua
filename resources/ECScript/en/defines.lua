---@diagnostic disable: duplicate-doc-alias
---@meta

---@alias pose number[] tips:rx, ry, rz are in radians

---@alias joint number[]

---@alias torque number[]

---@alias coordSysNum
---| -1 # Base Coordinate System
---| 0  # Corresponding to Coordinate System 0
---| 1  # Corresponding to Coordinate System 1
---| 2  # Corresponding to Coordinate System 2
---| 3  # Corresponding to Coordinate System 3
---| 4  # Corresponding to Coordinate System 4
---| 5  # Corresponding to Coordinate System 5
---| 6  # Corresponding to Coordinate System 6
---| 7  # Corresponding to Coordinate System 7

---@alias toolNum
---| 0 # Corresponding to Tool Coordinate System 0
---| 1 # Corresponding to Tool Coordinate System 1
---| 2 # Corresponding to Tool Coordinate System 2
---| 3 # Corresponding to Tool Coordinate System 3
---| 4 # Corresponding to Tool Coordinate System 4
---| 5 # Corresponding to Tool Coordinate System 5
---| 6 # Corresponding to Tool Coordinate System 6
---| 7 # Corresponding to Tool Coordinate System 7

---@alias userNum
---| 0 # Corresponding to User Coordinate System 0
---| 1 # Corresponding to User Coordinate System 1
---| 2 # Corresponding to User Coordinate System 2
---| 3 # Corresponding to User Coordinate System 3
---| 4 # Corresponding to User Coordinate System 4
---| 5 # Corresponding to User Coordinate System 5
---| 6 # Corresponding to User Coordinate System 6
---| 7 # Corresponding to User Coordinate System 7

---@alias ret
---| 1  # Success
---| -1 # Failure

---@alias result
---| 0  # Success
---| -1 # Failure

---@alias enable
---| 0 # Disabled
---| 1 # Enabled

---@alias choose
---| 0 # Mainboard 485 Port
---| 2 # TCI 485 Port

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
---| 0 # Joint Coordinate System
---| 1 # Base Coordinate System
---| 2 # Tool Coordinate System
---| 3 # User Coordinate System
---| 4 # Cylindrical Coordinate System

---@alias robotState
---| 0 # Stopped
---| 1 # Paused
---| 3 # Running
---| 4 # Alarm
---| 5 # Collision

---@alias servoStatus
---| 0 # Servo Disabled
---| 1 # Servo Enabled

---@alias cycleMode
---| 0 # Single Step
---| 1 # Single Cycle
---| 2 # Continuous Cycle

---@alias robotMode
---| 0 # Teach Mode
---| 1 # Auto Mode
---| 2 # Remote Mode

---@alias debug
---| 0 # Do Not Output INFO Information
---| 1 # Output INFO Information

---@alias matrix number[][]

---@alias quaternion number[]

---@alias rs485Mode
---| 0 # Initial Mode
---| 1 # TCI Communication Mode
---| 2 # Modbus RTU Master Mode

---@alias forceCtrlMode
---| 0 # Torque Data from Internal
---| 1 # Torque Data from SDK
---| 2 # Torque Data from LUA
---| 3 # Torque Data from End Effector

---@class ctx
---Modbus Handle
