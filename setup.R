# Script for installing (if needed) and loading packages for this project
# Adapted from Katie Willi (github: kathryn-willi)

packageLoad <- function(x) {
  for (i in x) {
    if (!requireNamespace(i, quietly = TRUE)) {
      try(install.packages(i))
    }
    try(library(i, character.only = TRUE))
  }
}

# create a string of package names

packages <- c('tidyverse',
              'plotly',
              'patchwork',
              'GGally',
              'lme4',
              'DHARMa',
              'lmerTest',
              'performance',
              'MASS',
              'see',
              'AICcmodavg',
              'ggeffects',
              'sjPlot',
              'rcartocolor',
              'grid')
# use the packageLoad function we created on those packages
packageLoad(packages)