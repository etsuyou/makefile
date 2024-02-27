@REM 使用指南：
@REM 1.打开项目文件夹
@REM 2.将makefile文件夹复制或移动到该项目文件夹下
@REM 3.右键使用vscode打开该文件夹，或将该项目文件夹拖动到vscode图标上打开项目文件夹
@REM 4.在vscode中新建终端，或快捷键ctrl+shift+`
@REM 5.输入指令：./makefile/makefile.bat + 空格 + <待新建文件夹名称>，例如：./makefile/makefile.bat test
@REM 6.新建完成

mkdir %1
cd %1
mkdir html,css,js,img
@REM echo=>index.html
@REM echo=>./css/style.css
cd ..\
copy .\makefile\index.html .\%1
copy .\makefile\flexible.js .\%1\js
copy .\makefile\style.css .\%1\css

@REM del %0 

