---@meta

---字符串分割
---@param s string 字符串
---@param sep string 分割符
---@return string[] ...
function string.split(s, sep) end

---延时
---@param second any 等待时间,单位:秒
-- _Tips:_ <br>
function sleep(second) end

---设置机械臂本体IO状态
---@param name string IO名称, 字符串类型
---@param value number IO状态值,int类型（对应Y,M）或double类型（对应AO）
function set_robot_io_status(name, value) end

---获取机器人臂本体IO状态
---@param name string IO名称, 字符串类型
---@return number ... 对应IO的状态值,double类型
function get_robot_io_status(name) end

---获取示教器全局变量值
---@param varName string 变量名称
---@return number | pose | joint ... 对应变量名称的变量值,返回值类型取决于变量的类型
function get_global_variable(varName) end

---设置示教器全局变量值
---@param varName string 变量名称
---@param varValue number | pose | joint 变量值
function set_global_variable(varName, varValue) end

---设置是否调试模式
---@param debug debug 1:输出INFO信息
function set_debug(debug) end

---打印信息至示教器界面
---@param ... string 字符串类型
function elite_print(...) end

---逆解函数
---@param var1 pose pose（目标点位姿）
---@param var2 joint joint（参考点关节角度,参考点需接近目标点。若不写则视为参考当前点）
---@return nil | joint ... 逆解结果 | 目标点关节角度
function get_inv_kinematics(var1, var2) end

---正解函数
---@param var1 joint joint（目标点关节角度）
---@return nil | pose ... table:pose（目标点位姿）
function get_fwd_kinematics(var1) end

---位姿的逆
---@param var1 pose pose
---@return nil | pose ... table:pose
function pose_inv(var1) end

---位姿的乘
---@param var1 pose pose
---@param var2 pose pose
---@return nil | pose ... table:pose
function pose_mul(var1, var2) end

---获取机器人模式
---@return robotMode ...
function get_robot_mode() end

---获取机器人JBI运行模式
---@return cycleMode ...
function get_cycle_mode() end

---获取机器人伺服使能状态
---@return servoStatus ...
function get_servo_status() end

---获取机器人运行状态
---@return robotState ...
function get_robot_state() end

---获取机器人坐标系
---@return coord ...
function get_current_coord() end

---获取机器人位姿
---@return pose ... 机器人当前位姿 注:rx、ry、rz为弧度
function get_robot_pose() end

---获取机器人关节角度
---@return joint ... 机器人当前关节角度
function get_robot_joint() end

---获取机器人力矩信息
---@return torque ... 机器人当前位姿各关节的力矩
function get_robot_torque() end

---获取当前tcp坐标系下的外部力和力矩
---@param ref_tcp? 0|1|2|3|4|5|6|7 参考坐标系编号,0为基坐标系,不写默认为tcp坐标系
---@return nil|torque ... 当机器人处于奇异位置时，则返回null，当机器人处于非奇异位置时，则返回当前tcp或基坐标系的“外部”力和力矩
function get_tcp_force(ref_tcp) end

---获取当前关节力矩
---@return torque ... 机器人当前关节力矩
function get_joint_torques() end

---获取真实的末端位姿数据
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_actural_tcp(tool_num, user_num) end

---获取目标插补末端位姿数据
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_target_tcp(tool_num, user_num) end

---获取线性插补位姿数据
---@param var1 pose
---@param var2 pose
---@param ratio number 浮点型数据，代表比例值，范围是[0,1]，当数值=0时，机器人返回第一个位姿，当数值=1时，机器人返回第二个位姿
---@return pose ...
function get_interp_pose(var1, var2, ratio) end

---获取真实的关节数据
---@return joint
function get_actual_joint() end

---获取目标插补关节数据
---@return joint
function get_target_joint() end

---获取工具坐标系位姿
---@param num toolNum? ,可选参数,如果num未设置,那么获取当前的工具坐标系位姿。
---@return pose ...对应的工具坐标系位姿
function get_tool_frame(num) end

---获取用户坐标系位姿
---@param num userNum? ,可选参数,如果num未设置,那么获取当前的用户坐标系位姿。注:rx、ry、rz为弧度
---@return pose ... 对应的用户坐标系位姿
function get_user_frame(num) end

---获取工具坐标系编号
---@return toolNum ... 当前机器人工具坐标系编号
function get_tool_no() end

---获取用户坐标系编号
---@return userNum ... 当前机器人用户坐标系编号
function get_user_no() end

---检查工具启用状态
---@param num toolNum 当前工具号
---@return enable ...
function check_tool_frame_enable(num) end

---检查用户坐标启用状态
---@param num userNum 当前用户坐标号
---@return enable ...
function check_user_frame_enable(num) end

---获取M变量寄存器接口(0-191)
---@param index integer 字节定义,[0, 191]
---@return any recv 寄存器的接口值
---@return result ret
function get_robot_register(index) end

---设置M变量寄存器接口(66-191)
---@param index integer 寄存器地址,[66, 191]
---@param size integer  单位是字节,[1, 128],且与index值的和需小于等于192
---@param value string|integer 寄存器值,hex字符串或无符号整型; 注:当value类型为无符号整型时,size的范围为[1, 4], value的范围为[0, 2^(8*size)-1)]
function set_robot_register(index, size, value) end

