#!/bin/bash

# ===============================
# Script push otomatis ke GitHub
# ===============================

GITHUB_USER="rizzalthox"
REPO_NAME="canton-lucky"
BRANCH="main"

git add .

read -p "Masukkan pesan commit: " COMMIT_MSG
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Update commit"
fi
git commit -m "$COMMIT_MSG"

git push https://$GITHUB_USER:$TOKEN@github.com/$GITHUB_USER/$REPO_NAME.git $BRANCH
