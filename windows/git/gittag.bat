@echo off
if [%1]==[] goto :fail
doforallgit git tag %1

:fail
echo Usage: gittag <tag>