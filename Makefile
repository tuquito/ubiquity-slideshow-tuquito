# Makefile for ubiquity-slideshow-tuquito

SOURCE=.
BUILD=$(SOURCE)/build
SOURCESLIDES=$(SOURCE)/slideshows

all: clean build_tuquito translations

build_init:
	mkdir -p $(BUILD)

build_tuquito: build_init
	cp -rL $(SOURCESLIDES)/tuquito $(BUILD)

translations:
	./generate-local-slides.sh tuquito

.PHONY : clean

clean:
	-rm -rf $(BUILD)
