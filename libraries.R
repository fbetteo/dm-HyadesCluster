
# escribir paquetes "desiempre" y "proj" ---------------------------------------
  # las desiempre no se llaman explicitamente en los Scripts, las proj sí
paq_desiempre <- c("magrittr",
                   "purrr",
                   "conflicted",
                   "ggplot2",
                   "dplyr",
                   "broom",
                   "knitr",
                   "readr",
                   "bookdown",
                   # sacar Cairo (queda por el preinforme)
                   "Cairo",
                   "kableExtra")
paq_proj <- c("readxl", 
              "extrafont",
              "cluster",
              "factoextra",
              "clustertend",
              "dbscan",
              "pmml",
              "XML",
              "xtable")

# no tocar ----------------------------------------------------------------
paq <- c(paq_desiempre,paq_proj)
for (i in seq_along(paq)) {
  if (!(paq[i] %in% installed.packages()[,1])) {
    install.packages(paq[i])
  }
  if (paq[i] %in% paq_desiempre) library(paq[i],character.only=T)
}
rm(paq,paq_desiempre,paq_proj)