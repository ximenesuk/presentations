#!/bin/sh
pstopnm -xsize 3800 -stdout arrow.ps | pnmcrop >arrow.ppm
<arrow.ppm ppmdist >arrow.pgm
<to-client-v5.png pngtopnm | pnmcomp -xoff=1375 -yoff=725 -invert -alpha=arrow.pgm arrow.ppm | pnmtopng -compression 9 -transparent rgb:f/f/f >to-client-v5-rp.png
rm arrow.p??
