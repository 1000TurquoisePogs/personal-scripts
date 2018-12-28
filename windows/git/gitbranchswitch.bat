@echo off
if [%1]==[] goto :fail
doforallgit git checkout %1
goto :finished

:fail
echo Specify a branch name

:finished
echo Done
