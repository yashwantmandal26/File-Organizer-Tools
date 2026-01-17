📂 AllRounder Folder-Based Organizer (Batch Script)
This project is a Windows Batch File Organizer that automatically sorts files and folders in the current directory into well-defined categories. It helps keep your workspace clean and structured by moving files into dedicated folders based on their type.
🚀 Features
- Automatic File Sorting
Organizes files into categories such as:
- VIDEOS → .mp4, .mkv, .avi, .mov, .wmv, .flv, .webm, .hevc
- MUSIC → .mp3, .wav, .m4a, .flac, .aac
- IMAGES → .jpg, .jpeg, .png, .gif, .bmp, .svg, .tiff, .webp, .heic
- DOCUMENTS → .doc, .docx, .pdf, .ppt, .pptx, .txt, .rtf, .xls, .xlsx, .csv
- CODE → .py, .java, .c, .cpp, .html, .css, .js, .ipynb
- COMPRESSED → .zip, .rar, .7z, .tar, .gz
- PROGRAMS → .exe, .msi, .sh
- OTHERS → Any file not matching the above categories
- OTHER FOLDERS → Any remaining folders not created by the organizer itself
- Batch File Protection
All .bat files (including the organizer itself) are skipped and left untouched.
- Clean Folder Structure
Creates folders in ALL CAPS for consistency and easy navigation.
- Safe Execution
Hidden/system files are not moved, ensuring no accidental disruption of system behavior.
🛠️ Usage
- Download or copy the batch script into the folder you want to organize.
- Double-click the .bat file to run it.
- Sit back and watch as your files and folders are neatly organized into their respective categories.
✅ Example
Before running:
project/
├── song.mp3
├── movie.mp4
├── notes.docx
├── script.py
├── archive.zip
├── randomfile.xyz
├── oldfolder/
└── AllRounderFolderBasedOrganizer.bat


After running:
project/
├── VIDEOS/
│   └── movie.mp4
├── MUSIC/
│   └── song.mp3
├── DOCUMENTS/
│   └── notes.docx
├── CODE/
│   └── script.py
├── COMPRESSED/
│   └── archive.zip
├── OTHERS/
│   └── randomfile.xyz
├── OTHER FOLDERS/
│   └── oldfolder/
└── AllRounderFolderBasedOrganizer.bat


⚡ Why Use This?
- Saves time by eliminating manual sorting.
- Keeps your workspace clean and professional.
- Works instantly with no dependencies — just Windows .bat scripting.

###################
UnFolder_Everthing  WILL TAKE OUT ALL THE FILES FROM ANY FOLDERS IN THE DIRECTORY THE THIS .bat FILE IS PRESENT.
