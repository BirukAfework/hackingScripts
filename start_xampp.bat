@echo off
echo Starting XAMPP Control Panel...

:: Path to XAMPP control panel (update this if your XAMPP is installed elsewhere)
start "" "C:\xampp\xampp-control.exe"

:: Wait a few seconds to allow XAMPP to initialize (adjust time if needed)
timeout /t 5 /nobreak >nul

:: Start Apache and MySQL (assuming they’re not already running)
"C:\xampp\apache\bin\httpd.exe" >nul 2>&1
"C:\xampp\mysql\bin\mysqld.exe" --standalone >nul 2>&1

:: Open the specified project in the default browser (update the URL to your project)
start "" "http://localhost/your-project-folder/"

exit
