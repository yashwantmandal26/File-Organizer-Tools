@echo off
setlocal enabledelayedexpansion

REM === Go through all subfolders of current folder ===
for /d %%d in (*) do (
    echo 📂 Processing folder: %%d

    REM --- Move files from inside this folder to current folder ---
    for %%f in ("%%d\*.*") do (
        if exist "%%f" (
            move "%%f" "%cd%" >nul 2>&1
        )
    )

    REM --- Move subfolders themselves to current folder ---
    for /d %%s in ("%%d\*") do (
        move "%%s" "%cd%" >nul 2>&1
    )

    REM --- Remove folder if empty ---
    rd "%%d" >nul 2>&1
)

echo ✅ Done! All inner files moved out, and subfolders pulled out.

