@echo off

set storage=D:\Downloads\
set exe=C:\bin\ffmpeg-win64-static\bin\ffmpeg.exe

:: args
:: 资源地址，最好携带""注释
set http=%1 
:: 保存文件名称
set name=%2

::do

set cmd= %exe% -i %http% %storage%%name%
echo %cmd%
echo ====== run ======

%cmd%

echo ====== complete backups ======
pause
