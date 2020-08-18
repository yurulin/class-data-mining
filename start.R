# start.R - start making slides
# @author: Yu-Ru Lin (yuruliny@gmail.com)
# @date: 2020-08-08

# @see http://slidify.org/start.html
# Step 0 & 1 are initilaization of the deck; no need to repeat
# After intializing mydeck, run Step 2+ and modify unnamed.chunk.label

if (0) {
  ## previous version
  setwd("~/connect/picsogit/2020-DM-modules/mydeck-DM-slides")
}
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
  
  if (1) {
    setwd("~/connect/yurulin/class-data-mining/slides")
    library(slidify)
    library(knitr)
    .unnamed.chunk.label = 'class00-chunk'
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
  opts_knit$set(unnamed.chunk.label='class00-chunk')
  slidify("slide_index.Rmd")
  opts_knit$set(unnamed.chunk.label='rlab01-chunk')
  slidify("rlab01.Rmd")
  opts_knit$set(unnamed.chunk.label='rlab02-chunk')
  slidify("rlab02.Rmd")
  
  if (1) { ## class01
    opts_knit$set(unnamed.chunk.label='class01-chunk')
    slidify("class01.Rmd")
    opts_knit$set(unnamed.chunk.label='class011-chunk')
    slidify("class011.Rmd")
    opts_knit$set(unnamed.chunk.label='class012-chunk')
    slidify("class012.Rmd")
    opts_knit$set(unnamed.chunk.label='hw-howto-chunk')
    slidify("hw-howto.Rmd")
  }
  if (1) { ## class02
    opts_knit$set(unnamed.chunk.label='class02-chunk')
    slidify("class02.Rmd")
    
    opts_knit$set(unnamed.chunk.label='class021-chunk')
    slidify("class021.Rmd")
    opts_knit$set(unnamed.chunk.label='class022-chunk')
    slidify("class022.Rmd")
    opts_knit$set(unnamed.chunk.label='class023-chunk')
    slidify("class023.Rmd")
    
  }
  
}

## Step 4: Publish Deck
if (0) {
  publish(user = "yurulin", repo = "class-data-mining", host = 'github')
  ## now view slide deck at http://yurulin.github.com/2020-DM-modules
}