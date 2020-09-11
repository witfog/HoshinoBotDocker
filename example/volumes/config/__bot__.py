# hoshino监听的端口与ip
PORT = 8080             
HOST = '0.0.0.0'        # 运行于 Docker 隔离环境中, 直接监听 0.0.0.0 即可

DEBUG = False           # 调试模式

SUPERUSERS = [10000]    # 填写超级用户的QQ号，可填多个用半角逗号","隔开
NICKNAME = ''           # 机器人的昵称。呼叫昵称等同于@bot，可用元组配置多个昵称

COMMAND_START = {''}    # 命令前缀（空字符串匹配任何消息）
COMMAND_SEP = set()     # 命令分隔符（hoshino不需要该特性，保持为set()即可）

# 发送图片的协议
# 可选 http, file, base64
# 当QQ客户端与bot端不在同一台计算机时，可用http协议
RES_PROTOCOL = 'file'
# 资源库文件夹，需可读可写，windows下注意反斜杠转义
RES_DIR = r'/HoshinoBot/img'
# 使用http协议时需填写，原则上该url应指向RES_DIR目录
RES_URL = 'http://127.0.0.1:5000/static/'


# 启用的模块
# 初次尝试部署时请先保持默认
# 如欲启用新模块，请认真阅读部署说明，逐个启用逐个配置
# 切忌一次性开启多个
MODULES_ON = {
    'botmanage',
    'dice',
    'groupmaster',
    # 'hourcall',
    # 'kancolle',
    # 'mikan',
    'pcrclanbattle',
    'priconne',
    # 'setu',
    # 'translate',
    # 'twitter',
}
