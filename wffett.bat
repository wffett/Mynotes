@echo off
echo ===================================================================
echo ����:
echo   r:����ʵ��Python27����,����װ�κ�ģ�飬����ʹ��Virtualenv
echo   v2:��������Python27������������ϰ������Py2.x����
echo   v3:��������Python34������������ϰ������Py3.x����
echo   da:��������Python27������������ϰ���ݷ���������ѧϰ
echo   dj3:��������Django_Py34������������ϰDjango����
echo ====================================================================

set /p VP=������:

if "%VP%"=="r" goto RR
if %VP%==v3 goto V3
if %VP%==da goto dada
if %VP%==dj3 goto django3

rem set /p ��ΪVP���������ֵ
rem ������ı�����Ҫʹ��%xxx%�ĸ�ʽ�����ʱ���������֮���Լ������������ַ�����ԭ��
rem ��ʵ����Ҳ�������

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
REM ���Ѿ���ϵͳ���������е�Python·��ɾ���ˣ������Ҫsetһ�»���������
set path=D:\Python\python27\;D:\Python\python27\Lib\site-packages\;D:\Python\python27\Scripts\;%path%
start cmd 
exit



::��������û�ã����������е�ʱ���õ�
::pause>nul
::exit
