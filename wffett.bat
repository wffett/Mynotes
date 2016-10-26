@echo off
echo ===================================================================
echo 输入:
echo   r:进入实体Python27环境,请勿安装任何模块，仅可使用Virtualenv
echo   v2:进入虚拟Python27环境，用于练习及运行Py2.x代码
echo   v3:进入虚拟Python34环境，用于练习及运行Py3.x代码
echo   da:进入虚拟Python27环境，用于练习数据分析及机器学习
echo   dj3:进入虚拟Django_Py34环境，用于练习Django开发
echo ====================================================================

set /p VP=请输入:

if "%VP%"=="r" goto RR
if %VP%==v3 goto V3
if %VP%==da goto dada
if %VP%==dj3 goto django3

rem set /p 是为VP这个变量赋值
rem 定义过的变量，要使用%xxx%的格式来访问变量，这里之所以加引号是区别字符串的原因，
rem 其实不加也不会出错。

:V2
start E:\pythonlab\py27\Scripts\activate.bat
exit

:V3
start E:\pythonlab\py34\Scripts\activate.bat
exit

:dada
start E:\pythonlab\da\Scripts\activate.bat
exit

:django3
start E:\pythonlab\Django3\Scripts\activate.bat
exit


:RR
REM 我已经将系统环境变量中的Python路径删除了，因此需要set一下环境变量。
set path=D:\Python\python27\;D:\Python\python27\Lib\site-packages\;D:\Python\python27\Scripts\;%path%
start cmd 
exit



::以下两行没用，调试命令行的时候用到
::pause>nul
::exit
