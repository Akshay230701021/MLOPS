@echo off
git init
git branch -M main
git status
git add .
git commit -m "Initial commit"
git remote -v
git push -u origin main