#!/bin/zsh

# Set the null_lob option to ensure the application won't error out if not files are found.
setopt null_glob

# For each file in the current director, process each file
for x in *; do 

	# Extract the filename and extension
	fname=$x:t:r
	ext=$x:t:e

	# Create a new filename with the snippet word
	output=${fname}-snippet.$ext

	# Process ffmpeg to create the snippet.   The options are below:
	# -ss Start Time
	# -t How long of the file for us to make the snippet
	# -af This parameter will fade in and fade out
	ffmpeg -ss 0:0:30 -t 0:1:30 -i ${x} -af "afade=t=in:st=0:d=4,afade=t=out:st=85:d=5" ~/Downloads/$output
done

