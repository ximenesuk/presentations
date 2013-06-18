#!/bin/sh

set -e

for i in *.ad
do
    chmod 444 $i
    ditaa -E -S -o -s 8 "$i"
    PNG_FILE="`basename \"$i\" .ad`".png
    <"$PNG_FILE" pngtopnm | pnmcrop >/tmp/diagram.pnm
    </tmp/diagram.pnm pnmtopng -compression 9 -transparent rgb:f/f/f >"$PNG_FILE"
    chmod 644 $i
done
