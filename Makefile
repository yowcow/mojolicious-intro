.PHONY: carton-install test clean

all: carton-install

carton-install:
	carton install

test:
	carton exec -- prove -Ilib -r t

boot-app:
	carton exec -- plackup app.psgi
