@echo off
echo Đang tắt các ứng dụng...

taskkill /F /IM Admin.exe >nul 2>&1
taskkill /F /IM ViewAPI.exe >nul 2>&1

:: Kiểm tra nếu trình duyệt mở trang https://localhost:7041/ thì tắt
echo Kiểm tra trình duyệt...

:: Dùng PowerShell để tìm tiến trình chứa localhost:7041 (chỉ hoạt động với Chrome/Edge)
powershell -Command ^
"Get-CimInstance Win32Process | Where-Object { `
    $.CommandLine -like 'https://localhost:7041/' 
} | ForEach-Object { 
    Write-Output ('Tắt ' + $.Name); `
    Stop-Process -Id $.ProcessId -Force `
}"

echo Đã tắt xong.
pause