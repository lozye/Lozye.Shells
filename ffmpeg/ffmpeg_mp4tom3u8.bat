@echo on
:: ffmpeg mp4 文件转 m3u8
set arguments=%1
set name=%2
set path=F:\minio-storage\lozye\moive\
set tspath=F:\minio-storage\lozye\ts\
set ffmpeg_ts=../ts/

C:\bin\ffmpeg-win64-static\bin\ffmpeg.exe -y -i %arguments% -vcodec copy -acodec copy -vbsf h264_mp4toannexb -c copy -map 0 -f segment -segment_list %path%%name%.m3u8 -segment_list_entry_prefix %ffmpeg_ts%  -segment_time 60 %tspath%\%name%-%%03d.ts


echo %arguments% completed
pause