
SCRIPT_VERSION_ID = 26 -- 脚本版本ID

DEFAULT_FONT = ""  -- 默认字体

HEART_BEAT_SECONDS = 5 -- 心跳时间间隔
HOST_PLAYER_KEY = (function () return '134e613d2ab7f290b876418f4e0ae596' end)()  -- 用户数据加密密码

HTTP_SIGN_KEY = "2009CFD4-B5B1-4468-9ACE-60C3C6667B22"

JFITEM_PATH = cc.FileUtils:getInstance():getWritablePath() .. "jfitem"

QCODE_PATH = cc.FileUtils:getInstance():getWritablePath() .. "erma"


FENXIANGNEIRONG = {}
FENXIANGNEIRONG[1] = "约局游戏，再也不用担心外挂问题"
FENXIANGNEIRONG[2] = "玩家专属，超省流量，没有WI-FI也能玩上一整天"
FENXIANGNEIRONG[3] = "终于找到这款游戏，没有外挂，无法作弊，还能赚点零花钱"
FENXIANGNEIRONG[4] = "配有腾讯云服务器，运行流畅，安全保障"
FENXIANGNEIRONG[5] = "二缺一啦，就差你一个！每日免费钻石，登陆分享即可领取"
FENXIANGNEIRONG[6] = "美女最多的游戏，等你来撩"
FENXIANGNEIRONG[7] = "全新模式体验， 不服来干"

IOS_IAP_PRODUCTS = {
    "com.shenyou.cdphz",
    "com.shenyou.cdphz_2",     
    "com.shenyou.cdphz_3",
}
HTTP_OK = 1
HTTP_PARAMS_ERROR = -1
HTTP_SIGN_ERROR = -2
HTTP_SYSTEM_ERROR = -3
HTTP_ROOM_NOT_EXIST = -4
HTTP_HAVE_OTHER_ROOM = -5  -- 已经创建了别的房间
HTTP_UID_ERROR = -6  -- 错误的UID
HTTP_PASSWORD_ERR = -7  -- 密码错误
HTTP_DIAMONDS_NOT_ENOUGH = -8  -- 钻石不足
DIAMONDS_CLUB_NOT_ENOUGH = -33 -- 钻石不足，俱乐部预扣钻
HTTP_ACCESS_DENNY = -9  -- 操作被禁止
VERIFY_CODE_ERR = -10  -- 验证码错误
HTTP_OPERATION_TOO_FREQUENT = -11  -- 操作过于频繁
HTTP_SHARE_CODE_NOT_EXIST = -12  -- 不存在的分享码

WEB_OK = 1
WEB_SIGN_FAIL = -1  -- # 签名错误
WEB_DATA_BROKEN = -2  -- # 客户端请求数据错误，不符合即定格式
WEB_SYSTEM_ERR = -3  -- # 系统错误
WEB_ROOM_NOT_EXIST = -4  -- # 房间不存在
WEB_HAVE_OTHER_ROOM = -5  -- # 已经创建了别的房间
WEB_UID_ERROR = -6  -- # 错误的UID
WEB_PASSWORD_ERR = -7  -- # 密码错误
WEB_DIAMONDS_NOT_ENOUGH = -8  -- # 钻石不足
WEB_ACCESS_DENNY = -9  -- # 操作被禁止
WEB_VERIFY_CODE_ERR = -10  -- # 验证码错误
WEB_OPERATION_TOO_FREQUENT = -11  -- # 操作过于频繁
WEB_SHARE_CODE_NOT_EXIST = -12  -- # 不存在的分享码

WEB_AUTO_TOKEN_EXPIRED = -13  -- # 自动登录的token已过期
WEB_CREATE_ROOM_LIMIT = -14  -- # 代开房数量已满
WEB_NEED_LEFT_DIAMONDS = -15  -- # 剩余钻石不足

WEB_ERROR_STRING = 
{
    [WEB_OK] = {"成功", "WEB_OK"},
    [WEB_SIGN_FAIL] = {"签名错误", "WEB_SIGN_FAIL"},
    [WEB_DATA_BROKEN] = {"客户端请求数据错误，不符合即定格式", "WEB_DATA_BROKEN"},
    [WEB_SYSTEM_ERR] = {"系统错误", "WEB_SYSTEM_ERR"},
    [WEB_ROOM_NOT_EXIST] = {"房间不存在", "WEB_ROOM_NOT_EXIST"},
    [WEB_HAVE_OTHER_ROOM] = {"已经创建了别的房间", "WEB_HAVE_OTHER_ROOM"},
    [WEB_UID_ERROR] = {"错误的UID", "WEB_UID_ERROR"},
    [WEB_PASSWORD_ERR] = {"密码错误", "WEB_PASSWORD_ERR"},
    [WEB_DIAMONDS_NOT_ENOUGH] = {"钻石不足", "WEB_DIAMONDS_NOT_ENOUGH"},
    [WEB_ACCESS_DENNY] = {"操作被禁止", "WEB_ACCESS_DENNY"},
    [WEB_VERIFY_CODE_ERR] = {"验证码错误", "WEB_VERIFY_CODE_ERR"},
    [WEB_OPERATION_TOO_FREQUENT] = {"操作过于频繁", "WEB_OPERATION_TOO_FREQUENT"},
    [WEB_SHARE_CODE_NOT_EXIST] = {"不存在的分享码", "WEB_SHARE_CODE_NOT_EXIST"}
}

CLUB_HTTP_ERR = {}
CLUB_HTTP_ERR[-2] = "子服务器错误"
CLUB_HTTP_ERR[-3] = "系统错误"
CLUB_HTTP_ERR[-6] = "钻石不足"
CLUB_HTTP_ERR[-8] = "钻石不足"
CLUB_HTTP_ERR[-9] = "无此操作权限"
CLUB_HTTP_ERR[-14] = "开房数已满"
CLUB_HTTP_ERR[-15] = "剩余钻石不足"
CLUB_HTTP_ERR[-16] = "社区数量达上限"
CLUB_HTTP_ERR[-17] = "当前已加入社区"
CLUB_HTTP_ERR[-18] = "社区不存在或当前在解散中"
CLUB_HTTP_ERR[-19] = "社区人数已满"
CLUB_HTTP_ERR[-20] = "社区等级已达上限"
CLUB_HTTP_ERR[-21] = "小二不能直接踢"
CLUB_HTTP_ERR[-22] = "只有代理才可以开房"
CLUB_HTTP_ERR[-23] = "请先设置默认玩法"
CLUB_HTTP_ERR[-24] = "钻石不足,需要至少50颗才能开创社区"
CLUB_HTTP_ERR[-33] = "钻石不足"
CLUB_HTTP_ERR[-34] = "比赛卡不足"
CLUB_HTTP_ERR[-35] = "总额不能超过10W"
CLUB_HTTP_ERR[-61] = "余额不足扣除"
CLUB_HTTP_ERR[-62] = "当前玩法设置已达上限"

