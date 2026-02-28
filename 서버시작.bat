@echo off
echo ================================================
echo   CADDIE 골프 트래커 - 로컬 서버 시작
echo ================================================
echo.

:: Python이 있으면 Python으로 서버 실행
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Python 서버를 시작합니다...
    echo 브라우저에서 http://localhost:8000/golf-tracker.html 을 열어주세요
    echo 종료하려면 이 창에서 Ctrl+C 를 누르세요
    echo.
    python -m http.server 8000
    goto end
)

:: Python3 시도
python3 --version >nul 2>&1
if %errorlevel% == 0 (
    echo Python3 서버를 시작합니다...
    echo 브라우저에서 http://localhost:8000/golf-tracker.html 을 열어주세요
    echo.
    python3 -m http.server 8000
    goto end
)

:: Node.js가 있으면 npx serve 사용
node --version >nul 2>&1
if %errorlevel% == 0 (
    echo Node.js 서버를 시작합니다...
    echo 브라우저에서 http://localhost:3000/golf-tracker.html 을 열어주세요
    echo.
    npx serve . -p 3000
    goto end
)

echo Python 또는 Node.js 가 설치되어 있지 않습니다.
echo.
echo 아래 방법 중 하나를 선택하세요:
echo.
echo 1. Python 설치: https://www.python.org/downloads/
echo 2. Node.js 설치: https://nodejs.org/
echo.
echo 또는 VS Code의 Live Server 확장을 사용하세요.
pause

:end
