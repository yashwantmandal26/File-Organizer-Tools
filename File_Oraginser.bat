@echo off
setlocal enabledelayedexpansion

REM ===== Define folders =====
set "VIDEOS=VIDEOS"
set "MUSIC=MUSIC"
set "IMAGES=IMAGES"
set "DOCS=DOCUMENTS"
set "CODE=CODE"
set "COMPRESSED=COMPRESSED"
set "PROGRAMS=PROGRAMS"
set "OTHERS=OTHERS"
set "OTHERFOLDERS=OTHER FOLDERS"

REM ===== Sort files =====
for %%f in (*.*) do (
    REM ---- Skip all .bat files ----
    if /I "%%~xf"==".bat" (
        echo Skipping batch file: %%f
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

        REM ---- Documents (includes spreadsheets now) ----
        for %%x in (.doc .docx .pdf .ppt .pptx .txt .rtf .xls .xlsx .csv) do (
            if /I "%%~xf"=="%%x" (
                if not exist "%DOCS%" mkdir "%DOCS%"
                move "%%f" "%DOCS%\" >nul 2>&1
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
    if /I not "%%D"=="%VIDEOS%" if /I not "%%D"=="%MUSIC%" if /I not "%%D"=="%DOCS%" if /I not "%%D"=="%IMAGES%" if /I not "%%D"=="%CODE%" if /I not "%%D"=="%COMPRESSED%" if /I not "%%D"=="%PROGRAMS%" if /I not "%%D"=="%OTHERS%" if /I not "%%D"=="%OTHERFOLDERS%" (
        if not exist "%OTHERFOLDERS%" mkdir "%OTHERFOLDERS%"
        move "%%D" "%OTHERFOLDERS%\" >nul 2>&1
    )
)

echo ✅ ALL FILES AND FOLDERS ORGANIZED SUCCESSFULLY!