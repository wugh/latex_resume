all:
	xelatex cjkcv.tex
	xelatex cv.tex
	cp cjkcv.pdf 吴国华-北邮-计算机科学与技术-18501370591.pdf
	cp cv.pdf Resume_GuohuaWu_BUPT.pdf
clean:
	rm *.aux
	rm *.log
