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
编写进度
- [x] 

EMACS(Editor MACroS)
```zsh
brew tap d12frosted/emacs-plus
brew install emacs-plus@27 --with-xwidgets
```

在 Emacs 中, 我们有一条规定:

 | key binding     | Description                           |
   |------------|--------------------------------|
   | `C-<字符>` | 在输入 `<字符>` 时按住 Control |
   | `M-<字符>` | 在输入 `<字符>` 时按住 Alt     |
   | `s-<字符>` | 在输入 `<字符>` 时按住 Super   |
   | `M-x`      | 执行emacs命令|
   | `C-g`      | 取消命令|
# Emacs帮助信息

 | key binding     | Description                           |
   |------------|--------------------------------|
   | `C-h t` | 帮助-教程tutorial |
   | `C-h k` | 帮助-快捷键     |
   | `C-h f` | 帮助-函数介绍functions |
   | `C-h v` | 帮助-变量介绍varialbes |
   | `<Prefix> C-h` | 查看以Prefix开头的所有快捷键列表 |
   

# 窗口操作

| key binding     | Description                           |
   |------------|--------------------------------|
   | `C-x 0` | 关闭当前窗口       |
   | `C-x 1` | 只保留当前窗口     |
   | `C-x 2` | 水平分割窗口      |
   | `C-x 3` | 垂直分割窗口      |
   | `C-x o` | 切换窗口          |


# 缓冲区buffer操作

| key binding     | Description                           |
   |------------|--------------------------------|
   | `C-x C-b` | 打开buffer列表       |
   | `C-x b`   | 切换buffer       |
   | `C-x <L/R>` | 切换buffer       |
   | `C-x k` | 关闭buffer       |


# 文件操作
## 打开文件

|key binding| Description |
|------------|-------------|
|`C-x d` | 打开目录 |
|`C-x C-f` | 查找/创建文件|

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

### 移动
- `C-t/M-t` 交换光标附近字符/单词
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
    |				   	         :
    |				  		 :
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

### 粘贴
|key binding| Description |
|----------|-------------|
|`C-y` |粘贴|
|`M-y` |循环替换上一次剪贴记录|


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


# 版本控制
- `C-x v C-h` :版本控制所有绑定快捷键
-

# 宏
- `C-x (`或`F3` : 开始录制宏
- `C-x )`或`F4` : 结束录制宏
- `C-x e`或`F4` : 使用宏
- `C-u 10 C-x e` :重复使用宏10次
- `M-x name-last-kdb-macro <marco_name>` : 为宏命名
- 在配置文件:`M-x insert-kbd-marco` : 保存宏
- `M-x <macro_name>` : 调用宏

Emacs宏生成序列:
使用`kmacro-insert-counter`，默认情况下绑定(bind)到`C-x C-k TAB`。因此，对于您的示例，您将执行以下操作:
`C-x ( C-x C-k TAB . RET C-x )`
因此，开始宏，插入计数器，后跟“。”，换行符和结束宏。然后`C-x e e e e e e e`等。或`M-1 0 0 C-x e`得到100个。
将计数器设置为初始值。例如，从1而不是0开始执行`M-1 C-x C-k C-c`。




# 参考

[emacs_guides
](https://github.com/KitPixel/emacs-guides)
[how_to_learn_emacs_en
](https://david.rothlis.net/emacs/basic_c.html)

[how_to_learn_emacs_zh
](https://www.songofcode.com/how-to-learn-emacs-chinese-edition/)
