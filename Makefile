all:
	xelatex cv
	biber cv
	xelatex cv

nobib:
	xelatex cv

sub:
	gsed -i 's/\s{\\textless}sub{\\textgreater}/$$_/' cv.bib
	gsed -i 's/{\\textless}\/sub{\\textgreater}/$$/' cv.bib

publications:
	cp cv.bib pub.bib
	xelatex pub
	biber pub
	xelatex pub
