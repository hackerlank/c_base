c_base

Linux Mac Windows 下通用的 C++ 自用基础库，主要用错误输出和单元测试
======

**Error 接口**

void err_sys(const char *fmt, ...); // 输出一个和系统相关的错误，并退出程序

void err_dump(const char* fmt, ...); // 除了 err_sys 的输出，还加上一个 dump 文件

void err_quit(const char* fmt, ...); // 输出一个和系统无关的错误，并退出程序

void err_msg(const char* fmt, ...); // 输出和 err_quit 一致，但不退出程序

**Error 宏**

K_ERROR_SYS(fmt, ...);  // 同 err_sys

K_ERROR_QUIT(fmt, ...); // 同 err_quit

**Goto 风格宏**

ASSERT 

KF_PROCESS_ERROR(Condition) // 此 condition 不成立时，跳转到 ExitFailed 标签

KF_PROCESS_SUCCESS(Condition) // 此 condition 成立时，跳转到 ExitSucc 标签

**其他**

void FindMax (int n, ...)
