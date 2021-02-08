---
title: emacs
encrypt: false
enc_pwd: askding
categories:
  - Tools
date: 2021-01-12 09:46:03
top:
tags:
layout:
---





# Emacs帮助信息
- `C-x v C-h` :版本控制所有绑定快捷键

 | key binding              | Description                      |
 |--------------------------|----------------------------------|
 | `C-h ?`                  | 帮助系统的帮助信息               |
 | `F1/C-h`                 | 帮助系统                         |
 | `C-h t`                  | 帮助-教程tutorial                |
 | `C-h k`                  | 帮助-快捷键                      |
 | `C-h f`                  | 帮助-函数介绍functions           |
 | `C-h v`                  | 帮助-变量介绍varialbes           |
 | `C-h w`                  | where-is打印当前buffer快捷键列表 |
 | `C-h b`                  | 查看快捷键对应函数               |
 | `find-funtion/variable ` | 查看函数/变量代码                |
 | `find-face-definition`   | 查看face定义                     |
 | `M-x apropos`            | 查看关键字的变量、函数、face等   |
 | `M-x describ-face`       | 查看face的文档                   |
 | `<Prefix> C-h`           | 查看以Prefix开头的所有快捷键列表 |
 | `C-z`                    | 挂起/恢复Emacs                   |


# 窗格Frame #
| Key binding | Description                    |
|:-----------:|:------------------------------:|
| `C-x 5 0`   | 删除Frame                      |
| `C-x 5 1`   | 删除其他Frame                  |
| `C-x 5 2`   | 在当前编辑缓冲区上新建Frame    |
| `C-x 5 o`   | 切换其他Frame                  |
| `C-x 5 r`   | 查找文件以只读方式在新窗格打开 |
| `C-x 5 f`   | 查找文件并在新窗格打开         |
| `C-x 5 b`   | 切换buffer并在新窗格打开       |



# 窗口操作

| key binding | Description    |
|-------------|----------------|
| `C-x 0`     | 关闭当前窗口   |
| `C-x 1`     | 只保留当前窗口 |
| `C-x 2`     | 水平分割窗口   |
| `C-x 3`     | 垂直分割窗口   |
| `C-x o`     | 切换窗口       |
| `C-x >`     | 向右扩展       |
| `C-x <`     | 向左扩展       |



# 缓冲区buffer操作

| key binding     | Description                           |
   |------------|--------------------------------|
   | `C-x C-b` | 打开buffer列表       |
   | `C-x b`   | 切换buffer       |
   | `C-x <L/R>` | 切换buffer       |
   | `C-x k` | 关闭buffer       |



# 文件管理器Dired操作 #
| Keybings | Description                       |
|:--------:|:---------------------------------:|
| C-x d    | 启动Dired                         |
| C        | 复制文件                          |
| d        | 添加待删除标记                    |
| D        | 交互式立刻删除文件                |
| e        | 编辑文件                          |
| f        | 查找文件                          |
| g        | revert-buffer重新读取目录         |
| G        | 改变文件组权限                    |
| k        | 删除光标所在行(不删除文件)        |
| m        | 添加待操作标记                    |
| n        | 移动到下一行                      |
| o        | 新窗口打开光标所在处文件          |
| q        | 退出Dired                         |
| Q        | 对m后的文件进行字符串查找并替换   |
| R        | 重命名文件                        |
| u        | 撤销m的标记                       |
| v        | 查看文件                          |
| x        | 删除标记D的文件                   |
| Z        | 对文件进行压缩/解压操作           |
| !        | 执行shell命令                     |
| +        | 创建目录                          |
| s        | 对文件清单进行重排序(日期/文件名) |

# 文件操作
## 打开文件

| key binding | Description   |
|-------------|---------------|
| `C-x d`     | 打开目录      |
| `C-x C-f`   | 查找/创建文件 |
| `C-x C-v`   | 打开其他文件  |

## 搜索
| key binding | Description |
|-------------|-------------|
| `C-s`       | 向下搜索    |
| `C-r`       | 向上搜索    |
| `M-%`       | 搜索并替换  |

- 'y' : 确认替换
- 'n' : 跳到下一个
- '!' : 强制替换所有

## 编辑文件/buffer

- `M-x linum-mode` : 开启行号 


## 书签 ##
| key binding       | Description  |
|:-----------------:|:------------:|
| `C-x r m`         | 设置书签     |
| `C-x r b`         | 跳到指定书签 |
| `bookmark-rename` | 更名标签     |
| `C-x r l`         | 书签清单     |

