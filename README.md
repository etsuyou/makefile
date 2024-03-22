# HTML文件及文件夹一键生成脚本makefile简介
> 本脚本包含两大部分，`makefile.bat`脚本以及模板文件。该脚本主要目的是通过在cmd或git bash终端中输入一行代码，从而快速生成项目文件夹以及所需的常用文件。省时省力，真是居家旅行，练习HTML/CSS/JS的必备神器~
## 使用方法
### git版（推荐）
- 1.在项目文件夹下右击打开git bash终端
- 2.git bash终端中输入`git clone git@github.com:etsuyou/makefile.git`下载makefile文件
- 3.git bash终端中输入指令：`./makefile/makefile.bat + 空格 + <待新建文件夹名称>`，例如：`./makefile/makefile.bat test`完成新建
  - 注：20240302以后新增缺省待新建文件夹名称默认创建`Default_Test`文件夹功能
### 离线版
- 1.打开项目文件夹
- 2.将makefile文件夹复制或移动到该项目文件夹下
- 3.右键使用vscode打开该文件夹，或将该项目文件夹拖动到vscode图标上打开项目文件夹
- 4.在vscode中新建终端，或快捷键ctrl+shift+`
- 5.输入指令：`./makefile/makefile.bat + 空格 + <待新建文件夹名称>`，例如：`./makefile/makefile.bat test`
  - 注：20240302以后新增缺省待新建文件夹名称默认创建`Default_Test`文件夹功能
## 更新说明
### 20240322
- 支持Scss,添加`scss`文件夹及相关文件
### 20240320
- 添加`global.css`全局CSS文件
### 20240302
- 增加`functions.js`文件
- 增加font矢量图片文字文件夹
- 增加了缺省文件名时创建`Default_Test`文件夹功能
  - ![image](https://github.com/etsuyou/makefile/assets/156873223/aa789264-ac66-439b-9c61-63eb095826e3)
- 增加创建完成时的提示语
  - ![image](https://github.com/etsuyou/makefile/assets/156873223/57c866d4-d10c-45e7-83fc-6ef58b2705c0)
### 20240228
- 增加`-help`和`-h`帮助指令
- 增加任务完成后Mission completed提示
  - ![image](https://github.com/etsuyou/makefile/assets/156873223/3b21c133-2f7f-4bf6-98d6-23a9f31cb921)

