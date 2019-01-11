@echo off
rem https://stackoverflow.com/questions/6269927/how-can-i-list-all-tags-in-my-git-repository-by-the-date-they-were-created
doforallgit git tag --format^="%%(creatordate:short)%%09%%(refname:strip=2)"
