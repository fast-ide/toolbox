SHELL = /bin/bash

all: requirements install

requirements:
	./requirements.sh

install:
	./install.sh