@echo off
setlocal enabledelayedexpansion

REM ===== Define folders =====
set "VIDEOS=Videos"
set "MUSIC=Music"
set "IMAGES=Images"
set "DOCS=Documents"
set "SPREADSHEETS=Spreadsheets"
set "CODE=Code"
set "COMPRESSED=Compressed"
set "PROGRAMS=Programs"
set "OTHERS=Others"
set "FOLDERS=Folders"

REM ===== Sort files =====
for %%f in (*.*) do (
    REM ---- Skip organiser itself ----
    if /I "%%~nxf"=="AllRounderFolderBasedOraginser.bat" (
        echo Skipping organiser file: %%f
    ) else (
        set "moved="

        REM ---- Videos ----
        for %%x in (.mp4 .mkv .avi .mov .wmv .flv .webm .hevc) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%VIDEOS%" mkdir "%VIDEOS%"
                move "%%f" "%VIDEOS%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Music ----
        for %%x in (.mp3 .wav .m4a .flac .aac) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%MUSIC%" mkdir "%MUSIC%"
                move "%%f" "%MUSIC%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Images ----
        for %%x in (.jpg .jpeg .png .gif .bmp .svg .tiff .webp .heic) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%IMAGES%" mkdir "%IMAGES%"
                move "%%f" "%IMAGES%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Documents ----
        for %%x in (.doc .docx .pdf .ppt .pptx .txt .rtf) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%DOCS%" mkdir "%DOCS%"
                move "%%f" "%DOCS%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Spreadsheets ----
        for %%x in (.xls .xlsx .csv) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%SPREADSHEETS%" mkdir "%SPREADSHEETS%"
                move "%%f" "%SPREADSHEETS%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Code Files ----
        for %%x in (.py .java .c .cpp .html .css .js .ipynb) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%CODE%" mkdir "%CODE%"
                move "%%f" "%CODE%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Compressed ----
        for %%x in (.zip .rar .7z .tar .gz) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%COMPRESSED%" mkdir "%COMPRESSED%"
                move "%%f" "%COMPRESSED%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Programs ----
        for %%x in (.exe .msi .sh) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%PROGRAMS%" mkdir "%PROGRAMS%"
                move "%%f" "%PROGRAMS%\" >nul 2>&1
                set "moved=1"
            )
        )

        REM ---- Others ----
        if not defined moved (
            if not exist "%OTHERS%" mkdir "%OTHERS%"
            move "%%f" "%OTHERS%\" >nul 2>&1
        )
    )
)

REM ===== Move Remaining Folders =====
for /d %%D in (*) do (
    if /I not "%%D"=="%VIDEOS%" if /I not "%%D"=="%MUSIC%" if /I not "%%D"=="%DOCS%" if /I not "%%D"=="%IMAGES%" if /I not "%%D"=="%SPREADSHEETS%" if /I not "%%D"=="%CODE%" if /I not "%%D"=="%COMPRESSED%" if /I not "%%D"=="%PROGRAMS%" if /I not "%%D"=="%OTHERS%" if /I not "%%D"=="%FOLDERS%" (
        if /I not "%%D"=="AllRounderFolderBasedOraginser.bat" (
            if not exist "%FOLDERS%" mkdir "%FOLDERS%"
            move "%%D" "%FOLDERS%\" >nul 2>&1
        )
    )
)

echo ✅ All files and folders organized successfully!


