@echo off
echo Đang tắt các ứng dụng...

taskkill /F /IM JollyWeb.exe >nul 2>&1
taskkill /F /IM ViewAPI.exe >nul 2>&1

echo Đã tắt xong.
exit