CHECK_NETWORK = true  -- 是否开启强制网络检测
if DEBUG < 1 then  -- 正式环境必须要开断网检测
    CHECK_NETWORK = true
end

ROUND_SECONDS = 20  --呼叫等待时间

SEX_FEMALE = 0  -- 性别女
SEX_MALE = 1  -- 性别男

WIDTH_SCALE = 1 --display.width / DESIGN_WIDTH
HEIGHT_SCALE = 1 --display.height / DESIGN_HEIGHT 

REDOCRD_TIME = 10
--[[
配置选项段，注意这里都统一以CONFIG_开头，并且变量名与变量的值相等，且全部大写
]]
CONFIG_SOUND_ON = "CONFIG_SOUND_ON"
CONFIG_MUSIC_ON = "CONFIG_MUSIC_ON"
CONFIG_VIBRATE_ON = "CONFIG_VIBRATE_ON"
CONFIG_AUTO_SIT_DOWN = "CONFIG_AUTO_SIT_DOWN"
CONFIG_MUSIC_VOLUME = "CONFIG_MUSIC_VOLUME"
CONFIG_SOUND_VOLUME = "CONFIG_SOUND_VOLUME"
CONFIG_DEFAULT_HUMAN_SOUND = "CONFIG_DEFAULT_HUMAN_SOUND"
CONFIG_ZZSELECT_ROUND  = "CONFIG_ZZSELECT_ROUND"        --转转麻将
CONFIG_SELECT_WANFA  = "CONFIG_SELECT_WANFA"
CONFIG_SELECT_HUFA  = "CONFIG_SELECT_HUFA"
CONFIG_SELECT_JUSHU1  = "CONFIG_SELECT_JUSHU1"
CONFIG_SELECT_JUSHU2  = "CONFIG_SELECT_JUSHU2"
CONFIG_SELECT_JUSHU3  = "CONFIG_SELECT_JUSHU3"
CONFIG_SELECT_JUSHU4  = "CONFIG_SELECT_JUSHU4"

CONFIG_SELECT_ROUND_TZ = "CONFIG_SELECT_ROUND_TZ"  -- 天炸局数
CONFIG_SELECT_GAMETYPE_TZ = "CONFIG_SELECT_GAMETYPE_TZ" -- 天炸游戏类型
CONFIG_SELECT_CHUI_TZ = "CONFIG_SELECT_CHUI_TZ"  -- 天炸锤
CONFIG_SELECT_ZWUSHIK_TZ = "CONFIG_SELECT_ZWUSHIK_TZ"  -- 天炸正510k
CONFIG_SELECT_ZHUDOU_TZ = "CONFIG_SELECT_ZHUDOU_TZ"  -- 天炸助陡
CONFIG_SELECT_FANTI_TZ = "CONFIG_SELECT_FANTI_TZ"  -- 天炸反踢
CONFIG_SELECT_BAOZHANG_TZ = "CONFIG_SELECT_BAOZHANG_TZ"  -- 天炸报张

CONFIG_SELECT_JUSHU_NIUNIU = "CONFIG_SELECT_JUSHU_NIUNIU"
CONFIG_SELECT_ZHUANG_TYPE_NIUNIU = "CONFIG_SELECT_ZHUANG_TYPE_NIUNIU"

CONFIG_SELECT_JUSHU_PDK = "CONFIG_SELECT_JUSHU_PDK"
CONFIG_SELECT_ZHANG_SHU_PDK = "CONFIG_SELECT_ZHANG_SHU_PDK"
CONFIG_SELECT_XIAN_SHOU_PDK = "CONFIG_SELECT_XIAN_SHOU_PDK"
CONFIG_SELECT_REN_SHU_PDK = "CONFIG_SELECT_REN_SHU_PDK"
CONFIG_SELECT_CHAI_ZHA_PDK = "CONFIG_SELECT_CHAI_ZHA_PDK"
CONFIG_SELECT_WEI_PAI_PDK = "CONFIG_SELECT_WEI_PAI_PDK"
CONFIG_SELECT_3A_ZHA_PDK = "CONFIG_SELECT_3A_ZHA_PDK"
CONFIG_SELECT_ZHA_DAN_10FEN_PDK = "CONFIG_SELECT_ZHA_DAN_10FEN_PDK"
CONFIG_SELECT_BAO_SHUANG_PDK = "CONFIG_SELECT_BAO_SHUANG_PDK"
CONFIG_SELECT_XIAN_SHI_PAI_ZHANG = "CONFIG_SELECT_XIAN_SHI_PAI_ZHANG"

CONFIG_ZZXIANZHUANG    = "CONFIG_ZZXIANZHUANG"        --转转麻将
CONFIG_HU_QIDUI      = "CONFIG_HU_QIDUI"
CONFIG_ZHONG_LAIZI   = "CONFIG_ZHONG_LAIZI"
CONFIG_ZZBIRDS_NUMS    = "CONFIG_ZZBIRDS_NUMS"        --转转麻将
CONFIG_CSSELECT_ROUND  = "CONFIG_CSSELECT_ROUND"      --长沙麻将
CONFIG_CSXIANZHUANG    = "CONFIG_CSXIANZHUANG"        --长沙麻将
CONFIG_CSBIRDS_NUMS    = "CONFIG_CSBIRDS_NUMS"        --长沙麻将
CONFIG_SELECT_FENGDING    = "CONFIG_SELECT_FENGDING"        --封顶普跑
CONFIG_SELECT_FENGDING6   = "CONFIG_SELECT_FENGDING6"        --封顶68番
CONFIG_SELECT_FENGDING8   = "CONFIG_SELECT_FENGDING8"        --封顶810番
CONFIG_SELECT_QIHU    = "CONFIG_SELECT_QIHU"        --起胡普跑
CONFIG_SELECT_QIHU4    = "CONFIG_SELECT_QIHU4"        --起胡普跑
CONFIG_SELECT_QIHU6    = "CONFIG_SELECT_QIHU6"        --起胡68番
CONFIG_SELECT_QIHU8    = "CONFIG_SELECT_QIHU8"        --起胡810番
CONFIG_SELECT_ZUANDONG = "CONFIG_SELECT_ZUANDONG"
CONFIG_SELECT_HUANGFAN4 = "CONFIG_SELECT_HUANGFAN4"
CONFIG_SELECT_SHUAHOU4 = "CONFIG_SELECT_SHUAHOU4"
CONFIG_SELECT_TINGHU4 = "CONFIG_SELECT_TINGHU4"
CONFIG_SELECT_HUANGFAN6 = "CONFIG_SELECT_HUANGFAN6"
CONFIG_SELECT_SHUAHOU6 = "CONFIG_SELECT_SHUAHOU6"
CONFIG_SELECT_TINGHU6 = "CONFIG_SELECT_TINGHU6"
CONFIG_SELECT_HUANGFAN8 = "CONFIG_SELECT_HUANGFAN8"
CONFIG_SELECT_SHUAHOU8 = "CONFIG_SELECT_SHUAHOU8"
CONFIG_SELECT_3TI5KAN= "CONFIG_SELECT_3TI5KAN"
CONFIG_SELECT_3TI5KAN8= "CONFIG_SELECT_3TI5KAN8"
CONFIG_SELECT_HANGHANGXI8= "CONFIG_SELECT_HANGHANGXI8"
CONFIG_SELECT_TINGHU8 = "CONFIG_SELECT_TINGHU8"
CONFIG_SELECT_FENGDING4= "CONFIG_SELECT_FENGDING4"

