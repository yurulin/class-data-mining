# utils.R - some utility functions
# @author: Yu-Ru Lin (yuruliny@gmail.com)
# @date: 2020-07-24


setwd("~/connect/yurulin/class-data-mining/slides")
library(knitr)

opts_chunk$set(
  tidy = F,
  echo=TRUE,
  cache=F,
  message=FALSE,
  warning=FALSE,
  autodep = TRUE,
  # cache.path = 'class00_cache/',
  # dependson = -1,
  # Note that if you remove this the default value of 'Rmarkdown plot' will be used instead.
  fig.cap=NULL,
  fig.width = 4, fig.height = 4,
  fig.retina=2,
  dpi=84
)
# dep_auto()

for (package in c('ggplot2')) {
  suppressPackageStartupMessages(library(package, character.only=TRUE))
}
ggplot2::theme_set(theme_minimal())

modname = "index" ## default class module
## use `r .mod` to print the following inline code (add slide index #xxx manually)
# --- &module modname:class01  .code #toc #getting-started 
.mod <- function() {sprintf("--- &module modname:%s  .code", modname)}
.mods <- function() {sprintf("--- &module modname:%s  .scode", modname)}
.modss <- function() {sprintf("--- &module modname:%s  .sscode", modname)}
.modsss <- function() {sprintf("--- &module modname:%s  .ssscode", modname)}
.modsn <- function() {sprintf("--- &module modname:%s  .scode-nowrap", modname)}
.modssn <- function() {sprintf("--- &module modname:%s  .sscode-nowrap", modname)}
.modsssn <- function() {sprintf("--- &module modname:%s  .ssscode-nowrap", modname)}

## use `r .mod2(30,68)` to print the following inline code (two-column slide; add slide index #xxx manually)
# --- &twocolvar w1:30% w2:68% modname:class01 .code #working-with-data 
.mod2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .code", modname,w1,w2)}
.mods2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .scode", modname,w1,w2)}
.modss2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .sscode", modname,w1,w2)}
.modsss2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .ssscode", modname,w1,w2)}
.modsn2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .scode-nowrap", modname,w1,w2)}
.modssn2 <- function(w1=30,w2=68) {sprintf("--- &twocolvar modname:%s w1:%d%% w2:%d%% .sscode-nowrap", modname,w1,w2)}

