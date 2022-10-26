# HuSpaCy in R

Jupyter+R: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/huspacy/huspacy-in-r/master?filepath=index.ipynb)

RStudio: [![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/huspacy/huspacy-in-r/master?urlpath=rstudio)

This repository presents a minimal working prototype to use HuSpaCy models from r.

## Reproducing it locally

1. Make sure you have conda installed
2. Create a new environment using the provided `environemnt.yml` file: `$ conda env create -n huspacyr --file ./environment.yml`
3. Activate the environment: `$ conda activate huspacyr`

Having all dependencies installed, all you need to do is to load `spacyr` in the installed environment:

```R
library("spacyr")

# Loads the model installed to the conda environment
spacy_initialize(model = "hu_core_news_lg")
```

HuSpaCy model should now parse any texts:

```R
txt <- c(d1="Csiribiri csiribiri zabszalma,", d2="négy csillag közt alszom ma.")
parsedtxt <- spacy_parse(txt)
```