CONFIG_SELECT_GAMETYPE= "CONFIG_SELECT_GAMETYPE"
CONFIG_SELECT_GAMETYPE_SHAOYANG= "CONFIG_SELECT_GAMETYPE_SHAOYANG"
CONFIG_SELECT_GAMETYPE_GUANGXI= "CONFIG_SELECT_GAMETYPE_GUANGXI"
CONFIG_SELECT_GAMETYPE_CHANGSHA= "CONFIG_SELECT_GAMETYPE_CHANGSHA"
CONFIG_SELECT_GAMETYPE_YIYANG = "CONFIG_SELECT_GAMETYPE_YIYANG"

CONFIG_SELECT_MJWANFA = "CONFIG_SELECT_MJWANFA"
CONFIG_SELECT_MJWANFA_SHAOYANG = "CONFIG_SELECT_MJWANFA_SHAOYANG"
CONFIG_SELECT_MJJUSHU1 = "CONFIG_SELECT_MJJUSHU1"
CONFIG_SELECT_MJJUSHU2 = "CONFIG_SELECT_MJJUSHU2"
CONFIG_SELECT_MJJUSHU3 = "CONFIG_SELECT_MJJUSHU3"
CONFIG_SELECT_MJFIXEDBIRD = "CONFIG_SELECT_MJFIXEDBIRD"
CONFIG_SELECT_MJHONGZHONGNIAO159 = "CONFIG_SELECT_MJHONGZHONGNIAO159"
CONFIG_SELECT_MJNIAO1 = "CONFIG_SELECT_MJNIAO1"
CONFIG_SELECT_MJNIAO2 = "CONFIG_SELECT_MJNIAO2"
CONFIG_SELECT_MJNIAO3 = "CONFIG_SELECT_MJNIAO3"
CONFIG_SELECT_MJPIAO = "CONFIG_SELECT_MJPIAO"
CONFIG_SELECT_MJJIEPAO = "CONFIG_SELECT_MJJIEPAO"
CONFIG_SELECT_MJQIANGGANG = "CONFIG_SELECT_MJQIANGGANG"
CONFIG_SELECT_MJQIDUI = "CONFIG_SELECT_MJQIDUI"
CONFIG_SELECT_MJZHUANZHUANIAOSCORE = "CONFIG_SELECT_MJZHUANZHUANIAOSCORE"
CONFIG_SELECT_MJISSORTBIRD = "CONFIG_SELECT_MJISSORTBIRD"

CONFIG_SELECT_BOX = "CONFIG_SELECT_BOX"

--邵阳麻将
CONFIG_SELECT_PIAO4 = "CONFIG_SELECT_PIAO4"
CONFIG_SELECT_MJJIEPAO4 = "CONFIG_SELECT_MJJIEPAO4"
CONFIG_SELECT_QMJIANGGANG4 = "CONFIG_SELECT_QMJIANGGANG4"
CONFIG_SELECT_MJQIDUI4 = "CONFIG_SELECT_MJQIDUI4"
CONFIG_SELECT_MJZHUANZHUANIAOSCORE4 = "CONFIG_SELECT_MJZHUANZHUANIAOSCORE4"
CONFIG_SELECT_MJISSORTBIRD4 = "CONFIG_SELECT_MJISSORTBIRD4"
CONFIG_SELECT_MJNIAO4 = "CONFIG_SELECT_MJNIAO4"
CONFIG_SELECT_MJPIAO4 = "CONFIG_SELECT_MJPIAO4"
CONFIG_SELECT_MJJUSHU4 = "CONFIG_SELECT_MJJUSHU4"
CONFIG_SELECT_MJQIANGGANG4 = "CONFIG_SELECT_MJQIANGGANG4"

CONFIG_SELECT_MJPIAOCS = "CONFIG_SELECT_MJPIAOCS"
CONFIG_SELECT_QIDUICS = "CONFIG_SELECT_QIDUICS"
CONFIG_SELECT_NIAOSCORECS="CONFIG_SELECT_NIAOSCORECS"
CONFIG_SELECT_MJISSORTBIRDCS = "CONFIG_SELECT_MJISSORTBIRDCS"
CONFIG_SELECT_MJNIAOCS="CONFIG_SELECT_MJNIAOCS"
CONFIG_SELECT_QIANGGANGCS ="CONFIG_SELECT_QIANGGANGCS"
CONFIG_SELECT_MJJIEPAOCS="CONFIG_SELECT_MJJIEPAOCS"
CONFIG_SELECT_CSMJWANFA = "CONFIG_SELECT_CSMJWANFA"
CONFIG_SELECT_MJJUSHUCS = "CONFIG_SELECT_MJJUSHUCS"
CONFIG_SELECT_CSMJSIXI = "CONFIG_SELECT_CSMJSIXI"
CONFIG_SELECT_CSMJBUBUGAO= "CONFIG_SELECT_CSMJBUBUGAO"
CONFIG_SELECT_CSMJHAIDINIAO = "CONFIG_SELECT_CSMJHAIDINIAO"
CONFIG_SELECT_CSMJFENGDING = "CONFIG_SELECT_CSMJFENGDING"
CONFIG_SELECT_CSMJGANGHOUZHANG = "CONFIG_SELECT_CSMJGANGHOUZHANG"
CONFIG_SELECT_CSMJYIZHIHUA= "CONFIG_SELECT_CSMJYIZHIHUA"
CONFIG_SELECT_CSMJSANTONG="CONFIG_SELECT_CSMJSANTONG"
CONFIG_SELECT_CSMJISSORTBIRD= "CONFIG_SELECT_CSMJISSORTBIRD"
CONFIG_SELECT_CSMJGANGKAIFANG = "CONFIG_SELECT_CSMJGANGKAIFANG"

-- 牛鬼
CONFIG_SELECT_NG_ROUND = "CONFIG_SELECT_NG_ROUND"
CONFIG_SELECT_NG_WANFA  = "CONFIG_SELECT_NG_WANFA"
-- 牛鬼

