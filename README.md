# Standalone Shiny
by Abulily

## quick overview
Unzip the zip-files in ./env/7zip to ./env. There you will find the engine (R-portable) of the application. For the application to work as a standalone application, Google Chrome has to be installed.


## file structure
```bash
├── .gitignore
├── README.md
├── run.exe
├── runApp.bat           *
├── src
│   ├── r
│       ├── app
│       ├── run_app.r
├── env
│   ├── engine          **


*  runApp.bat has already been converted to run.exe. runApp.bat could be usefull for debugging.
** to be unzipped

```

## about

R portable configures R to work with the PortableApps framework, so that R can be ran from a thumb drive or portable hard drive without leaving artifacts on the computer. Version 4.0.5 is included in the repo. If necessary, R-portable can be downloaded following the link:  
https://sourceforge.net/projects/rportable/files/R-Portable/4.0.5/
\
\
To download Google Chrome please follow the link:  
https://www.google.com/chrome/
