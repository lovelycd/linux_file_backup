## git 出现错误 ##
### 详情 ###
git clone https://github.com/testerSunshine/12306.git
Cloning into '12306'...
fatal: unable to access 'https://github.com/testerSunshine/12306.git/': Failed connect to 127.0.0.1:8118; Connection refused
### 原因 ###
配置了代理服务器
[cd@localhost~]$env |grep -i proxy
http_proxy=http://127.0.0.1:8118
https_proxy=http://127.0.0.1:8118
### 解决方法 ###
unset 取消对应的变量