-- 鬼胡子
CONFIG_SELECT_GHZ_JUHSU  = "CONFIG_SELECT_GHZ_JUHSU"
CONFIG_SELECT_GHZ_KANWAI  = "CONFIG_SELECT_GHZ_KANWAI"
CONFIG_SELECT_GHZ_FENGDING = "CONFIG_SELECT_GHZ_FENGDING"
-- 鬼胡子

DEFAULT_CONFIGS = {  -- 一些默认的设置
    [CONFIG_SOUND_ON] = true,
    [CONFIG_MUSIC_ON] = true,
    [CONFIG_VIBRATE_ON] = true,
    [CONFIG_AUTO_SIT_DOWN] = false,
    [CONFIG_MUSIC_VOLUME] = 1.0,
    [CONFIG_SOUND_VOLUME] = 1.0,
    [CONFIG_DEFAULT_HUMAN_SOUND] = 1,
    [CONFIG_ZZSELECT_ROUND] = true,
    [CONFIG_SELECT_WANFA] = 3,
    [CONFIG_SELECT_HUFA] = 1,
    [CONFIG_SELECT_JUSHU1] = 1,
    [CONFIG_SELECT_JUSHU2] = 1,
    [CONFIG_SELECT_JUSHU3] = 1,
    [CONFIG_SELECT_JUSHU4] = 1,

    [CONFIG_SELECT_JUSHU_PDK] = 6,
    [CONFIG_SELECT_ZHANG_SHU_PDK] = 16,
    [CONFIG_SELECT_XIAN_SHOU_PDK] = 1,
    [CONFIG_SELECT_REN_SHU_PDK] = 1,
    [CONFIG_SELECT_CHAI_ZHA_PDK] = 1,
    [CONFIG_SELECT_WEI_PAI_PDK] = 1,
    [CONFIG_SELECT_3A_ZHA_PDK] = 0,
    [CONFIG_SELECT_ZHA_DAN_10FEN_PDK] = 1,
    [CONFIG_SELECT_XIAN_SHI_PAI_ZHANG] = 1,

    [CONFIG_SELECT_ZHUANG_TYPE_NIUNIU] = 1,
    [CONFIG_SELECT_JUSHU_NIUNIU] = 10,

    [CONFIG_SELECT_ROUND_TZ] = 6,
    [CONFIG_SELECT_GAMETYPE_TZ] = 1,
    [CONFIG_SELECT_CHUI_TZ] = 1,
    [CONFIG_SELECT_ZWUSHIK_TZ] = 1,
    [CONFIG_SELECT_ZHUDOU_TZ] = 0,
    [CONFIG_SELECT_FANTI_TZ] = 1,
    [CONFIG_SELECT_BAOZHANG_TZ] = 1,
    [CONFIG_ZZXIANZHUANG] = false,
    [CONFIG_HU_QIDUI] = false,
    [CONFIG_ZHONG_LAIZI] = false,
    [CONFIG_SELECT_FENGDING] = 4,
    [CONFIG_SELECT_QIHU] = 1,
    [CONFIG_SELECT_QIHU4] = 1,
    [CONFIG_SELECT_FENGDING4] = 1,
    [CONFIG_SELECT_FENGDING6] = 1,
    [CONFIG_SELECT_QIHU6] = 1,
    [CONFIG_SELECT_FENGDING8] = 2,
    [CONFIG_SELECT_QIHU8] = 1,
    [CONFIG_ZZBIRDS_NUMS] = 0,
    [CONFIG_CSSELECT_ROUND] = true,
    [CONFIG_CSXIANZHUANG] = true,
    [CONFIG_ZZBIRDS_NUMS] = 6,
    [CONFIG_SELECT_ZUANDONG] = true,
    [CONFIG_SELECT_HUANGFAN4] = true,
    [CONFIG_SELECT_SHUAHOU4] = true,
    [CONFIG_SELECT_TINGHU4]  = true,
    [CONFIG_SELECT_HUANGFAN6] = true,
    [CONFIG_SELECT_SHUAHOU6] = true,
    [CONFIG_SELECT_TINGHU6]  = true,
    [CONFIG_SELECT_3TI5KAN8] = true,
    [CONFIG_SELECT_3TI5KAN] = true,
    [CONFIG_SELECT_SHUAHOU8] = true,
    [CONFIG_SELECT_HUANGFAN8] = true,
    [CONFIG_SELECT_HANGHANGXI8] = true,
    [CONFIG_SELECT_TINGHU8]  = true,
    [CONFIG_SELECT_GAMETYPE] = 1,
    [CONFIG_SELECT_GAMETYPE_SHAOYANG] = 1,
    [CONFIG_SELECT_GAMETYPE_GUANGXI] = 1,
    [CONFIG_SELECT_GAMETYPE_CHANGSHA] = 1,
    [CONFIG_SELECT_GAMETYPE_YIYANG] = 1,

    [CONFIG_SELECT_MJWANFA] = 1,
    [CONFIG_SELECT_MJWANFA_SHAOYANG] = 1,
    [CONFIG_SELECT_MJJUSHU1] = 1,
    [CONFIG_SELECT_MJJUSHU2] = 1,
    [CONFIG_SELECT_MJJUSHU3] = 1,
    [CONFIG_SELECT_MJFIXEDBIRD] = 0,
    [CONFIG_SELECT_MJHONGZHONGNIAO159] = 2,
    [CONFIG_SELECT_MJNIAO1] = 2,
    [CONFIG_SELECT_MJNIAO2] = 3,
    [CONFIG_SELECT_MJNIAO3] = 3,
    [CONFIG_SELECT_MJPIAO] = 1,
    [CONFIG_SELECT_MJJIEPAO] = 0,
    [CONFIG_SELECT_MJQIANGGANG] = 0,
    [CONFIG_SELECT_MJQIDUI] = 0,
    [CONFIG_SELECT_MJZHUANZHUANIAOSCORE] = 0,
    [CONFIG_SELECT_MJISSORTBIRD] = 1,
    [CONFIG_SELECT_BOX] = 0,
    [CONFIG_SELECT_PIAO4] = 1,
    [CONFIG_SELECT_MJJIEPAO4] = 1,
    [CONFIG_SELECT_QMJIANGGANG4] = 1,
    [CONFIG_SELECT_MJQIDUI4] = 1,
    [CONFIG_SELECT_MJZHUANZHUANIAOSCORE4] = 1,
    [CONFIG_SELECT_MJISSORTBIRD4] = 1,
    [CONFIG_SELECT_MJNIAO4] = 1,
    [CONFIG_SELECT_MJPIAO4] = 1,
    [CONFIG_SELECT_MJJUSHU4] = 1,
    [CONFIG_SELECT_MJQIANGGANG4] = 1,
    [CONFIG_SELECT_MJPIAOCS] = 1,
    [CONFIG_SELECT_QIDUICS] = 1,
    [CONFIG_SELECT_NIAOSCORECS] = 1, 
    [CONFIG_SELECT_MJISSORTBIRDCS] = 1,
    [CONFIG_SELECT_MJNIAOCS]= 1,
    [CONFIG_SELECT_QIANGGANGCS] = 1,
    [CONFIG_SELECT_MJJIEPAOCS]= 1,
    [CONFIG_SELECT_CSMJWANFA] = 1,
    [CONFIG_SELECT_MJJUSHUCS] = 1,
    [CONFIG_SELECT_CSMJSIXI] =1,
    [CONFIG_SELECT_CSMJBUBUGAO] = 1,
    [CONFIG_SELECT_CSMJHAIDINIAO] = 1,
    [CONFIG_SELECT_CSMJFENGDING] = 1,
    [CONFIG_SELECT_CSMJGANGHOUZHANG] = 1,
    [CONFIG_SELECT_CSMJYIZHIHUA] = 1,
    [CONFIG_SELECT_CSMJSANTONG] = 1,
    [CONFIG_SELECT_CSMJISSORTBIRD] = 1,
    [CONFIG_SELECT_CSMJGANGKAIFANG] = 1,

    [CONFIG_SELECT_NG_ROUND] = 6,
    [CONFIG_SELECT_NG_WANFA] = 1,

    [CONFIG_SELECT_GHZ_JUHSU]  = 1,
    [CONFIG_SELECT_GHZ_KANWAI]  = 1,
    [CONFIG_SELECT_GHZ_FENGDING] = 1,
}

