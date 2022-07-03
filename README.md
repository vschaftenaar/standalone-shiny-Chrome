# Standalone Shiny
by Abulily

## quick overview
Unzip the zip-files in ./env/7zip to ./env. There you will find the engine (R-portable) of the application. For the application to work as a standalone application, Google Chrome has to be installed.

There seems to be a very unstable behavior when running the " ../../chrome.exe --app=http://xxx.x.x.x:xxxx ". Therefor the Shiny app is first hosted without a browser and then the Chrome (application mode) is launched to view the Shiny app.


## file structure
```bash
├── .gitignore
├── README.md
├── run.exe
├── run.bat  *
├── src
│   ├── cmd
│       ├── hostApp.bat
│       ├── runApp.bat
│   ├── r
│       ├── run.r
│       ├── hostApp.r
│       ├── app
│          ├── ui.r
│          ├── server.r
├── env
│   ├── engine  **


*  run.bat has already been converted to run.exe. run.bat could be usefull for debugging.
** to be unzipped

```

## about

R portable configures R to work with the PortableApps framework, so that R can be ran from a thumb drive or portable hard drive without leaving artifacts on the computer. Version 4.0.5 is included in the repo. If necessary, R-portable can be downloaded following the link:  
https://sourceforge.net/projects/rportable/files/R-Portable/4.0.5/
\
\
To download Google Chrome please follow the link:  
https://www.google.com/chrome/
