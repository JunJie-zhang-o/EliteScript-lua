/*
 * @Author: Elite_zhangjunjie
 * @CreateDate: 
 * @LastEditors: Elite_zhangjunjie
 * @LastEditTime: 2022-05-01 23:08:03
 * @Description: 
 */
const vscode = require('vscode');

const eliteFuncs = ["sleep",
                    "set_robot_io_status",
                    "get_robot_io_status",
                    "get_global_variable",
                    "set_global_variable",
                    "set_debug",
                    "elite_print",
                    "get_inv_kinematics",
                    "get_fwd_kinematics",
                    "pose_inv",
                    "pose_mul",
                    "get_robot_mode",
                    "get_cycle_mode",
                    "get_servo_status",
                    "get_robot_state",
                    "get_current_coord",
                    "get_robot_pose",
                    "get_robot_joint",
                    "get_robot_torque",
                    "get_tool_frame",
                    "get_tool_no",
                    "get_user_no",
                    "get_user_frame",
                    "check_tool_frame_enable",
                    "check_user_frame_enable",
                    "get_robot_register",
                    "set_robot_register",
                    "get_robot_extra_register",
                    "set_robot_extra_register",
                    "get_current_tcp_spd",
                    "get_flange_pose_inbase",
                    "get_flange_pose_inuser",
                    "get_tcp_pose_inuser",
                    "get_terminal_485_mode",
                    "check_user_frame_enable",
                    "init_tcp_server",
                    "is_client_connected",
                    "server_recv_data",
                    "server_send_data",
                    "connect_tcp_server",
                    "client_recv_data",
                    "client_set_recv_timeout",
                    "client_send_data",
                    "disconnect_tcp_server",
                    "init_udp_server",
                    "udp_server_recv_data",
                    "udp_server_send_data",
                    "close_udp_server",
                    "connect_udp_server",
                    "udp_client_recv_data",
                    "udp_client_send_data",
                    "disconnect_udp_server",
                    "rs485_open",
                    "rs485_setopt",
                    "rs485_recv",
                    "rs485_send",
                    "rs485_close",
                    "rs485_flush",
                    "rs232_open",
                    "rs232_setopt",
                    "rs232_recv",
                    "rs232_send",
                    "rs232_close",
                    "rs232_flush",
                    "tci_open",
                    "tci_setopt",
                    "tci_recv",
                    "tci_send",
                    "tci_close",
                    "tci_flush",
                    "modbus_new_rtu",
                    "modbus_new_tcp",
                    "modbus_connect",
                    "modbus_close",
                    "modbus_set_slave",
                    "modbus_write_register",
                    "modbus_read_register",]

console.log("Start retrieve configured global variables")

let globalsValue = vscode.workspace.getConfiguration().get("Lua.diagnostics.globals")

var needGlobalsFuncs = globalsValue.slice();
var isConfig = false
function findNeedConfigFuncs(items, index) {
    if (globalsValue.includes(items) === false) {
        isConfig = true
        needGlobalsFuncs.push(items)
    }
}
eliteFuncs.forEach(findNeedConfigFuncs)
if (isConfig === true){
    console.log("configuring")
    vscode.workspace.getConfiguration().update("Lua.diagnostics.globals", needGlobalsFuncs, true)
}
console.log("retrieve config down")