@echo off
if "%1" == "" (
  echo "Noticing that you did not enter the filename of the project file to be created"
  echo "Actually you can create the project file like this:"
  echo "Format: ./etsuyou-make/makefile.bat + <space> + <File Name>"
  echo "Example: ./etsuyou-make/makefile.bat test"
  echo "So, a folder called Default_Test is being created for you now"
  mkdir Default_Test
  cd Default_Test
  mkdir html,css,js,img,font,video,scss
  cd ..\
  copy .\etsuyou-make\index.html .\Default_Test
  copy .\etsuyou-make\iconfont.url .\Default_Test
  copy .\etsuyou-make\flexible.js .\Default_Test\js
  copy .\etsuyou-make\functions.js .\Default_Test\js
  copy .\etsuyou-make\style.css .\Default_Test\css
  copy .\etsuyou-make\global.css .\Default_Test\css
  copy .\etsuyou-make\reset.css .\Default_Test\css
  copy .\etsuyou-make\scss-style.sass .\Default_Test\scss
  copy .\etsuyou-make\scss-style.css .\Default_Test\scss
  copy .\etsuyou-make\_mixin.scss .\Default_Test\scss
  copy .\etsuyou-make\_mixin_abbr.scss .\Default_Test\scss
  copy .\etsuyou-make\_config.scss .\Default_Test\scss
  copy .\etsuyou-make\_includes.scss .\Default_Test\scss
  copy .\etsuyou-make\_mixin_background.scss .\Default_Test\scss
  copy .\etsuyou-make\_mixin_flex.scss .\Default_Test\scss
  copy .\etsuyou-make\_unit_handler.scss .\Default_Test\scss
  copy .\etsuyou-make\_mixin_margin.scss .\Default_Test\scss
  copy .\etsuyou-make\_mixin_position.scss .\Default_Test\scss
  copy .\etsuyou-make\font\demo.css .\Default_Test\font
  copy .\etsuyou-make\font\demo_index.html .\Default_Test\font
  copy .\etsuyou-make\font\iconfont.css .\Default_Test\font
  copy .\etsuyou-make\font\iconfont.js .\Default_Test\font
  copy .\etsuyou-make\font\iconfont.json .\Default_Test\font
  copy .\etsuyou-make\font\iconfont.ttf .\Default_Test\font
  echo Mission completed
) else (
  if "%1" == "-h" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./etsuyou-make/makefile.bat + <space> + <File Name>"
    echo "Example: ./etsuyou-make/makefile.bat test"
  ) else if "%1" == "-help" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./etsuyou-make/makefile.bat + <space> + <File Name>"
    echo "Example: ./etsuyou-make/makefile.bat test"
  ) else (
    echo "You entered the folder name of the project to be created"
    echo "The name of the folder is:"
    echo "%1"
    echo "Project files and folders are being created for you"
    mkdir %1
    cd %1
    mkdir html,css,js,img,font,video,scss
    cd ..\
    copy .\etsuyou-make\index.html .\%1
    copy .\etsuyou-make\iconfont.url .\%1
    copy .\etsuyou-make\flexible.js .\%1\js
    copy .\etsuyou-make\functions.js .\%1\js
    copy .\etsuyou-make\style.css .\%1\css
    copy .\etsuyou-make\global.css .\%1\css
    copy .\etsuyou-make\reset.css .\%1\css
    copy .\etsuyou-make\scss-style.sass .\%1\scss
    copy .\etsuyou-make\scss-style.css .\%1\scss
    copy .\etsuyou-make\_mixin.scss .\%1\scss
    copy .\etsuyou-make\_mixin_abbr.scss .\%1\scss
    copy .\etsuyou-make\_config.scss .\%1\scss
    copy .\etsuyou-make\_includes.scss .\%1\scss
    copy .\etsuyou-make\_mixin_background.scss .\%1\scss
    copy .\etsuyou-make\_mixin_flex.scss .\%1\scss
    copy .\etsuyou-make\_unit_handler.scss .\%1\scss
    copy .\etsuyou-make\_mixin_margin.scss .\%1\scss
    copy .\etsuyou-make\_mixin_position.scss .\%1\scss
    copy .\etsuyou-make\font\demo.css .\%1\font
    copy .\etsuyou-make\font\demo_index.html .\%1\font
    copy .\etsuyou-make\font\iconfont.css .\%1\font
    copy .\etsuyou-make\font\iconfont.js .\%1\font
    copy .\etsuyou-make\font\iconfont.json .\%1\font
    copy .\etsuyou-make\font\iconfont.ttf .\%1\font
    echo Mission completed
  )
)
@REM del %0
