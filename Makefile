
PELICAN=pelican
PELICANOPTS=None

BASEDIR=$(PWD)
INPUTDIRME=$(BASEDIR)/srcME
INPUTDIRTHEM = $(BASEDIR)/srcTHEM
OUTPUTDIRME=$(BASEDIR)/outputME
OUTPUTDIRTHEM=$(BASEDIR)/outputTHEM
CONFFILE=$(BASEDIR)/pelican.conf.py
THEME=pelican-course-theme


SSH_HOST=web 
SSH_TARGET_DIRME=markbetnel.com/qa1ME/
SSH_TARGET_DIRTHEM=markbetnel.com/qa1

DROPBOX_DIR=~/Dropbox/Public/

help:
	@echo 'Makefile for a pelican Web site                                       '
	@echo '                                                                      '
	@echo 'Usage:                                                                '
	@echo '   make clean                       remove the generated files        '
	@echo '   make all                         html ssh_upload                   '
	@echo '   make html                        (re)generate the web site         '
	@echo '   ssh_upload                       upload the web site using SSH     '
	@echo '                                                                      '

all: htmlME htmlTHEM ssh_uploadME ssh_uploadTHEM

htmlME: clean $(OUTPUTDIRME)/index.html
	@echo 'Done'

htmlTHEM: clean $(OUTPUTDIRTHEM)/index.html
	@echo 'Done'

$(OUTPUTDIRME)/%.html:
	$(PELICAN) $(INPUTDIRME) -o $(OUTPUTDIRME) -s $(CONFFILE) -t $(THEME)

$(OUTPUTDIRTHEM)/%.html:
	$(PELICAN) $(INPUTDIRTHEM) -o $(OUTPUTDIR2THEM) -s $(CONFFILE) -t $(THEME)

clean:
	rm -fr $(OUTPUTDIRME)
	mkdir $(OUTPUTDIRME)
	rm -fr $(OUTUTDIRTHEM)
	mkdir $(OUTPUTDIRTHEM)


ssh_uploadME: $(OUTPUTDIRME)/index.html
	scp -r $(OUTPUTDIRME)/* web:$(SSH_TARGET_DIRME)

ssh_uploadTHEM: $(OUTPUTDIRTHEM)/index.html
	scp -r $(OUTPUTDIRTHEM)/* web:$(SSH_TARGET_DIRTHEM)

.PHONY: html help clean ftp_upload ssh_upload dropbox_upload github
    
