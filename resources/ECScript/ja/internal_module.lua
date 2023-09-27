---@meta

---文字列の分割
---@param s string 文字列
---@param sep string 区切り文字
---@return string[] ...
function string.split(s, sep) end

---遅延
---@param second any 待機時間、単位：秒
-- _Tips:_ <br>
function sleep(second) end

---ロボットアーム本体のIO状態を設定
---@param name string IO名、文字列タイプ
---@param value number IO状態値、intタイプ（Y、Mに対応）またはdoubleタイプ（AOに対応）
function set_robot_io_status(name, value) end

---ロボットアーム本体のIO状態を取得
---@param name string IO名、文字列タイプ
---@return number ... IOに対応する状態値、doubleタイプ
function get_robot_io_status(name) end

---Teach Pendantのグローバル変数値を取得
---@param varName string 変数名
---@return number | pose | joint ... 変数名に対応する変数値、戻り値の型は変数の型に依存
function get_global_variable(varName) end

---Teach Pendantのグローバル変数値を設定
---@param varName string 変数名
---@param varValue number | pose | joint 変数値
function set_global_variable(varName, varValue) end

---デバッグモードの設定
---@param debug debug 1：INFO情報を出力
function set_debug(debug) end

---Teach Pendantインターフェースに情報をプリント
---@param ... string 文字列タイプ
function elite_print(...) end

---逆運動学関数
---@param var1 pose pose（目標ポイントポーズ）
---@param var2 joint joint（参照ポイントのジョイント角度、参照ポイントは目標ポイントに近い必要があります。書かれていない場合、現在のポイントが参照点と見なされます）
---@return nil | joint ... 逆解 | 目標ポイントのジョイント角度
function get_inv_kinematics(var1, var2) end

---順運動学関数
---@param var1 joint joint（目標ポイントのジョイント角度）
---@return nil | pose ... テーブル：pose（目標ポイントポーズ）
function get_fwd_kinematics(var1) end

---ポーズの逆
---@param var1 pose pose
---@return nil | pose ... テーブル：pose
function pose_inv(var1) end

---ポーズの乗算
---@param var1 pose pose
---@param var2 pose pose
---@return nil | pose ... テーブル：pose
function pose_mul(var1, var2) end

---ロボットモードの取得
---@return robotMode ...
function get_robot_mode() end

---ロボットJBI実行モードの取得
---@return cycleMode ...
function get_cycle_mode() end

---ロボットサーボ有効状態の取得
---@return servoStatus ...
function get_servo_status() end

---ロボット実行状態の取得
---@return robotState ...
function get_robot_state() end

---ロボット座標系の取得
---@return coord ...
function get_current_coord() end

---ロボットポーズの取得
---@return pose ... ロボットの現在のポーズ 注意：rx、ry、rzはラジアン単位
function get_robot_pose() end

---ロボットジョイント角度の取得
---@return joint ... ロボットの現在のジョイント角度
function get_robot_joint() end

---ロボットトルク情報の取得
---@return torque ... ロボットの現在のポーズの各ジョイントにかかるトルク
function get_robot_torque() end

---現在のTCP座標系内の外部力とトルクの取得
---@param ref_tcp? 0|1|2|3|4|5|6|7 参照座標系番号、0はベース座標系、指定しない場合はTCP座標系がデフォルトです
---@return nil|torque ... ロボットが特異点にいる場合、nullが返されます。ロボットが特異点でない場合、現在のTCPまたはベース座標系の「外部」力とトルクが返されます
function get_tcp_force(ref_tcp) end

---現在のジョイントトルクの取得
---@return torque ... ロボットの現在のジョイントトルク
function get_joint_torques() end

---実際のエンドエフェクタポーズデータの取得
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_actural_tcp(tool_num, user_num) end

---ターゲット補間エンドエフェクタポーズデータの取得
---@param tool_num? coordSysNum
---@param user_num? coordSysNum
---@return pose ...
function get_target_tcp(tool_num, user_num) end

---リニア補間ポーズデータの取得
---@param var1 pose
---@param var2 pose
---@param ratio number 浮動小数点数、比率を表し、範囲は[0,1]です。値=0の場合、ロボットは最初のポーズを返し、値=1の場合、ロボットは2番目のポーズを返します
---@return pose ...
function get_interp_pose(var1, var2, ratio) end

---実際のジョイントデータの取得
---@return joint
function get_actual_joint() end

---ターゲット補間ジョイントデータの取得
---@return joint
function get_target_joint() end

---ツール座標系のポーズの取得
---@param num toolNum? ,オプションのパラメータ。 numが設定されていない場合、現在のツール座標系ポーズが取得されます
---@return pose ... 対応するツール座標系ポーズ
function get_tool_frame(num) end

---ユーザー座標系のポーズの取得
---@param num userNum? ,オプションのパラメータ。 numが設定されていない場合、現在のユーザー座標系ポーズが取得されます。 注意：rx、ry、rzはラジアン単位
---@return pose ... 対応するユーザー座標系ポーズ
function get_user_frame(num) end

---ツール座標系の番号の取得
---@return toolNum ... 現在のロボットツール座標系の番号
function get_tool_no() end

---ユーザー座標系の番号の取得
---@return userNum ... 現在のロボットユーザー座標系の番号
function get_user_no() end

---ツール有効状態の確認
---@param num toolNum 現在のツール番号
---@return enable ...
function check_tool_frame_enable(num) end

---ユーザー座標系の有効状態を確認
---@param num userNum 現在のユーザー座標系番号
---@return enable ...
function check_user_frame_enable(num) end

---M変数レジスタインターフェースの取得（0-191）
---@param index integer バイト定義、[0, 191]
---@return any recv レジスタのインターフェース値
---@return result ret
function get_robot_register(index) end

