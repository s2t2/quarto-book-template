# quarto-book-template

Because there has to be something better / easier than a sphinx based content publishing toolchain.

And so R and Python users can use the same toolchain.


## Prerequisites

### Quarto

We need to install Quarto on your local machine. You can [download](https://quarto.org/docs/get-started/), or [install via homebrew](https://formulae.brew.sh/cask/quarto) (if you like that kind of thing):

```sh
brew install --cask quarto
```


If you use VS Code, you can also consider installing the [Quarto Extension](https://marketplace.visualstudio.com/items?itemName=quarto.quarto).

### Setup

Make a copy of the template repo. Clone your copy onto your computer and navigate to it from the command line.

If you are using IPYNB notebooks, as exemplified in this repo, you will need to install packages that those notebooks require (currently listed in "docs/requirements.txt"). In which case you probably want to setup a virtual environment as well (if you like that kind of thing):

```sh
conda create -n quarto-env python=3.10
conda activate quarto-env

pip install docs/requirements.txt
```

## Content

References:

  + https://quarto.org/docs/computations/python.html
  + https://quarto.org/docs/reference/formats/pdf.html

## Building


Rendering a doc (performs a build and writes local HTML files to "__build_", as configured):

```sh
quarto render docs/
```

Rendering a PDF (creates weird files? creates a PDF per file?):
```sh
quarto render docs/ --to pdf
```

Previewing (runs like a local webserver, creates weird files?):

```sh
# preview as html
quarto preview docs/

# preview as pdf
#quarto preview docs/ --to pdf
```


### Autodocs

Uses [quartodoc](https://machow.github.io/quartodoc/get-started/overview.html) to auto-document your python package (if that's your use case):



Auto docs:

```sh
quartodoc build --config docs/_quarto.yml --verbose

#make autodoc
```

That will create or update QMD files in the docs/references folder. We check these in, and we point our quarto config file to render a link to the index of this folder. This provides an entrypoint into the auto-documentation.

Then we build the site as normal.





## Deploying

We are using the "quarto-deploy.yml" file to deploy the site to GitHub Pages when new commits are pushed to the main branch.

In order for this to work, you first need to configure your GitHub Pages repo settings to publish via GitHub Actions.

This workflow uses the [quarto publish action](https://github.com/quarto-dev/quarto-actions/blob/main/examples/quarto-publish-example.yml).

Need to run `quarto publish gh-pages` first? Manual deploy?