书签清单子命令
  * d 待删除标记
  * r 重命名
  * s 保存全部书签
  * f 显示光标处的书签
  * m 待显示标记
  * v 显示待显示标记的书签
  * t 切换书签关联文件的路径的显示状态
  * w 显示书签关联文件的路径名
  * x 删除待删除标记的书签
  * u 去掉书签上的待操作标记
  * q 退出书签清单


### 移动
- `C-t/M-t` 交换光标附近字符/单词
- `M-c/u/l` 选中区域字母大/小写
- `C-x C-t` 交换上一行和当前行的位置
- `C-u <num> <key>`  执行`<num>`次`<key>`
- `M-<num>` :等价于`C-u <num>`
- `M-g g` 跳到指定行

```zsh
    |M-<(开头)					 :
C-l |						 :
居顶 |					       M-v(翻屏)
    |C-a(行首)                                   :			C-e(行尾)
    |M-a(句首)			      		 :            		M-e(句尾)
    |				  		 :
    |				  	       C-p(上行)
    |				  	         :
C-l |		     (左移字符/单词)C-b/M-b ...|_(光标) ....  C-f/M-f(右移字符/单词）    
居中|                               	   	 :
    |				  	       C-n(下行)
    |				  	         :
    |M-{(上一段)				 :  	                  M-} (下一段)
    |C-x [(上一页)			  	 :     	                  C-x ](下一页)
    |				  		 :
    |				 	       C-v(翻屏)
    |                              	         :
C-l |						 :
居底|                                            :			 M->(结尾)
```

### 删除
```zsh
    |                                           :
    |C-x <DEL>(删除光标至行首)	             ...|_(光标)...               C-k(光标至行尾、重复则删除换行符) M-k(删除句子)
    |                                           :
    |    (删除字符)<DEL>/(移除单词)M-<DEL> .... |_(光标) ....  C-d(删除字符/M-d(移除单词）
    |                                           :
```




### 选择

|key binding| Description |
|----------|-------------|
|`C-@` | 开启标记|


### 复制/剪贴
|key binding| Description |
|----------|-------------|
|`M-w`|复制|
|`C-w`|剪贴|
|`C-x r k`|剪贴矩形区域|
|`C-x r c/d`|删除矩形区域|


### 粘贴
|key binding| Description |
|----------|-------------|
|`C-y` |粘贴|
|`M-y` |循环替换上一次剪贴记录|
|`C-x r y`|粘贴矩形区域|

### 撤销/重做
|key binding| Description |
|----------|-------------|
|`C-x u`|仅撤销|
|`C-/`|撤销/重做|
|`C-_`|撤销/重做|

## 保存
| key binding | Description              |
|-------------|--------------------------|
| `C-x C-s`   | 保存当前buffer到对应文件 |
| `C-x C-w`   | 另存为                   |
| `C-x s`     | 保存所有buffer到对应文件 |


	
# 宏
- `C-x (`或`F3` : 开始录制宏
- `C-x )`或`F4` : 结束录制宏
- `C-x e`或`F4` : 使用宏
- `C-u 10 C-x e` :重复使用宏10次
- `M-x name-last-kdb-macro <marco_name>` : 为宏命名
- 在配置文件:`M-x insert-kbd-marco` : 保存宏
- `M-x <macro_name>` : 调用宏

Emacs宏生成序列:  
1.  
2.  
3.  
...  
100.  

执行以下操作: 
`C-x ( C-x C-k TAB . RET C-x )` 
解释:
  * `C-x (`调用`kmarco-start-macro`函数 开始录制宏
  * `C-x C-k TAB .`调用`kmacro-insert-counter`函数插入计数后跟`.` , `RET`按下回车
  * `C-x )` 调用`kmacro-end-macro`函数，结束录制宏

开始宏，插入计数器，后跟`.`，换行符和结束宏。 
然后`C-x e e e e e e e`等。或`M-1 0 0 C-x e`得到100个。 

将计数器设置为初始值。例如， 
从1而不是0开始执行`M-1 C-x C-k C-c`,调用`kmacro-set-counter`函数, 
执行以下操作:
  * `M-1 C-x C-k C-c`,调用`kmacro-set-counter`函数, 设置计数器初始值为1
  * `C-x ( C-x C-k TAB . RET C-x )` 录制宏
  * `C-x e e e e e e e`或者`M-1 0 0 C-x e`得到100个。


# 执行shell命令
- `M-!` shell-command


# 日历 #
- `.` Goto-Today
- `M-{/}` 月份切换
- `a/x` 显示节日
