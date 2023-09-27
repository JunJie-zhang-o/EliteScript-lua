---@meta

---String Split
---@param s string String
---@param sep string Separator
---@return string[] ...
function string.split(s, sep) end

---Delay
---@param second any Waiting time, unit: seconds
-- _Tips:_ <br>
function sleep(second) end

---Set Robot IO Status
---@param name string IO name, string type
---@param value number IO status value, int type (corresponding to Y, M) or double type (corresponding to AO)
function set_robot_io_status(name, value) end

---Get Robot Arm IO Status
---@param name string IO name, string type
---@return number ... Status value corresponding to IO, double type
function get_robot_io_status(name) end

---Get Global Variable Value in the Teach Pendant
---@param varName string Variable name
---@return number | pose | joint ... Variable value corresponding to the variable name, return value type depends on the variable's type
function get_global_variable(varName) end

---Set Global Variable Value in the Teach Pendant
---@param varName string Variable name
---@param varValue number | pose | joint Variable value
function set_global_variable(varName, varValue) end

---Set Debug Mode
---@param debug debug 1: Output INFO information
function set_debug(debug) end

---Print Information to the Teach Pendant Interface
---@param ... string String type
function elite_print(...) end

---Inverse Kinematics Function
---@param var1 pose pose (Target point pose)
---@param var2 joint joint (Reference point joint angle, the reference point should be close to the target point. If not written, it is considered as the current point reference)
---@return nil | joint ... Inverse solution | Target point joint angle
function get_inv_kinematics(var1, var2) end

---Forward Kinematics Function
---@param var1 joint joint (Target point joint angle)
---@return nil | pose ... table: pose (Target point pose)
function get_fwd_kinematics(var1) end

---Inverse of Pose
---@param var1 pose pose
---@return nil | pose ... table: pose
function pose_inv(var1) end

---Multiplication of Poses
---@param var1 pose pose
---@param var2 pose pose
---@return nil | pose ... table: pose
function pose_mul(var1, var2) end

---Get Robot Mode
---@return robotMode ...
function get_robot_mode() end

---Get Robot JBI Run Mode
---@return cycleMode ...
function get_cycle_mode() end

---Get Robot Servo Enable Status
---@return servoStatus ...
function get_servo_status() end

---Get Robot Run Status
---@return robotState ...
function get_robot_state() end

---Get Robot Coordinate System
---@return coord ...
function get_current_coord() end

---Get Robot Pose
---@return pose ... Robot's current pose Note: rx, ry, rz are in radians
function get_robot_pose() end

---Get Robot Joint Angles
---@return joint ... Robot's current joint angles
function get_robot_joint() end

---Get Robot Torque Information
---@return torque ... Torque on each joint of the robot's current pose
function get_robot_torque() end

---Get External Force and Torque in the Current TCP Coordinate System
---@param ref_tcp? 0|1|2|3|4|5|6|7 Reference coordinate system number, 0 is the base coordinate system, default is the TCP coordinate system if not written
---@return nil | torque ... When the robot is in a singular position, null is returned; when the robot is in a non-singular position, the "external" force and torque of the current TCP or base coordinate system are returned
function get_tcp_force(ref_tcp) end

---Get Current Joint Torque
---@return torque ... Robot's current joint torque
function get_joint_torques() end

---Get Actual End Effector Pose Data
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_actural_tcp(tool_num, user_num) end

---Get Target Interpolated End Effector Pose Data
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_target_tcp(tool_num, user_num) end

---Get Linear Interpolation Pose Data
---@param var1 pose
---@param var2 pose
---@param ratio number Floating-point data, representing a ratio in the range [0,1]. When the value = 0, the robot returns the first pose; when the value = 1, the robot returns the second pose
---@return pose ...
function get_interp_pose(var1, var2, ratio) end

---Get Actual Joint Data
---@return joint
function get_actual_joint() end

---Get Target Interpolated Joint Data
---@return joint
function get_target_joint() end

---Get Tool Coordinate System Pose
---@param num toolNum? ,Optional parameter. If num is not set, then the current tool coordinate system pose is obtained.
---@return pose ... Corresponding tool coordinate system pose
function get_tool_frame(num) end

---Get User Coordinate System Pose
---@param num userNum? ,Optional parameter. If num is not set, then the current user coordinate system pose is obtained. Note: rx, ry, rz are in radians
---@return pose ... Corresponding user coordinate system pose
function get_user_frame(num) end

---Get Tool Coordinate System Number
---@return toolNum ... Current robot tool coordinate system number
function get_tool_no() end

---Get User Coordinate System Number
---@return userNum ... Current robot user coordinate system number
function get_user_no() end

---Check Tool Enable Status
---@param num toolNum Current tool number
---@return enable ...
function check_tool_frame_enable(num) end

---Check User Coordinate Enable Status
---@param num userNum Current user coordinate number
---@return enable ...
function check_user_frame_enable(num) end

---Get M Variable Register Interface (0-191)
---@param index integer Byte definition, [0, 191]
---@return any recv Interface value of the register
---@return result ret
function get_robot_register(index) end

---Set M Variable Register Interface (66-191)
---@param index integer Register address, [66, 191]
---@param size integer Unit is bytes, [1, 128], and the sum of size and index values must be less than or equal to 192
---@param value string | integer Register value, hex string or unsigned integer; Note: When the value type is unsigned integer, the size range is [1, 4], and the value range is [0, 2^(8*size)-1)]
function set_robot_register(index, size, value) end

