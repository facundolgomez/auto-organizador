#!/bin/bash

home="$HOME"

if [ "$LANG" = "en_US.UTF-8" ]; then
    mkdir -p ~/Images ~/Music ~/Videos ~/Documents
else 
    mkdir -p ~/Imágenes ~/Música ~/Videos ~/Documentos
fi

if [[ "$LANG" = "en_US.UTF-8" ]]; then
    for i in *; do
        case $i in
            *.png | *.jpg | *.gif | *.webp | *.jpeg)
                mv "$i" "$home/Images"
                ;;
            *.mp3 | *.ogg | *.flac | *.opus)
                mv "$i" "$home/Music"
                ;;
            *.webm | *.ogv | *.mkv | *.flv | *.mp4)
                 mv "$i" "$home/Videos"
                 ;;
            *.txt | *.pdf | *.doc | *.docx | *.xls | *.xlsx | *.ppt | *.pptx | *.md)
                 mv "$i" "$home/Documents"
                 ;;
        esac
    
    done

else
    for i in *; do
        case $i in
            *.png | *.jpg | *.gif | *.webp | *.jpeg)
                mv "$i" "$home/Imágenes"
                ;;
            *.mp3 | *.ogg | *.flac | *.opus)
                mv "$i" "$home/Música"
                ;;
            *.webm | *.ogv | *.mkv | *.flv | *.mp4)
                 mv "$i" "$home/Videos"
                ;;
            *.txt | *.pdf | *.doc | *.docx | *.xls | *.xlsx | *.ppt | *.pptx | *.md)
                 mv "$i" "$home/Documentos"
                 ;;    
        esac

    done
fi



