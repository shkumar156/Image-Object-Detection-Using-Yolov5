@echo off
echo Starting Object Detection App...
echo.

echo Starting Backend Server (Port 5000)...
start "Backend Server" cmd /k "npm start"

echo Waiting 3 seconds for backend to start...
timeout /t 3 /nobreak > nul

echo Starting Frontend Server (Port 3000)...
start "Frontend Server" cmd /k "cd ../frontend && npm start"

echo.
echo Both servers are starting...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:3000
echo.
echo Press any key to close this window...
pause > nul 