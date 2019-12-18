# python爬虫入门 #


http协议：超文本传输协议

url格式：
		`http://host[:port][path]`

host	合法的主机域名或ip地址
port		端口号
path		内部主机目录


## http协议对资源的操作 ##
方法|说明
:-|:-
get|
head|
post|
put|
patch|
delete|

对应于requests库的方法


request函数的参数字段
参数|说明
:-|:-
params|pppppp[5555555555
data|
json|
headers|
cookies|
auth|
files|
timeout|
proxies|
allow_redirects|
stream|
verify|
cert|



小规模爬虫库：requests库
中规模爬虫库：scrapy库
搜索引擎爬虫：定制



## BeautifulSoup库 ##
### 解析器 ###
解析器|使用方法|条件
:-|:-|:-
bs4的html解析器|
lxml的html解析器|
lxml的xml解析器|
html5lib的解析器|

### BeatuifulSoup类 ###
基本元素|说明
:-|:-
Tag|
Name|
Atribute|
NavigableString|
Comment|

### 标签树的下行遍历 ###
属性|说明
:-|:-
.contents|
.children|
.descendants|

### 标签树的上行遍历 ###
属性|说明
:-|:-
.parent|节点的父标签
.parents|

### 标签树的平行遍历 ###
属性|说明
:-|:-
.next_sibling|
.previous_sibling|
.next_siblings|
.previous_siblings|

### 信息组织形式 ###

信息标志种类：xml，json，yaml    
xml:用\<\>表示数据
json：有数据类型的键值对表达信息
yaml：无数据类型的键值对

### html内容搜索方法 ###
方法|说明
:-|:-
BeatuifulSoup.find_all()|可以结合正则表达式
BeatuifulSoup.find()|
BeatuifulSoup.find_parents()|
BeatuifulSoup.find_parent()|
BeatuifulSoup.find_next_siblings()|
BeatuifulSoup.find_next_sibling()|
BeatuifulSoup.find_previous_siblings()|
BeatuifulSoup.find_previous_sibling()|
