@echo off
if [%1]==[] goto :fail

for /f "delims=" %%G in ('dir /a:d /b') do (
cd %%G
if exist .git (
  echo ---- In: %%G ----
  git checkout -b %1
) else (
  echo %%G is not a git directory so skipping
)
cd ..\ )
goto :finished

:fail
echo Specify a branch name

:finished
echo Done
