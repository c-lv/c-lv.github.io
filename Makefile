NAME=page
BIB_NAME=/home/micromath/results/b20140922unibib/pub
SRC=../src20210616
CV=../../cv/cv20140920
CV_NAME=cv

all: push
	echo synced to github

add:
	git add ./*

pull:
	git pull -q origin master

push: commit
	make status | grep -q clean
	git push origin master

commit: add
	git commit -m 'auto commit by make'

status:
	git status
