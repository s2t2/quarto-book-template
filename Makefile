




autodoc:
	quartodoc build --config docs/_quarto.yml --verbose

html:
	quarto render docs/

open-html:
	open docs/_build/index.html



build:
	quartodoc build --config docs/_quarto.yml --verbose
	quarto render docs/
	open docs/_build/index.html

# THESE BREAK THE HTML THOUGH?

pdf:
	quarto render docs/ --to pdf

open-pdf:
	open docs/_build/index.pdf
