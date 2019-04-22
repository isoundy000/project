-- 上行命令列表, key 与 value 均不能重复
local MAJIANG_COMMANDS = {
    HZMJ_ENTER_ROOM = 1001,
    HZMJ_LEAVE_ROOM = 1002,  -- 退出房间
    HZMJ_ROOM_INFO = 1003,  -- 房间配置数据
    HZMJ_PLAYER_ENTER_ROOM = 1004,  -- 玩家进入房间
    HZMJ_OWNER_DISMISS = 1005, -- 房主解散房间
    HZMJ_GAME_START = 1006,  -- 游戏开始
    HZMJ_GAME_OVER = 1007,  -- 游戏结束
    HZMJ_ROUND_START = 1008,  -- 一局开始
    HZMJ_ROUND_OVER = 1009,  -- 一局结束
    HZMJ_REQUEST_DISMISS = 1010,  -- 申请解散房间
    HZMJ_READY = 1011,
    HZMJ_UNREADY = 1081,
    HZMJ_TURN_TO = 1012,  -- 轮到某人
    HZMJ_CHU_PAI = 1013,  -- 出牌
    HZMJ_PLAYER_PASS = 1014,  -- 过
    HZMJ_TIAN_HU_START = 1015 , --天胡时间到
    HZMJ_TIAN_HU_END = 1016 , --天胡结束
    HZMJ_USER_GANG = 1017 , --玩家提牌
    HZMJ_DEAL_CARD = 1018, -- 发牌 
    HZMJ_USER_AFTER_GANG = 1019 , --杠后牌
    HZMJ_USER_MO_PAI = 1020 , -- 玩家摸牌公示
    HZMJ_USER_BU_CARD = 1021, -- 补牌
    HZMJ_USER_PENG = 1022, -- 碰
    HZMJ_USER_CHI = 1023, -- 吃 
    HZMJ_ALL_PASS = 1028, -- 所有人都过牌
    HZMJ_ONLINE_STATE = 1024,  -- 在线事件广播   在线 离线
    HZMJ_BROADCAST = 1025,  -- 客户端请求房间内广播
    HZMJ_USER_HU = 1026,-- 胡牌 
    HZMJ_NOTIFY_HU = 1027 ,-- 通知玩家选择是否胡牌
    HZMJ_DEBUG_CONFIG_CARD = 1029,  -- 调试设牌命令
    HZMJ_BEGIN_CHUI = 1030,  -- 开始锤
    HZMJ_NOTIFY_LOCATION = 1031,  -- 通知位置
    HZMJ_REQUEST_LOCATION = 1032,  -- 通知位置
    HZMJ_PLAYER_CHUI = 1033,
    -- MJ_PUBLCI_OPARERATE_START = 1033,
    HZMJ_PUBLCI_OPARERATE_ENDED = 1034,
    HZMJ_PUBLIC_TIME = 1036,
    HZMJ_PLAY_ACTION = 1035,
    HZMJ_SHOW_BIRDS = 1038,
    HZMJ_UPDATE_SCORE = 1037,
    HZMJ_CLUB_DISMISSROOM = 1083, -- 抽奖 
    HZMJ_GET_ALL_PLAYER_CARDS = 1044,

    HZMJ_ARENA_GOLD_RECHARGE = 1072,
    HZMJ_ARENA_GOLD_NOT_ENOUGH = 1073,
    HZMJ_ARENA_ALL_PLAYER_RECHARGE_FINISH = 1074,
    HZMJ_ARENA_DEDUCTIONS = 1075,
    HZMJ_ARENA_ROUND_OVER_BY_USER_NOT_GOLD = 1076,
    HZMJ_CHANGE_SIT = 1095, 
}

HZMJ_T_IN_IDLE = 0  -- 无状态
HZMJ_T_IN_CHU_PAI = 1  -- 在出牌中
HZMJ_T_IN_PUBLIC_OPRATE = 2  -- 公共操作过程中
HZMJ_T_IN_MO_PAI = 3  -- 在摸牌中 暗(未公示)
HZMJ_T_IN_MO_PAI_CALL = 4 -- 在摸牌后的呼叫中
HZMJ_T_IN_MING_GANG_PAI_CALL = 5  -- 抢杠胡判断流程
HZMJ_T_IN_GONG_GANG_PAI_CALL = 6  -- 抢杠胡判断流程
HZMJ_T_IN_AN_GANG_PAI_CALL = 7  -- 抢杠胡判断流程
HZMJ_T_IN_GANG_PAI_CALL = 8  -- 杠牌操作流程
HZMJ_T_IN_OTHER_GANG_PAI_CALL = 10  -- 杠牌后自己不可操作别人的操作流程
HZMJ_T_IN_WILL_BEGIN_OPTION = 10
-- 反转命令列表得到的命令的字符串列表，反转时要保证命令的唯一性

COMMANDS = COMMANDS or {}
table.merge(COMMANDS, MAJIANG_COMMANDS)

COMMAND_NAMES = COMMAND_NAMES or {}
table.merge(COMMAND_NAMES, reverseCommands(COMMANDS))

