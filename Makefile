NAME=page
BIB_NAME=/home/micromath/results/b20140922unibib/pub
SRC=../src20210616
CV=../../cv/cv20140920
CV_NAME=cv
STATUS=$(shell git status | grep -o clean)

all: push
	$(info synced to github)

add:
	git add ./*

pull:
	git pull -q origin master

push: commit
	git push origin master

commit: add
  ifneq ($(STATUS), clean)
		git commit -am 'auto commit by make'
  endif

status:
	git status
