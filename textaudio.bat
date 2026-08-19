@echo off
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem 'unit[0-9]*_-*.mp3' | Rename-Item -NewName { $_.Name -replace '^unit[0-9]+_-', 'text-' }"
pause