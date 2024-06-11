


autobuild:
	quartodoc build --config docs/_quarto.yml
	quarto render docs/
	open docs/_book/index.html


# if using autodoc, run make autodoc first, before make build
autodoc:
	quartodoc build --config docs/_quarto.yml --verbose

preview:
	quarto preview docs/ --verbose

# otherwise just run make build
build:
	quarto render docs/ --verbose

#build-tex:
#	quarto render docs/ --to latex
#
#build-pdf:
#	quarto render docs/ --to pdf


# can run after make build (may need to change name of PDF to match book name in the _config.yml)
open-pdf:
	open docs/_book/My-Quarto-Book.pdf

open-html:
	open docs/_book/index.html







# OLD HTML STUFF
#
#html:
#	quarto render docs/
#
#open-html:
#	open docs/_build/index.html
#
#build:
#	quartodoc build --config docs/_quarto.yml --verbose
#	quarto render docs/
#	open docs/_build/index.html
#
## THESE BREAK THE HTML THOUGH?
#
#pdf:
#	quarto render docs/ --to pdf
#
#open-pdf:
#	open docs/_build/index.pdf
