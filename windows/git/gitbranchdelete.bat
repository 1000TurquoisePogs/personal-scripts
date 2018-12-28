@echo off
if [%1]==[] goto :fail
doforallgit git branch -D %1
goto :finished

:fail
echo Usage: gitbranchdelete <branchname>

:finished
echo Done
