

```sh
conda create -n quarto-env python=3.11
conda activate quarto-env
```


```sh
pip install -r docs/requirements.txt
```



```sh
quarto render docs/
```


Auto docs:

```sh
quartodoc build --config docs/_quarto.yml --verbose

#make autodoc
```


https://machow.github.io/quartodoc/get-started/overview.html


```sh
quartodoc build --watch
quarto preview
```
