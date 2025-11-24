# File-Organizer-Tools
Batch scripts to organize and unfold files in Windows - Automate your file management!🫡

# Windows File Organizer Scripts

This repository contains two small but handy Windows batch utilities to clean and organize messy folders with a single double-click.

## Scripts

### 1. UnFolder_it.bat

**Purpose:**  
Flatten a messy directory structure by pulling everything up to the current folder.

**What it does:**

- Loops through all subfolders in the current directory.
- Moves every file from inside each subfolder into the current folder.
- Moves inner subfolders up one level as well.
- Deletes any subfolder that becomes empty.
- Prints a simple completion message when done.

**Typical use case:**

You have many nested folders (e.g., `Downloads` full of ZIP-extracted directories) and you just want all the files at one level instead of buried inside multiple subfolders.

---

### 2. Filee_Oraginser.bat

**Purpose:**  
Automatically sort files in the current folder into categorized subfolders based on file type.

**How it works:**

- Defines target folders like:
  - `Videos`, `Music`, `Images`, `Documents`, `Spreadsheets`
  - `Code`, `Compressed`, `Programs`, `Others`, `Folders`
- For each file in the current directory:
  - Videos (.mp4, .mkv, .avi, etc.) → `Videos/`
  - Music (.mp3, .wav, .flac, etc.) → `Music/`
  - Images (.jpg, .jpeg, .png, .gif, .bmp, .svg, .tiff, .webp, .heic) → `Images/`
  - Documents (.doc, .docx, .pdf, .ppt, .pptx, .txt, .rtf) → `Documents/`
  - Spreadsheets (.xls, .xlsx, .csv, etc.) → `Spreadsheets/`
  - Code files (.py, .c, .cpp, .js, .html, .css, etc.) → `Code/`
  - Compressed files (.zip, .rar, .7z, .tar, .gz) → `Compressed/`
  - Programs (.exe, .msi, .sh, etc.) → `Programs/`
  - Anything that doesn’t match a known type → `Others/`
- After sorting files, moves all remaining folders (except its own and the category folders) into a `Folders/` directory.
- Prints a success message when everything is organized.

**Typical use case:**

Your `Downloads` or `Desktop` folder is full of mixed file types. Run this script to instantly clean it up and group everything into sensible folders.

---

## How to use

> ⚠️ These scripts **move** files, they do not copy them. Always test on a sample folder before using them on important data.

1. Copy the `.bat` file you want to use into the target folder.
2. Double-click the `.bat` file.
3. Wait for the console window to finish and show the completion message.
4. Check the folder structure and verify the results.

---

## Requirements

- Windows (tested on modern versions).
- No extra dependencies – pure `.bat` scripts.