---获取M变量寄存器接口（192-575）
---@param index any ]
---@return any ... 0:成功
---@return any ... -1:失败
---@return any ... 寄存器的接口值
function get_robot_extra_register(index) end

---设置M变量寄存器接口（300-447）
---@param index integer 寄存器地址 [300,447]
---@param size integer 单位是字节,且与index值的和需小于等于448
---@param string string|integer 寄存器值,hex字符串或无符号整型; 注:当value类型为无符号整型时,size的范围为[1, 4], value的范围为[0, 2^(8*size)-1)]
function set_robot_extra_register(index, size, string) end

---获取当前tcp速度
---@return number ... 当前tcp速度,单位:mm/s
function get_current_tcp_spd() end

---获取法兰中心在当前基坐标系下的位姿
---@return pose ... 机器人当前位姿
function get_flange_pose_inbase() end

---获取法兰中心在当前用户坐标系下的位姿
---@return pose ... 机器人当前用户坐标系位姿
function get_flange_pose_inuser() end

---获取机器人位姿
---@return pose ... 机器人当前位姿
function get_tcp_pose() end

---获取当前tcp在当前用户坐标系下的位姿
---@return pose ... 机器人当前tcp在当前用户坐标系下的位姿
function get_tcp_pose_inuser() end

---获取末端485模式
---@return rs485Mode ...
function get_terminal_485_mode() end

---获取两点距离
---@param var1 pose
---@param var2 pose
---@return number ... 两点间距 unit:mm
function get_point_distance(var1, var2) end

---获取关节温度
---@return number[] ... 六个关节的温度
function get_joint_tmp() end

---计算位姿变化量
---@param var1 pose
---@param var2 pose
---@return nil|pose ... 失败｜ 位姿变化量
function pose_sub(var1, var2) end

---位姿转化为齐次矩阵
---@param var1 pose
---@return nil|matrix ... 失败｜齐次矩阵
function pose_to_matrix(var1) end

---齐次矩阵转换为位姿
---@param var1 matrix
---@return nil|pose ...失败｜对应的位姿
function matrix_to_pose(var1) end

---位置和旋转矢量转换为齐次矩阵
---@param var1 pose 欧拉角
---@return nil|matrix ... 失败｜4*4的二维数组
function pos_rot_vector_to_matrix(var1) end

---齐次矩阵转化为位置和旋转矢量
---@param var1 matrix 齐次矩阵
---@return nil|pose ... 欧拉角
function matrix_to_pos_rot_vector(var1) end

---位置和四元素转化为齐次矩阵
---@param var1 quaternion 四元素
---@return nil|matrix ... 失败｜齐次矩阵
function quaternion_to_matrix(var1) end

---齐次矩阵转化为位置和四元素
---@param var1 matrix 齐次矩阵
---@return nil|quaternion ... 失败｜四元素
function matrix_to_quaternion(var1) end

---用户坐标系数据转直角坐标系数据
---@param pose_in_user pose 用户坐标系下的数据
---@param user_frame pose 用户坐标系
---@return pose ... 该数据对应在直角坐标系数据
function convert_pose_from_user_to_cart(pose_in_user, user_frame) end

---直角坐标系数据转用户坐标系数据
---@param cart_pose pose 直角坐标系下的数据
---@param user_frame pose 用户坐标系
---@return pose ... 该数据对应在用户坐标系的数据
function convert_pose_from_cart_to_user(cart_pose, user_frame) end

---矩阵相乘
---@param m1 matrix 矩阵1
---@param m2 matrix 矩阵1
---@return matrix ... 相乘后的矩阵
---_Tips:_
---
---m为2*2数组,最大为6*6数组
function matrix_mul(m1, m2) end

---矩阵的逆
---@param m matrix
---@return matrix ... 逆矩阵
---_Tips:_
---
---m为2*2数组,最大为6*6数组
function matrix_inv(m) end

---计算用户坐标系数据
---@param var1 pose 标定点工具末端位姿1
---@param var2 pose 标定点工具末端位姿2
---@param var3 pose 标定点工具末端位姿3
---@return nil|pose ...
function calculate_user_frame(var1, var2, var3) end

---计算工具TCP的位置
---@param var1 pose 标定点工具末端位姿1
---@param var2 pose 标定点工具末端位姿2
---@param var3 pose 标定点工具末端位姿3
---@param var4 pose 标定点工具末端位姿4
---@return nil|number[] ... 失败｜工具TCP中心数据 [x, y, z]
function calculate_tool_position(var1, var2, var3, var4) end

---设置末端指示灯控制模式
---@param var1 0|1  0:常亮模式 ｜ 1:自定义模式
---@return result ...
function set_ending_pilot_lamp_ctrl_mode(var1) end

---获取末端指示灯控制模式
---@return 0|1 ... 0:常亮模式 ｜ 1:自定义模式
function get_ending_pilot_lamp_ctrl_mode() end