---M変数レジスタインターフェースの設定（66-191）
---@param index integer レジスタアドレス、[66, 191]
---@param size integer バイト単位、[1, 128]、sizeとindexの合計値は192以下でなければならない
---@param value string | integer レジスタ値、16進数の文字列または符号なし整数。注：値の型が符号なし整数の場合、サイズの範囲は[1, 4]で、値の範囲は[0, 2^(8*size)-1)]です
function set_robot_register(index, size, value) end

---M変数レジスタインターフェースの取得（192-575）
---@param index any ]
---@return any ... 0：成功
---@return any ... -1：失敗
---@return any ... レジスタのインターフェース値
function get_robot_extra_register(index) end

---M変数レジスタインターフェースの設定（300-447）
---@param index integer レジスタアドレス [300, 447]
---@param size integer バイト単位で、sizeとindexの合計値は448以下である必要があります
---@param string string | integer レジスタ値、16進数の文字列または符号なし整数。注：値の型が符号なし整数の場合、サイズの範囲は[1, 4]で、値の範囲は[0, 2^(8*size)-1)]です
function set_robot_extra_register(index, size, string) end

---現在のTCP速度の取得
---@return number ... 現在のTCP速度、単位：mm/s
function get_current_tcp_spd() end

---ベース座標系内のフランジ中心ポーズの取得
---@return pose ... ロボットの現在のポーズ
function get_flange_pose_inbase() end

---ユーザー座標系内のフランジ中心ポーズの取得
---@return pose ... ロボットの現在のユーザー座標系ポーズ
function get_flange_pose_inuser() end

---ロボットポーズの取得
---@return pose ... ロボットの現在のポーズ
function get_tcp_pose() end

---現在のユーザー座標系内のTCPポーズの取得
---@return pose ... ロボットの現在のユーザー座標系内のTCPポーズ
function get_tcp_pose_inuser() end

---ターミナル485モードの取得
---@return rs485Mode ...
function get_terminal_485_mode() end

---2点間の距離の取得
---@param var1 pose
---@param var2 pose
---@return number ... 2点間の距離、単位：mm
function get_point_distance(var1, var2) end

---ジョイント温度の取得
---@return number[] ... すべての6つのジョイントの温度
function get_joint_tmp() end

---ポーズの差分を計算
---@param var1 pose
---@param var2 pose
---@return nil | pose ... 失敗｜ポーズの差分
function pose_sub(var1, var2) end

---ポーズから同次行列への変換
---@param var1 pose
---@return nil | matrix ... 失敗｜同次行列
function pose_to_matrix(var1) end

---同次行列からポーズへの変換
---@param var1 matrix
---@return nil | pose ... 失敗｜対応するポーズ
function matrix_to_pose(var1) end

---位置と回転ベクトルから同次行列への変換
---@param var1 pose オイラー角度
---@return nil | matrix ... 失敗｜4x4の2次元配列
function pos_rot_vector_to_matrix(var1) end

---同次行列から位置と回転ベクトルへの変換
---@param var1 matrix 同次行列
---@return nil | pose ... オイラー角度
function matrix_to_pos_rot_vector(var1) end

---位置とクォータニオンから同次行列への変換
---@param var1 quaternion クォータニオン
---@return nil | matrix ... 失敗｜同次行列
function quaternion_to_matrix(var1) end

---同次行列から位置とクォータニオンへの変換
---@param var1 matrix 同次行列
---@return nil | quaternion ... 失敗｜クォータニオン
function matrix_to_quaternion(var1) end

---ユーザー座標系データをデカルト座標系データに変換
---@param pose_in_user pose ユーザー座標系内のデータ
---@param user_frame pose ユーザー座標系
---@return pose ... ユーザー座標系に対応するデカルト座標系のデータ
function convert_pose_from_user_to_cart(pose_in_user, user_frame) end

---デカルト座標系データをユーザー座標系データに変換
---@param cart_pose pose デカルト座標系内のデータ
---@param user_frame pose ユーザー座標系
---@return pose ... ユーザー座標系に対応するデータ
function convert_pose_from_cart_to_user(cart_pose, user_frame) end

---行列の乗算
---@param m1 matrix 行列1
---@param m2 matrix 行列2
---@return matrix ... 乗算後の行列
---_Tips:_
---
---mは2x2配列で、最大で6x6配列です
function matrix_mul(m1, m2) end

---行列の逆行列
---@param m matrix
---@return matrix ... 逆行列
---_Tips:_
---
---mは2x2配列で、最大で6x6配列です
function matrix_inv(m) end

---ユーザー座標系データの計算
---@param var1 pose キャリブレーションポイントツールエンドポーズ1
---@param var2 pose キャリブレーションポイントツールエンドポーズ2
---@param var3 pose キャリブレーションポイントツールエンドポーズ3
---@return nil | pose ...
function calculate_user_frame(var1, var2, var3) end

---ツールTCP位置の計算
---@param var1 pose キャリブレーションポイントツールエンドポーズ1
---@param var2 pose キャリブレーションポイントツールエンドポーズ2
---@param var3 pose キャリブレーションポイントツールエンドポーズ3
---@param var4 pose キャリブレーションポイントツールエンドポーズ4
---@return nil | number[] ... 失敗｜ツールTCP中心データ [x、y、z]
function calculate_tool_position(var1, var2, var3, var4) end

---エンドエフェクタパイロットランプ制御モードの設定
---@param var1 0|1 0：常時点灯モード ｜ 1：カスタムモード
---@return result ...
function set_ending_pilot_lamp_ctrl_mode(var1) end

---エンドエフェクタパイロットランプ制御モードの取得
---@return 0|1 ... 0：常時点灯モード ｜ 1：カスタムモード
function get_ending_pilot_lamp_ctrl_mode() end
