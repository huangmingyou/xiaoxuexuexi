#!/bin/bash
cd /Users/mingyouhuang/github/xiaoxuexuexi
rm *pdf

> content.tex
j=0
for i in $(cat hanzi.txt);do
	j=$[$j+1]
	echo "\hanzibox{$i}\hspace{1cm}" >> content.tex
	k=$[$j%4]
	if [ $k -eq 0 ];then
		echo "\\par" >> content.tex
	fi
done

xelatex cuotiku.tex
open cuotiku.pdf
