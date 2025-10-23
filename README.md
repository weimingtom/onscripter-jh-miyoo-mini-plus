# onscripter-jh-miyoo-mini-plus
[WIP] My ONScripter-jh Miyoo Mini Plus port.  

## How to Build
* Modify Makefile, where are gcc and stage_files  
* Run 'make clean && make MIYOO=1'  

## Cross Compile Toolchains  
* miyoomini-toolchain.tar.xz  
(use this, see https://github.com/MiyooMini/union-toolchain/blob/main/support/setup-toolchain.sh)   
https://github.com/shauninman/miyoomini-toolchain-buildroot/releases/tag/v0.0.3  
* gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf.tar.gz  
(don't use this) https://github.com/MiyooMini/miyoo-toolchain/releases/tag/v1.0  

## TODO, bugs
* Joystick not handled
* How to get gcc toolchain
* Build libjpeg v9 static lib, currently copy from a30  
* Effect and windoweffect not shown  
* Button key map
* 180 degree rotate not so good  
* How to build under xubuntu  
* Remove onscripter elf file  
* Keep _ons.sh test shell file
* Original onscripter.tar.gz  

## How to login to get the shell
* Connect the wifi, get the IP, and telnet 192.168.1.x Port 23 with PuTTY (NOT SSH on port 22), no passwd
* MIYOO MINI FLIP's telnet is same as MIYOO MINI PLUS
```
miyoo mini flip和miyoo mini plus一样，支持wifi，
这样有一个好处是可以telnet上去获取shell，
类似ssh但不是ssh而是telnet登录

实际上通过无线wifi连接miyoo mini plus进行telnet登录的操作，我现在就没用，
原因是通过这种方式启动SDL1会导致整个程序卡住（我以前在其他机器上也试过，
需要改SDL1代码才行），所以最后还是通过掌机上那个文件管理器来调试，
如果需要看输出只能通过sh脚本里面写重定向输出到文件中，执行sh脚本后查看

入手了miyoo mini plus。这个掌机也可以自制软件。工具链在gh上似乎有（没测试），
虽然它没办法usb上支持adb，不过它支持wifi功能（可能miyoo mini没有，但plus有），
我试过可以通过显示的IP地址telnet上去操作（古老嵌入式的超级终端或SecureCRT），
然后通过busybox tftp命令拉取tftpd32.exe下的文件。
具体待考（framebuffer似乎是上下翻转的）
```

## Old build
* onscripter_20240702.zip, see onscripter-jh_v5_run_machine.tar.gz
