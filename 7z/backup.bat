@echo off
set name="MR"
set storage="E:\Games\Steam\userdata\xxx\xxx\remote\win64_save"

:: 7z path 
set zip="D:\Program Files\7-Zip\7z.exe"
:: save path, if not startwith disk, save to bat file folder
set history=%name%_%date:~0,4%%date:~5,2%%date:~8,2%.7z

echo ====== cheking backups ======
del %history%
echo ====== saving backups ======
%zip% a -t7z %history% %storage%
echo ====== complete backups ======
pause
