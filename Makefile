NAME=page
BIB_NAME=/home/Chang Lv/results/b20140922unibib/pub
SRC=../src20210616
CV=../../cv/cv20140920
CV_NAME=cv

all: push
	$(info synced to github)

add:
	git add ./*

pull:
	git pull -q origin master

push: commit
	git pull -q origin master
	git push origin master

commit: add
  ifneq ($(shell git status | grep -q clean; echo $?), 0)
		git commit -am 'auto commit by make'
  else
		$(info clean, nothing to commit)
  endif

status:
	git status
