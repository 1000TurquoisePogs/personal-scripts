@echo off
if [%1]==[] goto :fail

set argCount=0
for %%x in (%*) do (
  Set /A argCount+=1
  if /I "%argCount%" NEQ "1" (
    echo ---- Deleting branch: %%x ----
    doforallgit git branch -D %%x
  )
) 


goto :finished

:fail
echo Usage: gitbranchdelete <branchnames>

:finished
echo Done
