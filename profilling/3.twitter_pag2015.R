## Most of this code was adapted from Stephen Turner: getting genetics Done
## http://gettinggeneticsdone.blogspot.com/search/label/Twitter



source("lib/TweetSearch.R")
## Modify this. This is where I keep this repo.
TweetSearch(hashtag="#PAGXXIII", num=3000, output="data/pag2015.txt")

## Go to the analysis directory
setwd("results/")
twitterchivePlots(filename="../data/pag2015.txt", term="#PAGXXIII", mydate="2015-01-11")
twitterchivePlots(filename="../data/pag2015.txt", term="#PAGXXIII", mydate="2015-01-12")
