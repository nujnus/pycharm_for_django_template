https://www.jianshu.com/p/860a9a675fe6
# MacOS下安装RabbitMQ
https://www.cnblogs.com/lihailin9073/p/11241680.html
# OSX安装Redis


查看rabbitmq是否安装过:
```
sunjun@macbook ~ » brew search rabbitmq
==> Formulae
rabbitmq ✔                                                           rabbitmq-c

==> Casks
rabbitmq                                                             rabbitmq
```
查看redis是否安装过:
```
sunjun@macbook ~ » brew search redis
==> Formulae
hiredis                    redis ✔                    redis-leveldb              redis@3.2                  redis@4.0
==> Casks
redis                                                                redis
```

formulae 意思是一些软件包，一般是命令行工具、开发库、一些字体、插件，共性是不提供界面，提供给终端或者是开发者使用。
cask 是用户软件，比如 chrome、mvim、wechat、wechatwork 这些提供用户交互界面的软件。


brew install rabbitmq
brew install redis

```
sunjun@macbook ~ » brew services list                                                                                               1 ↵
Name     Status  User Plist
emacs    stopped
openvpn  stopped
rabbitmq stopped
redis    stopped
tomcat   stopped

sunjun@macbook ~ » brew services start redis
==> Successfully started `redis` (label: homebrew.mxcl.redis)

sunjun@macbook ~ » brew services list
Name     Status  User   Plist
emacs    stopped
openvpn  stopped
rabbitmq stopped
redis    started sunjun /Users/sunjun/Library/LaunchAgents/homebrew.mxcl.redis.plist
tomcat   stopped

sunjun@macbook ~ » brew services start rabbitmq
==> Successfully started `rabbitmq` (label: homebrew.mxcl.rabbitmq)

sunjun@macbook ~ » brew services list
Name     Status  User   Plist
emacs    stopped
openvpn  stopped
rabbitmq started sunjun /Users/sunjun/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist
redis    started sunjun /Users/sunjun/Library/LaunchAgents/homebrew.mxcl.redis.plist
tomcat   stopped
```

brew services restart redis
brew services stop redis
rabbitmq同上


redis配置
```
sunjun@macbook ~ » cat /usr/local/etc/redis.conf
```

```
sunjun@macbook ~ » cat /usr/local/etc/rabbitmq/rabbitmq-env.conf
```
CONFIG_FILE=/usr/local/etc/rabbitmq/rabbitmq
NODE_IP_ADDRESS=127.0.0.1
NODENAME=rabbit@localhost
RABBITMQ_LOG_BASE=/usr/local/var/log/rabbitmq


https://www.cnblogs.com/kangao/p/11156180.html
# rabbitmq和redis用作消息队列的区别


https://www.cnblogs.com/jpfss/p/12001612.html
# RabbitMQ 默认端口号
4369 (epmd), 25672 (Erlang distribution)
5672, 5671 (AMQP 0-9-1 without and with TLS)
15672 (if management plugin is enabled)
61613, 61614 (if STOMP is enabled)
1883, 8883 (if MQTT is enabled)

https://www.rabbitmq.com/configure.html
# Configuration

https://www.jianshu.com/p/92cd8711b41b
# 基于 mac 的 redis 配置

https://www.jianshu.com/p/2f2725506a1f
# homebrew安装redis并修改配置文件

https://blog.csdn.net/u014209205/article/details/81029681
# Redis 常用命令


https://blog.csdn.net/crazy__qu/article/details/78738264?utm_medium=distribute.pc_aggpage_search_result.none-task-blog-2~all~first_rank_v2~rank_v25-1-78738264.nonecase
# Redis 设置密码登录
#------------------
图形界面:medis的使用.

