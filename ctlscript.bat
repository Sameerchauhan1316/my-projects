@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Renders\project\hypersonic\scripts\ctl.bat (start /MIN /B C:\Renders\project\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Renders\project\ingres\scripts\ctl.bat (start /MIN /B C:\Renders\project\ingres\scripts\ctl.bat START)
if exist C:\Renders\project\mysql\scripts\ctl.bat (start /MIN /B C:\Renders\project\mysql\scripts\ctl.bat START)
if exist C:\Renders\project\postgresql\scripts\ctl.bat (start /MIN /B C:\Renders\project\postgresql\scripts\ctl.bat START)
if exist C:\Renders\project\apache\scripts\ctl.bat (start /MIN /B C:\Renders\project\apache\scripts\ctl.bat START)
if exist C:\Renders\project\openoffice\scripts\ctl.bat (start /MIN /B C:\Renders\project\openoffice\scripts\ctl.bat START)
if exist C:\Renders\project\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Renders\project\apache-tomcat\scripts\ctl.bat START)
if exist C:\Renders\project\resin\scripts\ctl.bat (start /MIN /B C:\Renders\project\resin\scripts\ctl.bat START)
if exist C:\Renders\project\jetty\scripts\ctl.bat (start /MIN /B C:\Renders\project\jetty\scripts\ctl.bat START)
if exist C:\Renders\project\subversion\scripts\ctl.bat (start /MIN /B C:\Renders\project\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Renders\project\lucene\scripts\ctl.bat (start /MIN /B C:\Renders\project\lucene\scripts\ctl.bat START)
if exist C:\Renders\project\third_application\scripts\ctl.bat (start /MIN /B C:\Renders\project\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Renders\project\third_application\scripts\ctl.bat (start /MIN /B C:\Renders\project\third_application\scripts\ctl.bat STOP)
if exist C:\Renders\project\lucene\scripts\ctl.bat (start /MIN /B C:\Renders\project\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Renders\project\subversion\scripts\ctl.bat (start /MIN /B C:\Renders\project\subversion\scripts\ctl.bat STOP)
if exist C:\Renders\project\jetty\scripts\ctl.bat (start /MIN /B C:\Renders\project\jetty\scripts\ctl.bat STOP)
if exist C:\Renders\project\hypersonic\scripts\ctl.bat (start /MIN /B C:\Renders\project\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Renders\project\resin\scripts\ctl.bat (start /MIN /B C:\Renders\project\resin\scripts\ctl.bat STOP)
if exist C:\Renders\project\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Renders\project\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Renders\project\openoffice\scripts\ctl.bat (start /MIN /B C:\Renders\project\openoffice\scripts\ctl.bat STOP)
if exist C:\Renders\project\apache\scripts\ctl.bat (start /MIN /B C:\Renders\project\apache\scripts\ctl.bat STOP)
if exist C:\Renders\project\ingres\scripts\ctl.bat (start /MIN /B C:\Renders\project\ingres\scripts\ctl.bat STOP)
if exist C:\Renders\project\mysql\scripts\ctl.bat (start /MIN /B C:\Renders\project\mysql\scripts\ctl.bat STOP)
if exist C:\Renders\project\postgresql\scripts\ctl.bat (start /MIN /B C:\Renders\project\postgresql\scripts\ctl.bat STOP)

:end

