for i in *.svg; do NAME=`echo "$i" | cut -d'.' -f1`; rsvg-convert -f pdf -o "$NAME.pdf" "$NAME.svg"; done
for i in *.pdf; do pdfcrop $i $i & done
