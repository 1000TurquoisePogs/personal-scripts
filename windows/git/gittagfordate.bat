@echo off
if [%1]==[] goto :fail
if [%2]==[] goto :fail


for /f "delims=" %%G in ('dir /a:d /b') do (
cd %%G
if exist .git (
echo ---- In: %%G ----

FOR /F "tokens=* USEBACKQ" %%F IN (`git log -n 1 --format^=%%H --until^=%1`) DO (
SET hash=%%F
)
echo Tagging commit %hash% as %2
git tag %2 %hash%

) else (
  echo %%G is not a git directory so skipping
)
cd ..\ )
goto :finished

:fail
echo Usage: gittagfordate <date> <tag>

:finished
echo Done