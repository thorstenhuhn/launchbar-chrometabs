OSACOMPILE=/usr/bin/osacompile

LBACTION_DIR := $(wildcard *.lbaction)
INSTALL_DIR := $(HOME)/Library/Application\ Support/LaunchBar/Actions/
SRC_FILES := $(wildcard */Contents/Scripts/*.applescript)
BIN_FILES := $(SRC_FILES:.applescript=.scpt)

%.scpt: %.applescript
	$(OSACOMPILE) -o $@ $<

all: $(BIN_FILES)

install: all
	rsync -av $(LBACTION_DIR) --exclude $(SRC_FILES) $(INSTALL_DIR)

