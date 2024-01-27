@echo off

rem FFmpeg path
SET FFMPEG_DIR="C:\ffmpeg\bin"
rem Video filename (with extension)
SET INPUT_FILE="input.mp4"
rem Video dimensions
SET VIDEO_W="256"
SET VIDEO_H="256"
rem Output directory for extracted frames
SET OUT_DIR="backgrounds"

if not exist "%OUT_DIR%/*.*" (
    mkdir %OUT_DIR% 2>nul
    if not errorlevel 1 (
    del "%OUT_DIR%/*.*" /y
    %FFMPEG_DIR%\ffmpeg -i %INPUT_FILE% -filter:v scale=w=%VIDEO_W%:h=%VIDEO_H%:force_original_aspect_ratio=increase,crop=%VIDEO_W%:%VIDEO_H%,fps=10 "backgrounds/background%d.png"
    )
)

:end
