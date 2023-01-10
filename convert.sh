for filename in *.MOV;
do ffmpeg -i "$filename" -c:v h264 -c:a aac -strict -2 -pix_fmt yuv420p -q:v 0 "${filename%%.*}.mp4"
done
