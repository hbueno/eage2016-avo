

#A=${1}-edition


# Converte EPS para PDF e faz o crop
#find . -name '*.eps' -exec ll -1v {} \;
find . -name '*.eps' -exec epstopdf {} \;
find . -name '*.pdf' -exec pdfcrop {} \;
find . -name '*-crop.pdf' -exec pdftops -eps {} \;
find . -name '*-crop.eps' -exec rename -f -s -crop.eps .eps {} \;
find . -name '*-crop.pdf' -exec rename -f -s -crop.pdf .pdf {} \;
find . -name '*-crop*' -exec rm -rf {} \;
#find . -name '*.pdf' -exec rm -rf {} \;


exit 0

