@echo off
:: This batch file is a short example of how to call
:: MATLAB from the command line.

:: Options:
:: -nosplash Don't display the MATLAB Splash screen
:: -wait     Don't return to the script until MATLAB is closed.
:: -c        explicitly specify the license file.s
:: -logfile  Log all script output to the logfile.
:: -r        Run the specified matlab commands.

"C:\Program Files\MATLAB\R2018b\bin\matlab.exe" -nosplash -wait -c "C:\Program Files\MATLAB\R2018b\licenses\network.lic" -logfile "%~n0.log" -r "cd('%~dp0');run('%~n0')"