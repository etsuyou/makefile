@echo off
if %1 == -help (
  echo "Please enter the command in the terminal"
  echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
  echo "Example: ./makefile/makefile.bat test"
)^
else if %1 == -h (
  echo "Please enter the command in the terminal"
  echo "Format: ./makefile/makefile.bat + <space> + <File Name>"
  echo "Example: ./makefile/makefile.bat test"
)^
else (
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


@REM del %0 

