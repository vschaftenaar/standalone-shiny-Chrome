setwd(abulily::get_directory())

setwd('../../')


ip <- '127.0.0.1'
port <- sample(6666:10214,1)
# port=7272
ip.port <- paste0('http://',ip,':',port)


# create batch to host the Application ------------------------------------

write(
  x = '@echo off'
  ,file = './src/cmd/hostApp.bat'
  ,append = F)

write(
  x=paste0('"%~dp0..\\..\\env\\engine\\App\\R-Portable\\bin\\x64\\RScript.exe" "%~dp0..\\r\\app\\hostApp.r" ',ip,' ',port)
  ,file = './src/cmd/hostApp.bat'
  ,append=T)


# create batch to run the application -------------------------------------

write(
  x = '@echo off'
  ,file = './src/cmd/runApp.bat'
  ,append = F)

write(
  x=paste0("start chrome --app=",ip.port)
  ,file = './src/cmd/runApp.bat'
  ,append=T)



# host and run application ------------------------------------------------


system('./src/cmd/hostApp.bat',wait = F,invisible = T)
system('./src/cmd/runApp.bat',wait = F,invisible = T)
