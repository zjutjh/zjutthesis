@echo off
title ZJUT XeLaTeX Template

:start
echo 欢迎使用 ZJUT XeLaTeX 毕业设计模板
echo.
echo 使用本脚本只需选择对应的选项即可方便地生成所需的文件
echo.
echo 1. 生成文献综述
echo 2. 生成开题报告
echo 3. 生成外文翻译
echo 0. 清理冗余文件
echo.
set /p num="请输入您的选择: "
if "%num%"=="1" goto literaturereview
if "%num%"=="2" goto proposal
if "%num%"=="3" goto translation
if "%num%"=="0" goto clean
echo 错误的选择！
pause
exit

:literaturereview
cls
call "../clean.bat"
xelatex literaturereview
bibtex literaturereview
xelatex literaturereview
xelatex literaturereview
exit

:proposal
cls
call "../clean.bat"
xelatex proposal
bibtex proposal
xelatex proposal
xelatex proposal
exit

:translation
cls
call "../clean.bat"
xelatex translation
bibtex translation
xelatex translation
xelatex translation
exit

:clean
call "../clean.bat"
exit