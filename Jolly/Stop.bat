@echo off
echo Đang tắt các ứng dụng...

taskkill /F /IM Admin.exe >nul 2>&1
taskkill /F /IM ViewAPI.exe >nul 2>&1

:: Kiểm tra nếu trình duyệt mở trang https://localhost:7041 thì tắt
echo Kiểm tra trình duyệt...

:: Dùng PowerShell để tìm tiến trình chứa localhost:7041 (chỉ hoạt động với Chrome/Edge)
powershell -Command ^
"Get-CimInstance Win32_Process | Where-Object { `
    $_.CommandLine -like '*https://localhost:7041*' `
} | ForEach-Object { `
    Write-Output ('Tắt ' + $_.Name); `
    Stop-Process -Id $_.ProcessId -Force `
}"

echo Đã tắt xong.
pause
