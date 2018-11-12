@echo off

for /f "delims=" %%G in ('dir /a:d /b') do (
cd %%G
if exist .git (
  echo ---- In: %%G ----
  git branch
) else (
  echo %%G is not a git directory so skipping
)
cd ..\ )
goto :finished

:finished
echo Done