CONSUMER_HANDCARDS = "CONSUMER_HANDCARDS"

-- 渠道配置信息，由后台来总控制这些变量来控制各种开关和环境信息
CHANNEL_CONFIGS = {
    HTTP_ENVIRONMENT = nil, -- http环境信息
    DIAMOND = true,        -- 钻石
    GUEST_LOGIN = true,    -- 游客登录
    WECHAT_LOGIN = true,   -- 微信登录
    SHARE = true,          -- 分享
    GAME_RECORED = true,   -- 战绩
    MESSAGE = true,        -- 消息
    HELP = true,           -- 帮助
    BROADCAST = true,      -- 广播
    IP = true,             -- IP显示
    AGGREMENT = true,      -- 用户协议
    CHAT = true,           -- 聊天
    ROUND_REVIEW = true,    -- 牌局回放开关
    JI_FU = false,    -- 积福活动 默认关闭 
    RECOMMEND = true,    -- 推广活动 默认打开
    DAI_LI = true,  -- 代理开关
    MARKET = false, -- 商城开关
    CLUB_IS_OPEN = true, -- 社区开关
    WX_AUTO_LOGIN = true,
    PAO_DE_KUAI = false,
    PENG_HU = false,
    NIU_NIU = true,
    YI_YANG_NIU_NIU = true,
    BING_CHENG_NIU_NIU = true,
    ZHUAN_ZHUAN_MA_JIANG = true,
    HONG_ZHONG_MA_JIANG = true,
    CHANG_SHA_MA_JIANG = true,
    DA_TONG_ZI = false,
    DOU = false,
    LOCATION = false,
    DEBUG_CARD = false,
    CDPHZ = true,
    DAO13 = true,
    SHUANG_KOU = true,
    YZCHZ = true,
    HSMJ = true,
    MO_MO_MA_JIANG = true,
    GAME_FHLMZ = true,
    FHHZMJ = true,
    HHQMT = true,
    CHUN_JIE_HUO_DONG = true,
    SYBP = true,
    LDFPF = true,
}

IS_OPEN_APP = false -- 是否打开app

CHAT_FACE = 1
CHAT_QUICK = 2
CHAT_TEXT = 3
CHAT_VOICE = 4
CHAT_FACE_ANIMATION = 5
CHAT_FACE_BQ = 6

CHAT_TEXT_LIMIT = 16

DEFAULT_CLICK_SOUND = "sounds/common/sound_button_click.mp3"

CONFIRMWINDOW_TYPE_TI_SHI = 1
CONFIRMWINDOW_TYPE_TUI_CHU = 2
CONFIRMWINDOW_TYPE_JIE_SAN_FANGJIAN = 3

FLAGS = {
    OK = 0,  -- 请求正常
    DATA_BROKEN = -1,  -- 客户端请求数据错误，不符合即定格式
    TOKEN_ERROR = -2,  -- TOKEN错误
    SYSTEM_ERROR = -3,  -- 系统错误
    DUPLICATE_LOGIN = -4,  -- 客户端收到通知，账号已在别处登陆
    SEAT_FULL = -5,  -- 坐位已满
    TABLE_NOT_EXIST = -6,  -- 桌子不存在
    USER_NOT_EXIST = -7,  -- 玩家数据不存在
    RULE_ERROR = -8,  -- 出牌不符合规则
    NOT_YOUR_TURN = -9,  -- 当前循问的玩家不是你
    CARD_NOT_EXIST = -10,  -- 所出牌不存在
    IN_OTHER_ROOM = -11,  -- 玩家当前已在其它房间中
    TABLE_FULL = -12,  -- 桌子已满
    NOT_YOUR_ROOM = -13,  -- 不是你的桌子无法解散
    COMMAND_DENNY = -14,  -- 命令不允许被执行
}

COLORS = {
}

PLATFORM_IDS = {
    ios = 1,
    android = 2,
    mac = 3,
    windows = 4,
}

TIPS_MESSAGE = {
    "没有大过对方的牌",
    "少于2个炸不能抖",
    "请选择要出的牌",
}

GAME_CDPHZ = 8
GAME_MJZHUANZHUAN = 9
GAME_MJHONGZHONG = 10
GAME_MJCHANGSHA = 12
GAME_TIANZHA = 13
GAME_SNKB = 14
GAME_YXHZP = 15
GAME_NXGHZ = 16
GAME_SYBP = 17
GAME_DYSXH = 18
GAME_NG = 19
GAME_PAODEKUAI =21
GAME_DA_TONG_ZI = 22
GAME_BCNIUNIU = 23
GAME_MJXIANGTAN = 25
GAME_PTNIUNIU = 30
GAME_13DAO = 33
GAME_SHUANGKOU = 32
GAME_YZCHZ = 34
GAME_HSMJ = 36
GAME_MMMJ = 37
GAME_FHHZMJ = 38
GAME_FHLMZ = 39
GAME_HHQMT = 40
GAME_LDFPF = 42
GAME_GAME_ALL = -1
GAME_DEFAULT = GAME_CDPHZ


SPECIAL_PROJECT = true --特殊定制开关，只有部分游戏的平台打开
-- 俱乐部可选择玩法

