if [%1]==[] goto :fail

for /f "delims=" %%G in ('dir /a:d /b') do (
cd %%G
if exist .git (
echo ---- In: %%G ----
%*
) else (
  echo %%G is not a git directory so skipping
)
cd ..\ )
goto :finished

:fail
echo Usage: doforallgit <command>

:finished