---Get M Variable Register Interface (192-575)
---@param index any ]
---@return any ... 0: Success
---@return any ... -1: Failure
---@return any ... Interface value of the register
function get_robot_extra_register(index) end

---Set M Variable Register Interface (300-447)
---@param index integer Register address [300,447]
---@param size integer Unit is bytes, and the sum of size and index values must be less than or equal to 448
---@param string string | integer Register value, hex string or unsigned integer; Note: When the value type is unsigned integer, the size range is [1, 4], and the value range is [0, 2^(8*size)-1)]
function set_robot_extra_register(index, size, string) end

---Get Current TCP Speed
---@return number ... Current TCP speed, unit: mm/s
function get_current_tcp_spd() end

---Get Flange Center Pose in Current Base Coordinate System
---@return pose ... Robot's current pose
function get_flange_pose_inbase() end

---Get Flange Center Pose in Current User Coordinate System
---@return pose ... Robot's current user coordinate system pose
function get_flange_pose_inuser() end

---Get Robot Pose
---@return pose ... Robot's current pose
function get_tcp_pose() end

---Get Current TCP Pose in Current User Coordinate System
---@return pose ... Robot's current TCP pose in the current user coordinate system
function get_tcp_pose_inuser() end

---Get Terminal 485 Mode
---@return rs485Mode ...
function get_terminal_485_mode() end

---Get Distance Between Two Points
---@param var1 pose
---@param var2 pose
---@return number ... Distance between two points unit: mm
function get_point_distance(var1, var2) end

---Get Joint Temperature
---@return number[] ... Temperature of all six joints
function get_joint_tmp() end

---Calculate Pose Change
---@param var1 pose
---@param var2 pose
---@return nil | pose ... Failed｜Pose change amount
function pose_sub(var1, var2) end

---Pose to Homogeneous Matrix
---@param var1 pose
---@return nil | matrix ... Failed｜Homogeneous matrix
function pose_to_matrix(var1) end

---Homogeneous Matrix to Pose
---@param var1 matrix
---@return nil | pose ... Failed｜Corresponding pose
function matrix_to_pose(var1) end

---Position and Rotation Vector to Homogeneous Matrix
---@param var1 pose Euler angles
---@return nil | matrix ... Failed｜4x4 two-dimensional array
function pos_rot_vector_to_matrix(var1) end

---Homogeneous Matrix to Position and Rotation Vector
---@param var1 matrix Homogeneous matrix
---@return nil | pose ... Euler angles
function matrix_to_pos_rot_vector(var1) end

---Position and Quaternion to Homogeneous Matrix
---@param var1 quaternion Quaternion
---@return nil | matrix ... Failed｜Homogeneous matrix
function quaternion_to_matrix(var1) end

---Homogeneous Matrix to Position and Quaternion
---@param var1 matrix Homogeneous matrix
---@return nil | quaternion ... Failed｜Quaternion
function matrix_to_quaternion(var1) end

---Convert User Coordinate System Data to Cartesian Coordinate System Data
---@param pose_in_user pose Data in the user coordinate system
---@param user_frame pose User coordinate system
---@return pose ... Data corresponding to the user coordinate system in Cartesian coordinates
function convert_pose_from_user_to_cart(pose_in_user, user_frame) end

---Convert Cartesian Coordinate System Data to User Coordinate System Data
---@param cart_pose pose Data in the Cartesian coordinate system
---@param user_frame pose User coordinate system
---@return pose ... Data corresponding to the user coordinate system
function convert_pose_from_cart_to_user(cart_pose, user_frame) end

---Matrix Multiplication
---@param m1 matrix Matrix 1
---@param m2 matrix Matrix 2
---@return matrix ... Matrix after multiplication
---_Tips:_
---
---m is a 2x2 array, maximum is 6x6 array
function matrix_mul(m1, m2) end

---Matrix Inversion
---@param m matrix
---@return matrix ... Inverted matrix
---_Tips:_
---
---m is a 2x2 array, maximum is 6x6 array
function matrix_inv(m) end

---Calculate User Coordinate System Data
---@param var1 pose Calibration point tool end pose 1
---@param var2 pose Calibration point tool end pose 2
---@param var3 pose Calibration point tool end pose 3
---@return nil | pose ...
function calculate_user_frame(var1, var2, var3) end

---Calculate Tool TCP Position
---@param var1 pose Calibration point tool end pose 1
---@param var2 pose Calibration point tool end pose 2
---@param var3 pose Calibration point tool end pose 3
---@param var4 pose Calibration point tool end pose 4
---@return nil | number[] ... Failed｜Tool TCP center data [x, y, z]
function calculate_tool_position(var1, var2, var3, var4) end

---Set End Effector Pilot Lamp Control Mode
---@param var1 0|1 0: Always-on mode ｜ 1: Custom mode
---@return result ...
function set_ending_pilot_lamp_ctrl_mode(var1) end

---Get End Effector Pilot Lamp Control Mode
---@return 0|1 ... 0: Always-on mode ｜ 1: Custom mode
function get_ending_pilot_lamp_ctrl_mode() end
