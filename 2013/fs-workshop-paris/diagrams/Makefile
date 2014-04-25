
objects := $(patsubst %.ad,%.png,$(wildcard *.ad))

all: $(objects)

%.png: %.ad
	chmod 444 $<
	ditaa -E -S -o -s 8 $<
	<$@ pngtopnm | pnmcrop > /tmp/diagram.pnm
	</tmp/diagram.pnm pnmtopng -compression 9 -transparent rgb:f/f/f > $@
	chmod 644 $<

clean:
	rm *.png

.PHONY: all clean
