args <- commandArgs(trailingOnly = TRUE)


ip   <- args[1]
port <- as.numeric(args[2]) 

message('ip:      ',ip)
message('port:    ',port)



shiny::runApp('./src/r/app/',host = ip,port=port,launch.browser = F)