if SPECIAL_PROJECT then
    GAME_COMMON = {
    GAME_CDPHZ, GAME_PAODEKUAI, GAME_MJHONGZHONG,
    GAME_MJZHUANZHUAN, GAME_BCNIUNIU, GAME_MJCHANGSHA,
    GAME_DA_TONG_ZI, GAME_SHUANGKOU, GAME_13DAO, GAME_YZCHZ,
    GAME_HSMJ, GAME_MMMJ,GAME_FHHZMJ,GAME_FHLMZ,GAME_HHQMT,
    GAME_SYBP,GAME_LDFPF
}

GAME_CLUB = {GAME_PAODEKUAI,GAME_MJZHUANZHUAN,GAME_MJHONGZHONG,GAME_LDFPF}
GAME_CHAMPION = {GAME_PAODEKUAI, GAME_MJHONGZHONG, GAME_MJZHUANZHUAN, GAME_LDFPF}
else
    GAME_COMMON = {
    GAME_CDPHZ, GAME_PAODEKUAI, GAME_MJHONGZHONG,
    GAME_MJZHUANZHUAN, GAME_BCNIUNIU, GAME_MJCHANGSHA,
    GAME_DA_TONG_ZI, GAME_SHUANGKOU, GAME_13DAO, GAME_YZCHZ,
    GAME_HSMJ, GAME_MMMJ,GAME_FHHZMJ,GAME_FHLMZ,GAME_HHQMT,
    GAME_SYBP,GAME_LDFPF
}

GAME_CLUB = {GAME_CDPHZ,GAME_PAODEKUAI, GAME_SYBP,GAME_MJHONGZHONG, GAME_MJZHUANZHUAN, GAME_BCNIUNIU, GAME_MJCHANGSHA, GAME_DA_TONG_ZI,GAME_HSMJ, GAME_SHUANGKOU,GAME_13DAO,GAME_FHHZMJ,GAME_FHLMZ,GAME_LDFPF}
GAME_CHAMPION = {GAME_CDPHZ, GAME_PAODEKUAI, GAME_MJHONGZHONG, GAME_MJZHUANZHUAN, GAME_BCNIUNIU, GAME_MJCHANGSHA}
end





GAMES_3 = {GAME_CDPHZ, GAME_TIANZHA, GAME_SNKB, GAME_YXHZP, GAME_NXGHZ, GAME_PAODEKUAI, GAME_BCNIUNIU, GAME_DA_TONG_ZI, GAME_SHUANGKOU,GAME_YZCHZ,GAME_HSMJ,GAME_HHQMT,GAME_SYBP,GAME_LDFPF}

GAMES_NAME = {
                [GAME_CDPHZ] = "常德跑胡",
                [GAME_MJZHUANZHUAN] = "转转麻将",
                [GAME_MJHONGZHONG] = "红中麻将",
                [GAME_MJCHANGSHA] = "长沙麻将",
                [GAME_PAODEKUAI] = "跑得快",
                [GAME_BCNIUNIU] = "拼十分",
                [GAME_DA_TONG_ZI] = "打筒子",
                [GAME_13DAO] = "十三道",
                [GAME_SHUANGKOU] = "金华双扣",
                [GAME_YZCHZ] = "永州扯胡子",
                [GAME_HSMJ] = "宁夏划水",
                [GAME_FHHZMJ] = "宁夏红中",
                [GAME_FHLMZ] = "宁夏老麻子",
                [GAME_HHQMT] = "怀化全名堂",
                [GAME_SYBP] = "邵阳剥皮",
                [GAME_LDFPF] = "娄底放炮罚",
                [GAME_GAME_ALL] = "全部",
             }

SUB_GAMES_NAME = {
    [GAME_BCNIUNIU] = {
        [1] = "固定庄",
        [2] = "牛牛上庄",
        [3] = "顺序装",
        [4] = "明牌抢庄",
        [5] = "世界大战",
        [6] = "冰城牛牛",
    }
}

GAMES_ICON = {
                [GAME_CDPHZ] = "cdphz",
                [GAME_MJZHUANZHUAN] = "zzmj",
                [GAME_MJHONGZHONG] = "hzmj",
                [GAME_MJCHANGSHA] = "csmj",
                [GAME_PAODEKUAI] = "pdk",
                [GAME_BCNIUNIU] = "niuniu",
                [GAME_DA_TONG_ZI] = "dtz",
                [GAME_13DAO] = "13d",
                [GAME_SHUANGKOU] = "shuangKou",
                [GAME_YZCHZ] = "yzchz",
                [GAME_HSMJ] = "hsmj",
                [GAME_MMMJ] = "mmmj",
                [GAME_FHHZMJ] = "fhhzmj",
                [GAME_FHLMZ] = "nxlmz",
                [GAME_HHQMT] = "hhqmt",
                [GAME_SYBP] = "sybp",
                [GAME_LDFPF] = "ldfpf",
            }

GAMES_PACKAGENAME = {
                        [GAME_MJZHUANZHUAN] = ".games.majiang",
                        [GAME_MJHONGZHONG] = ".games.hzmajiang",
                        [GAME_MJCHANGSHA] = ".games.csmj",
                        [GAME_PAODEKUAI] = ".games.paodekuai",
                        [GAME_BCNIUNIU] = ".games.niuniu",
                        -- [GAME_BCNIUNIU] = ".games.niuniu",
                        [GAME_CDPHZ] = ".games.cdphz",
                        [GAME_DA_TONG_ZI] = ".games.datongzi",
                        [GAME_SHUANGKOU] = ".games.shuangKou",
                        [GAME_13DAO] = ".games.dao13",
                        [GAME_YZCHZ] = ".games.yzchz",
                        [GAME_HSMJ] = ".games.hsmj",
                        [GAME_MMMJ] = ".games.mmmj",
                        [GAME_FHHZMJ] = ".games.fhhzmj",
                        [GAME_FHLMZ] = ".games.nxlmz",
                        [GAME_HHQMT] = ".games.hhqmt",
                        [GAME_SYBP] = ".games.sybp",
                        [GAME_LDFPF] = ".games.ldfpf",
                    }

GAMES_MJ = {
                GAME_MJZHUANZHUAN,
                GAME_MJHONGZHONG,
                GAME_MJCHANGSHA,
            }

