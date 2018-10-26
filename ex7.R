#Mac Sievert
#exercise 7

rm(list=ls())
##setwd('') ##set working directory with iris.csv
file = read.table('iris.csv',header=TRUE,sep=",",stringsAsFactors=FALSE)

#1. funtion returns only the odd rows from specified dataframe 
OnlyOdds = function(DataFrame){
  NumRows = nrow(DataFrame)
  OddIndexes = seq(1, NumRows, 2)
  file[OddIndexes,]
}
OnlyOdds(file)

#2A. function returns number of observations for a species
Obs = function(flower){
  SpeciesObs = subset(file, Species == flower)
  NumRows = nrow(SpeciesObs)
  return(NumRows)
}
Obs('versicolor')

#2B.returns dataframe of flowers with sepal width greater than the value provided by user 
SepalWidth = function(width){
  sepal = subset(file, Sepal.Width > width)
  return(sepal)
}
SepalWidth(3.5)

#2C.Function writes data for a given species to a comma-delimited file
NewFile = function(Flower){
  FlowerData = subset(file, Species ==Flower)
  FileName = paste(Flower,".csv")
  write.csv(FlowerData, file = FileName)
}
NewFile('setosa')
