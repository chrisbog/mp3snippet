# mp3snippet
Script to make a snippet of any MP3 file

## Description
This script will use the ffmpeg application to create a snippet for all MP3s within a directory.   It will also fade in and fade out of the song.  The script will start at 30 seconds in the original file and the new length of the snippet will be 1:30 seconds.

## Requirements
This shell script uses the zsh shell.

You must install the ffmpeg application.  You can do this via the following web site:  https://www.ffmpeg.org/download.html

## Usage
```
zsh mp3snippet.sh
```

It will by default create a new snippet file in the Downloads directory for each original file.