GAMES_CLIENTBROADCAST = {
                            [GAME_CDPHZ] = "CDPHZ_BROADCAST",
                            [GAME_MJZHUANZHUAN] = "MJ_BROADCAST",
                            [GAME_MJHONGZHONG] = "HZMJ_BROADCAST",
                            [GAME_MJCHANGSHA] = "CS_MJ_BROADCAST",
                            [GAME_TIANZHA] = "TZ_BROADCAST",
                            [GAME_SNKB] = "KB_BROADCAST",
                            [GAME_YXHZP] = "HZP_BROADCAST",
                            [GAME_NXGHZ] = "GHZ_BROADCAST",
                            [GAME_DYSXH] = "TZ_BROADCAST",
                            [GAME_NG] = "NG_BROADCAST",
                            [GAME_PAODEKUAI] = "PDK_BROADCAST",
                            [GAME_BCNIUNIU] = "NIUNIU_BROADCAST",
                            -- [GAME_BCNIUNIU] = "NIUNIU_BROADCAST",
                            [GAME_DA_TONG_ZI] = "DTZ_GAME_BROADCAST",
                            [GAME_SHUANGKOU] = "SHUANGKOU_GAME_BROADCAST",
                            [GAME_13DAO] = "DAO13_BROADCAST",   
                            [GAME_YZCHZ] = "YZCHZ_BROADCAST",
                            [GAME_HSMJ] = "HS_MJ_BROADCAST",
                            [GAME_MMMJ] = "MMMJ_BROADCAST",
                            [GAME_FHHZMJ] = "FHHZMJ_BROADCAST",
                            [GAME_HHQMT] = "HHQMT_BROADCAST",
                            [GAME_FHLMZ] = "ZMZ_BROADCAST",
                            [GAME_SYBP] = "SYBP_BROADCAST",
                            [GAME_LDFPF] = "LDFPF_BROADCAST",
                        }

GAMES_REQUEST_DISMISS = {
                            [GAME_CDPHZ] = "REQUEST_DISMISS",
                            [GAME_MJZHUANZHUAN] = "MJ_REQUEST_DISMISS",
                            [GAME_MJHONGZHONG] = "HZMJ_REQUEST_DISMISS",
                            [GAME_MJCHANGSHA] = "CS_MJ_REQUEST_DISMISS",
                            [GAME_TIANZHA] = "TZ_REQUEST_DISMISS",
                            [GAME_SNKB] = "KB_REQUEST_DISMISS",
                            [GAME_YXHZP] = "HZP_REQUEST_DISMISS",
                            [GAME_NXGHZ] = "GHZ_REQUEST_DISMISS",
                            [GAME_DYSXH] = "TZ_REQUEST_DISMISS",
                            [GAME_NG] = "NG_REQUEST_DISMISS",
                            [GAME_PAODEKUAI] = "PDK_REQUEST_DISMISS",
                            [GAME_BCNIUNIU] = "NIUNIU_REQUEST_DISMISS",
                            [GAME_DA_TONG_ZI] = "DA_TONG_ZI_REQUEST_DISMISS",
                            [GAME_SHUANGKOU] = "SHUANGKOU_REQUEST_DISMISS",
                            [GAME_13DAO] = "DAO13_REQUEST_DISMISS",   
                            [GAME_YZCHZ] = "YZCHZ_REQUEST_DISMISS",
                            [GAME_HSMJ] = "HS_REQUEST_DISMISS",
                            [GAME_MMMJ] = "MMMJ_REQUEST_DISMISS",
                            [GAME_FHHZMJ] = "FHHZMJ_REQUEST_DISMISS",
                            [GAME_HHQMT] = "HHQMT_REQUEST_DISMISS",
                            [GAME_SYBP] = "SYBP_REQUEST_DISMISS",
                            [GAME_LDFPF] = "LDFPF_REQUEST_DISMISS",
                        }

GAMES_REQUEST_LOCATION = {
    [GAME_CDPHZ] = "REQUEST_LOCATION",
    [GAME_MJZHUANZHUAN] = "MJ_REQUEST_LOCATION",
    [GAME_MJHONGZHONG] = "HZMJ_REQUEST_LOCATION",
    [GAME_MJCHANGSHA] = "CS_MJ_REQUEST_LOCATION",
    [GAME_TIANZHA] = "TZ_REQUEST_LOCATION",
    [GAME_SNKB] = "KB_REQUEST_LOCATION",
    [GAME_YXHZP] = "HZP_REQUEST_LOCATION",
    [GAME_NXGHZ] = "GHZ_REQUEST_LOCATION",
    [GAME_DYSXH] = "TZ_REQUEST_LOCATION",
    [GAME_NG] = "NG_REQUEST_LOCATION",
    [GAME_PAODEKUAI] = "PDK_REQUEST_LOCATION",
    [GAME_BCNIUNIU] = "NIUNIU_REQUEST_LOCATION",
    [GAME_DA_TONG_ZI] = "DA_TONG_ZI_REQUEST_LOCATION",
    [GAME_SHUANGKOU] = "SHUANGKOU_REQUEST_LOCATION",
    [GAME_13DAO] = "DAO13_REQUEST_LOCATION",
    [GAME_YZCHZ] = "YZCHZ_REQUEST_LOCATION",
    [GAME_HSMJ] = "HSMJ_REQUEST_LOCATION",
    [GAME_MMMJ] = "MMMJ_REQUEST_LOCATION",
    [GAME_FHHZMJ] = "FHHZMJ_REQUEST_LOCATION",
    [GAME_HHQMT] = "HHQMT_REQUEST_LOCATION",
    [GAME_SYBP] = "SYBP_REQUEST_LOCATION",
    [GAME_LDFPF] = "LDFPF_REQUEST_LOCATION",
}

GAMES_REVIEWSCENES  = {
                        [GAME_MJZHUANZHUAN] = "app" .. GAMES_PACKAGENAME[GAME_MJZHUANZHUAN] .. ".scenes.ReviewScene",
                        [GAME_MJHONGZHONG] = "app" .. GAMES_PACKAGENAME[GAME_MJHONGZHONG] .. ".scenes.ReviewScene",
                        [GAME_MJCHANGSHA] = "app" .. GAMES_PACKAGENAME[GAME_MJCHANGSHA] .. ".scenes.ReviewScene",
                        [GAME_PAODEKUAI] = "app" .. GAMES_PACKAGENAME[GAME_PAODEKUAI] .. ".scenes.ReviewScene",
                        [GAME_BCNIUNIU] = "app" .. GAMES_PACKAGENAME[GAME_BCNIUNIU] .. ".scenes.ReviewScene",
                        [GAME_DA_TONG_ZI] = "app" .. GAMES_PACKAGENAME[GAME_DA_TONG_ZI] .. ".scenes.ReviewScene",
                        [GAME_SHUANGKOU] = "app" .. GAMES_PACKAGENAME[GAME_SHUANGKOU] .. ".scenes.ReviewScene",
                        [GAME_13DAO] = "app" .. GAMES_PACKAGENAME[GAME_13DAO] .. ".scenes.ReviewScene",
                        [GAME_YZCHZ] = "app" .. GAMES_PACKAGENAME[GAME_YZCHZ] .. ".scenes.ReviewScene",
                        [GAME_HSMJ] = "app" .. GAMES_PACKAGENAME[GAME_HSMJ] .. ".scenes.ReviewScene",
                        [GAME_MMMJ] = "app" .. GAMES_PACKAGENAME[GAME_MMMJ] .. ".scenes.ReviewScene",
                        [GAME_FHHZMJ] = "app" .. GAMES_PACKAGENAME[GAME_FHHZMJ] .. ".scenes.ReviewScene",
                        [GAME_HHQMT] = "app" .. GAMES_PACKAGENAME[GAME_HHQMT] .. ".scenes.ReviewScene",  
                        [GAME_SYBP] = "app" .. GAMES_PACKAGENAME[GAME_SYBP] .. ".scenes.ReviewScene",
                        [GAME_LDFPF] = "app" .. GAMES_PACKAGENAME[GAME_LDFPF] .. ".scenes.ReviewScene",
                    }

