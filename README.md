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
```
