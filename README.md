# Standalone Shiny
by Abulily

## quick overview
Unzip the zip-files in ./env/7zip to ./env. There you will find the engine (R-portable) of the application. For the application to work as a standalone application, Google Chrome has to be installed.

There seems to be a very unstable behavior when running "start chrome --app=http://xxx.x.x.x:xxxx" inside the runApp() function. Therefor the Shiny app is first hosted without a browser and then the Chrome (application mode) is launched to view the Shiny app.


## file structure
```bash
├── .gitignore
├── README.md
├── run.exe
├── run.bat  *
├── src
│  ├── cmd
│     ├── hostApp.bat
│     ├── runApp.bat
│  ├── r
│     ├── run.r
│     ├── app
│        ├── ui.r
│        ├── server.r
│        ├── hostApp.r
├── env
│  ├── engine  **


*  run.bat has already been converted to run.exe. run.bat could be usefull for debugging.
** to be unzipped

```

## process
```bash
>> run.exe
   >> run: .\src\r\run.r
      >> create: .\src\cmd\hostApp.bat
      >> create: .\src\cmd\runApp.bat
   >> run: .\src\cmd\hostApp.bat
      >> run: .\src\r\app\hostApp.r
   >> run: .\src\cmd\runApp.bat
  
```

## about

R portable configures R to work with the PortableApps framework, so that R can be ran from a thumb drive or portable hard drive without leaving artifacts on the computer. Version 4.0.5 is included in the repo. If necessary, R-portable can be downloaded following the link:  
https://sourceforge.net/projects/rportable/files/R-Portable/4.0.5/
\
\
To download Google Chrome please follow the link:  
https://www.google.com/chrome/