GAME_AREA_CHANGDE = 1
GAME_AREA_GUANGXI = 3
GAME_AREA_CHANGSHA = 4
GAME_AREA_YIYANG = 5

GAME_AREA_DEFAULT = GAME_AREA_CHANGDE

GAME_AREAS = {
                GAME_AREA_CHANGDE,
                GAME_AREA_GUANGXI,
                GAME_AREA_CHANGSHA,
                GAME_AREA_YIYANG,
             }

GAME_AREAS_HALLSCENE = {
                            [GAME_AREA_CHANGDE] = "HallScene",
                            [GAME_AREA_GUANGXI] = "HallSceneGuangXi",
                            [GAME_AREA_CHANGSHA] = "HallSceneChangSha",
                            [GAME_AREA_YIYANG] = "HallSceneYiYang",
                        }

GAME_AREAS_CREATEVIEW = {    
                            [GAME_AREA_CHANGDE] = "hall.createRoom.HallCreateView",
                            [GAME_AREA_GUANGXI] = "hall.createRoom.HallCreateViewGuangXi",
                            [GAME_AREA_CHANGSHA] = "hall.createRoom.HallCreateViewChangSha",
                            [GAME_AREA_YIYANG] = "hall.createRoom.HallCreateViewYiYang",
                        }      





if SPECIAL_PROJECT then
    ADDRESS_TABLE_N = {ADDRESS_LTHY_N = 1}
    ADDRESS_TABLE_O = {ADDRESS_LTHY_O = 1002}

    ADDRESS_N = ADDRESS_TABLE_N["ADDRESS_LTHY_N"]
    ADDRESS_O = ADDRESS_TABLE_O["ADDRESS_LTHY_O"]

    ADDRESS_MAIN_CONF = {ADDRESS_LTHY_N}

    ADDRESS_SUB_CONF = {
        [ADDRESS_N] = {ADDRESS_O}
    }

    ADDRESS_FONT = {
        [ADDRESS_N] = "乐途互娱",
        [ADDRESS_O] = "乐途互娱"
    }

    ADDRESS_SOMEGAME_CONF = {}

    ADDRESS_GAME_CONF = {
    [ADDRESS_N] = {
        [ADDRESS_O] = {GAME_LDFPF,GAME_PAODEKUAI,GAME_MJHONGZHONG,GAME_MJZHUANZHUAN}
        }
    }

    ADDRESS_NONE_GAME_CONF = {GAME_LDFPF,GAME_PAODEKUAI,GAME_MJHONGZHONG,GAME_MJZHUANZHUAN}
else
    ADDRESS_HN = 1
    ADDRESS_ZJ = 2
    ADDRESS_HLJ = 3
    ADDRESS_NX = 4
    ADDRESS_CD = 1001
    ADDRESS_CS = 1002
    ADDRESS_SY = 1003
    ADDRESS_YZ = 1004
    ADDRESS_HH = 1005
    ADDRESS_JH = 2001
    ADDRESS_YC = 4001
    ADDRESS_LD = 1006
    ADDRESS_MAIN_CONF = {ADDRESS_HN,ADDRESS_ZJ,ADDRESS_HLJ,ADDRESS_NX}

ADDRESS_SUB_CONF = {
    [ADDRESS_HN] = {ADDRESS_CS,ADDRESS_CD,ADDRESS_SY,ADDRESS_YZ,ADDRESS_HH,ADDRESS_LD},
    [ADDRESS_ZJ] = {ADDRESS_JH},
    [ADDRESS_HLJ] = {},
    [ADDRESS_NX] = {ADDRESS_YC},
}

ADDRESS_FONT = {
    [ADDRESS_HN] = "湖南",
    [ADDRESS_ZJ] = "浙江",
    [ADDRESS_HLJ] = "黑龙江",
    [ADDRESS_NX] = "宁夏",
    [ADDRESS_CD] = "常德",
    [ADDRESS_CS] = "长沙",
    [ADDRESS_SY] = "邵阳",
    [ADDRESS_YZ] = "永州",
    [ADDRESS_JH] = "金华",
    [ADDRESS_YC] = "",
    [ADDRESS_HH] = "怀化",
    [ADDRESS_LD] = "娄底",
}

ADDRESS_SOMEGAME_CONF = {
    [ADDRESS_NX] = {GAME_PAODEKUAI,GAME_HSMJ,GAME_FHHZMJ},
}

ADDRESS_GAME_CONF = {
    [ADDRESS_HN] = {
        [ADDRESS_CD] = {GAME_CDPHZ,GAME_MJHONGZHONG,GAME_MJZHUANZHUAN,GAME_PAODEKUAI,GAME_HHQMT},
        [ADDRESS_CS] = {GAME_MJCHANGSHA,GAME_MJHONGZHONG,GAME_MJZHUANZHUAN,GAME_PAODEKUAI,GAME_LDFPF},
        [ADDRESS_SY] = {GAME_DA_TONG_ZI,GAME_MJHONGZHONG,GAME_MJZHUANZHUAN,GAME_PAODEKUAI,GAME_SYBP},
        [ADDRESS_YZ] = {GAME_MJHONGZHONG,GAME_MJZHUANZHUAN,GAME_PAODEKUAI,GAME_YZCHZ},
        [ADDRESS_HH] = {GAME_PAODEKUAI,GAME_HHQMT,GAME_MJHONGZHONG},
        [ADDRESS_LD] = {GAME_LDFPF},
    },
    [ADDRESS_ZJ] = {
        [ADDRESS_JH] = {GAME_SHUANGKOU,GAME_PAODEKUAI,GAME_13DAO},
    },
    [ADDRESS_NX] = {
        [ADDRESS_YC] = {GAME_PAODEKUAI,GAME_HSMJ,GAME_FHHZMJ,GAME_FHLMZ},
    },
}
ADDRESS_NONE_GAME_CONF = {GAME_MJHONGZHONG,GAME_MJZHUANZHUAN,GAME_PAODEKUAI}
--[[
    1、湖南
（1）常德
     常德跑胡子；红中麻将；转转麻将；跑得快
（2）长沙
     长沙麻将；红中麻将；转转麻将；跑得快
（3）邵阳
     打筒子；红中麻将；转转麻将；跑得快
（5）永州
     红中麻将；转转麻将；跑得快
2、黑龙江
（1）斗牛；打筒子；红中麻将；转转麻将；跑得快
]]

end


