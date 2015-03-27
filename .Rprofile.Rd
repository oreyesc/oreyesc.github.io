options (rstudio.markdownToHTML = function (inputFile, OutputFile){
        require (slidify)
        slidify (inputFile, outputFile, knit_deck = F)
})
