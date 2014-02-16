@echo off
title Monster XeLaTeX Template
:start
cls
echo 欢迎使用老怪 XeLaTeX 毕业设计模板，请指示您的需要~
echo ----------------
echo 0. 清理冗余文件
echo 1. 生成文献综述、外文翻译
echo 2. 生成开题报告
echo 3. 生成毕业论文
echo 4. 生成小论文
echo 5. 全部给我生成!
echo 6. 退出
echo ----------------
set /p num="请输入您的选择: "
if "%num%"=="1" goto landt
if "%num%"=="2" goto proposal
if "%num%"=="3" goto thesis
if "%num%"=="4" goto paper
if "%num%"=="5" goto landt
if "%num%"=="6" goto exit
if "%num%"=="0" goto clean
echo 错误的选择！
pause
goto start

:landt
cls
call "clean.bat"
xelatex Literature_Translation
bibtex Literature_Translation
xelatex Literature_Translation
xelatex Literature_Translation
if "%num%"=="5" goto proposal
echo work down!
pause
goto start

:proposal
cls
call "clean.bat"
xelatex proposal
bibtex proposal
xelatex proposal
xelatex proposal
if "%num%"=="5" goto thesis
echo work down!
pause
goto start

:thesis
call "clean.bat"
xelatex thesis
bibtex thesis
xelatex thesis
xelatex thesis
if "%num%"=="5" goto paper
echo work down!
pause
goto start

:clean
call "clean.bat"
echo work down!
pause
goto start

:paper
call "clean.bat"
xelatex paper
bibtex paper
xelatex paper
xelatex paper
echo work down!
pause
goto start

:exit
exit