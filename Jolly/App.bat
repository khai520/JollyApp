@echo off
echo Đang khởi động Admin.exe và ViewAPI.exe...

start "" ".\Admin\Admin.exe"
start "" ".\Admin\ViewAPI.exe"

timeout /t 10 >nul  REM ⏳ Đợi 10 giây cho app khởi động (tuỳ chỉnh nếu cần)

echo Mở trình duyệt...
start "" "https://localhost:7041"

exit
