@echo off
if [%1]==[] goto :fail
doforallgit git checkout -b %1
goto :finished

:fail
echo Usage: gitbranchcreate <branchname>

:finished
echo Done
