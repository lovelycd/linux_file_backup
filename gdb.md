## gdb的使用 ##

+ set args " xxx"	为程序设定参数
+  break n		在N行设置断点
+  C			继续运行
+  print args			打印参数
+  next			执行下一个程序行，跳过程序调用
+  step 		执行下一条命令，进入函数调用
+  list			列出当前程序停止处附近的文本
+ thread		切换线程
+ set detach-on-fork off		开启进程分离，它的意思是在调用fork后相关进程的运行行为是怎么样的，是detache on/off ?也就是说分离出去独立运行，不受gdb控制还是不分离，被阻塞住。这里还涉及到一个设置 set follow-fork-mode [parents/child] ,就是fork之后，gdb的控制落在谁身上，如果是父进程，那么分离的就是子进程，反之亦然。如果detache-on-fork被off了，那么未受控的那个进程就会被阻塞住，进程状态为T，即处于调试状态。 



## alias ##
ni -- Step one instruction
rc -- Continue program being debugged but run it in reverse
rni -- Step backward one instruction
rsi -- Step backward exactly one instruction
si -- Step one instruction exactly
stepping -- Specify single-stepping behavior at a tracepoint
tp -- Set a tracepoint at specified line or function
tty -- Set terminal for future runs of program being debugged
where -- Print backtrace of all stack frames
ws -- Specify single-stepping behavior at a tracepoint



p

