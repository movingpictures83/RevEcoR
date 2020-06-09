library(RevEcoR)
input <- function(inputfile) {
   parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
  net1 <<- igraph::read_graph(toString(parameters["network1",2]), format="gml")
  net2 <<- igraph::read_graph(toString(parameters["network2",2]), format="gml")
}

run <- function() {
 result <<- calculateCooperationIndex(net1, net2)
}

output <- function(outputfile) {
write.csv(result, paste(outputfile, ".cooperation.csv", sep=""))
write.csv(result$competition.index, paste(outputfile, ".competition.csv", sep=""))
write.csv(result$complementarity.index, paste(outputfile, ".complementarity.csv", sep=""))
}
