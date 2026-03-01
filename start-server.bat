@echo off
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Server starting at http://localhost:8000/golf-tracker.html
    python -m http.server 8000
    goto end
)
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    echo Server starting at http://localhost:8000/golf-tracker.html
    python3 -m http.server 8000
    goto end
)
echo ERROR: Python is not installed.
echo Please install Python from https://www.python.org/downloads/
pause
:end