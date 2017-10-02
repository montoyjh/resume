all:
	xelatex cv
	biber cv
	xelatex cv

nobib:
	xelatex cv
