args <- commandArgs(trailingOnly = TRUE)

message('ip:      ',args[1])
message('port:    ',args[2])

shiny::runApp('./src/r/app/',host = args[1],port=as.numeric(args[2]),launch.browser = F)
