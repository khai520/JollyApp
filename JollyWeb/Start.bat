@echo off
echo Đang khởi động Admin.exe và ViewAPI.exe...

start "" ".\JollyWeb.exe"
start "" ".\ViewAPI.exe"

timeout /t 10 >nul  REM ⏳ Đợi 10 giây cho app khởi động (tuỳ chỉnh nếu cần)

echo Mở trình duyệt...
start "" "http://localhost:7084"

exit