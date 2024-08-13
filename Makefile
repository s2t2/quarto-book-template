
preview:
	quarto preview docs/

render:
	quarto render docs/

build:
	quarto render docs/
	open docs/_build/index.html

open:
	open docs/_build/index.html

#open-pdf:
#	open docs/_build/index.pdf


# remove cache to get a clean build, as desired:
render-fresh:
	rm -rf docs/_build
	rf -rf docs/.quarto
	quarto render docs/
