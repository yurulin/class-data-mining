# start.R - start making slides
# @author: Yu-Ru Lin (yuruliny@gmail.com)
# @date: 2020-08-08

# @see http://slidify.org/start.html
# Step 0 & 1 are initilaization of the deck; no need to repeat
# After intializing mydeck, run Step 2+ and modify unnamed.chunk.label

## Step 0: Install Slidify
if (0) {
  library(devtools)
  library(slidify)
  install_github('ramnathv/slidify')
  install_github('ramnathv/slidifyLibraries')
}


## Step 1: Edit Deck
if (0) {
  library(slidify)
  author("slides")
}

## Step 2: Edit Deck
# add mystyle.css to mydeck-DM-slides/assets/css
if (1) {
  setwd("~/connect/yurulin/class-data-mining/slides")
  library(slidify)
  library(knitr)
  opts_knit$set(unnamed.chunk.label=.unnamed.chunk.label)
  opts_chunk$set(echo=TRUE, message=FALSE, warning=FALSE, autodep = TRUE, dpi = 150)
  
  opts_knit$set(unnamed.chunk.label='class00-chunk')
  opts_chunk$set(
    echo=TRUE,
    cache=F,
    message=FALSE,
    warning=FALSE,
    autodep = T,
    fig.width = 4, fig.height = 4,
    fig.retina=2,
    dpi=72,
    cache.rebuild=T
  )
}

## Step 3: Generate Deck
if (0) {
  slidify("test.Rmd")
}

## Step 4: Publish Deck
if (0) {
  publish(user = "yurulin", repo = "class-data-mining", host = 'github')
  ## now view slide deck at http://yurulin.github.com/2020-DM-modules
}