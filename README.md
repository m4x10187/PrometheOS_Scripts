PrometheOS_Scripts
==================

Scripts for working with PrometheOS.

Modules
-------
- [FFmpeg](https://ffmpeg.org/)

Usage
-----

### Setup (Linux)
```
# Install the latest release of FFmpeg.
./setup_prereq.sh
```
### Setup (Windows)
```
# Extract the contents from the latest release archive of FFmpeg to "C:\ffmpeg".
```
Creating Animated Backgrounds
-----------------------------
```
# Copy your video file or animated GIF into the "animated_bkgs" directory.
# Open the Bash or Batch script (depending on which operating system that you're using)
  via a text editor such as Notepad++ or KWrite.
# Change the filename variable from "input.mp4" with the filename of your video file
  (including extension).
# By default, the configured dimensions are 256x256 pixels. This can be changed, however,
  too many larger frames can exceed the memory limitations.
# Save the script.

# Extract video frames into "backgrounds" directory (Windows)
extract_frames.bat

# Extract video frames into "backgrounds" directory (Linux)
./extract_frames.sh
```
