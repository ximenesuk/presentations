#!/bin/sh
<arrow.ps pstopnm -xsize 8192 | pnmcrop | pnmtopng -compression 9 -transparent rgb:f/f/f >arrow.png
