setwd(abulily::get_directory())


args <- commandArgs(trailingOnly = TRUE)

ip   <- args[1]
port <- as.numeric(args[2]) 


message('\n\nApplication will be launched.... please hodl')
message('ip:      ',ip)
message('port:    ',port)


shiny::runApp(host = ip,port=port,launch.browser = F)
