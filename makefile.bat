@echo off
if "%1" == "" (
  echo "Noticing that you did not enter the filename of the project file to be created"
  echo "Actually you can create the project file like this:"
  echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
  echo "Example: ./makefile/makefile.bat test"
  echo "So, a folder called Default_Test is being created for you now"
  mkdir Default_Test
  cd Default_Test
  mkdir html,css,js,img
  @REM echo=>index.html
  @REM echo=>./css/style.css
  cd ..\
  copy .\makefile\index.html .\Default_Test
  copy .\makefile\flexible.js .\Default_Test\js
  copy .\makefile\functions.js .\Default_Test\js
  copy .\makefile\style.css .\Default_Test\css  
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
    mkdir html,css,js,img
    @REM echo=>index.html
    @REM echo=>./css/style.css
    cd ..\
    copy .\makefile\index.html .\%1
    copy .\makefile\flexible.js .\%1\js
    copy .\makefile\functions.js .\%1\js
    copy .\makefile\style.css .\%1\css  
    echo Mission completed
  )
)
@REM del %0 
