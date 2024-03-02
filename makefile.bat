@echo off
if "%1" == "" (
  echo "Noticing that you did not enter the filename of the project file to be created"
  echo "Actually you can create the project file like this:"
  echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
  echo "Example: ./makefile/makefile.bat test"
  echo "So, a folder called Default_Test is being created for you now"
  mkdir Default_Test
  cd Default_Test
  mkdir html,css,js,img,font
  @REM echo=>index.html
  @REM echo=>./css/style.css
  cd ..\
  copy .\makefile\index.html .\Default_Test
  copy .\makefile\iconfont.url .\Default_Test
  copy .\makefile\flexible.js .\Default_Test\js
  copy .\makefile\functions.js .\Default_Test\js
  copy .\makefile\style.css .\Default_Test\css  
  copy .\makefile\font\demo.css .\Default_Test\font
  copy .\makefile\font\demo_index.html .\Default_Test\font
  copy .\makefile\font\iconfont.css .\Default_Test\font
  copy .\makefile\font\iconfont.js .\Default_Test\font
  copy .\makefile\font\iconfont.json .\Default_Test\font
  copy .\makefile\font\iconfont.ttf .\Default_Test\font

  
  echo Mission completed
) else (
  if "%1" == "-h" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
    echo "Example: ./makefile/makefile.bat test"
  ) else if "%1" == "-help" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
    echo "Example: ./makefile/makefile.bat test"
  ) else (
    echo "You entered the folder name of the project to be created"
    echo "The name of the folder is:"
    echo "%1"
    echo "Project files and folders are being created for you"
    mkdir %1
    cd %1
    mkdir html,css,js,img,font
    @REM echo=>index.html
    @REM echo=>./css/style.css
    cd ..\
    copy .\makefile\index.html .\%1
    copy .\makefile\iconfont.url .\%1
    copy .\makefile\flexible.js .\%1\js
    copy .\makefile\functions.js .\%1\js
    copy .\makefile\style.css .\%1\css  
    copy .\makefile\font\demo.css .\%1\font
    copy .\makefile\font\demo_index.html .\%1\font
    copy .\makefile\font\iconfont.css .\%1\font
    copy .\makefile\font\iconfont.js .\%1\font
    copy .\makefile\font\iconfont.json .\%1\font
    copy .\makefile\font\iconfont.ttf .\%1\font

    echo Mission completed
  )
)
@REM del %0 
