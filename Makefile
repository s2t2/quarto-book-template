
html:
	quarto render docs/

open-html:
	open docs/_build/index.html




# THESE BREAK THE HTML THOUGH?

pdf:
	quarto render docs/ --to pdf

open-pdf:
	open docs/_build/index.pdf
