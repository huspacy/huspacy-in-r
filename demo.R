library("spacyr")

# Loads the model installed to the conda environment
spacy_initialize(model = "hu_core_news_lg")

# Parsing texts
txt <- c(d1="Csiribiri csiribiri zabszalma,", d2="négy csillag közt alszom ma.")
parsedtxt <- spacy_parse(txt)

print(parsedtxt)

