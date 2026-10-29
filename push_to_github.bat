@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo ======================================================================
echo    STOU หลักการส่งเสริมและพัฒนาการเกษตร - GitHub Push Utility
echo ======================================================================
echo.

cd /d "%~dp0"

echo [1/4] ตรวจสอบสถานะ Git...
git status --short
echo.

echo [2/4] เพิ่มไฟล์ที่เปลี่ยนแปลงเข้าสู่ Git Index...
git add .
echo.

set "commit_msg=Update STOU Agro Promote Curriculum, Web App, 750 Quizzes and PDFs"
set /p "user_msg=กรุณาระบุข้อความ Commit (กด Enter เพื่อใช้ค่าเริ่มต้น): "
if not "!user_msg!"=="" set "commit_msg=!user_msg!"

echo [3/4] กำลังทำการ Commit: "!commit_msg!"
git commit -m "!commit_msg!"
echo.

echo [4/4] ตรวจสอบ Remote Repository...
git remote -v | findstr /i "origin" >nul
if %errorlevel% neq 0 (
    echo [แจ้งเตือน] ยังไม่ได้เชื่อมต่อ Remote Repository (origin)
    set /p "repo_url=กรุณาวาง URL ของ GitHub Repository (เช่น https://github.com/username/repo.git): "
    if not "!repo_url!"=="" (
        git remote add origin !repo_url!
        git branch -M main
        echo กำลัง Push สู่ origin main...
        git push -u origin main
    ) else (
        echo ยกเลิกการ Push (ยังไม่ได้ระบุ URL)
    )
) else (
    echo กำลัง Push สู่ origin main...
    git push origin main
    if %errorlevel% neq 0 (
        echo Push ไม่สำเร็จ กำลังลอง push แบบระบุ upstream...
        git push -u origin main
    )
)

echo.
echo ======================================================================
echo    ดำเนินการเสร็จสิ้นเรียบร้อย!
echo ======================================================================
pause
