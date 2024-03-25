@echo off
if "%1" == "" (
  echo "Noticing that you did not enter the filename of the project file to be created"
  echo "Actually you can create the project file like this:"
  echo "Format: ./etsu-make/makefile.bat + <space> + <File Name>"
  echo "Example: ./etsu-make/makefile.bat test"
  echo "So, a folder called Default_Test is being created for you now"
  mkdir Default_Test
  cd Default_Test
  mkdir html,css,js,img,font,video,scss
  cd ..\
  copy .\etsu-make\index.html .\Default_Test
  copy .\etsu-make\iconfont.url .\Default_Test
  copy .\etsu-make\flexible.js .\Default_Test\js
  copy .\etsu-make\functions.js .\Default_Test\js
  copy .\etsu-make\style.css .\Default_Test\css
  copy .\etsu-make\global.css .\Default_Test\css
  copy .\etsu-make\scss-style.sass .\Default_Test\scss
  copy .\etsu-make\scss-style.css .\Default_Test\scss
  copy .\etsu-make\_mixin.scss .\Default_Test\scss
  copy .\etsu-make\_mixin_abbr.scss .\Default_Test\scss
  copy .\etsu-make\_config.scss .\Default_Test\scss
  copy .\etsu-make\_includes.scss .\Default_Test\scss
  copy .\etsu-make\_mixin_background.scss .\Default_Test\scss
  copy .\etsu-make\_mixin_flex.scss .\Default_Test\scss
  copy .\etsu-make\_unit_handler.scss .\Default_Test\scss
  copy .\etsu-make\_mixin_margin.scss .\Default_Test\scss
  copy .\etsu-make\font\demo.css .\Default_Test\font
  copy .\etsu-make\font\demo_index.html .\Default_Test\font
  copy .\etsu-make\font\iconfont.css .\Default_Test\font
  copy .\etsu-make\font\iconfont.js .\Default_Test\font
  copy .\etsu-make\font\iconfont.json .\Default_Test\font
  copy .\etsu-make\font\iconfont.ttf .\Default_Test\font
  echo Mission completed
) else (
  if "%1" == "-h" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./etsu-make/makefile.bat + <space> + <File Name>"
    echo "Example: ./etsu-make/makefile.bat test"
  ) else if "%1" == "-help" (
    echo "An operation manual will be printed for you"
    echo "Please enter the command in the terminal"
    echo "Format: ./etsu-make/makefile.bat + <space> + <File Name>"
    echo "Example: ./etsu-make/makefile.bat test"
  ) else (
    echo "You entered the folder name of the project to be created"
    echo "The name of the folder is:"
    echo "%1"
    echo "Project files and folders are being created for you"
    mkdir %1
    cd %1
    mkdir html,css,js,img,font,video,scss
    cd ..\
    copy .\etsu-make\index.html .\%1
    copy .\etsu-make\iconfont.url .\%1
    copy .\etsu-make\flexible.js .\%1\js
    copy .\etsu-make\functions.js .\%1\js
    copy .\etsu-make\style.css .\%1\css
    copy .\etsu-make\global.css .\%1\css
    copy .\etsu-make\scss-style.sass .\%1\scss
    copy .\etsu-make\scss-style.css .\%1\scss
    copy .\etsu-make\_mixin.scss .\%1\scss
    copy .\etsu-make\_mixin_abbr.scss .\%1\scss
    copy .\etsu-make\_config.scss .\%1\scss
    copy .\etsu-make\_includes.scss .\%1\scss
    copy .\etsu-make\_mixin_background.scss .\%1\scss
    copy .\etsu-make\_mixin_flex.scss .\%1\scss
    copy .\etsu-make\_unit_handler.scss .\%1\scss
    copy .\etsu-make\_mixin_margin.scss .\%1\scss
    copy .\etsu-make\font\demo.css .\%1\font
    copy .\etsu-make\font\demo_index.html .\%1\font
    copy .\etsu-make\font\iconfont.css .\%1\font
    copy .\etsu-make\font\iconfont.js .\%1\font
    copy .\etsu-make\font\iconfont.json .\%1\font
    copy .\etsu-make\font\iconfont.ttf .\%1\font
    echo Mission completed
  )
)
@REM del %0
