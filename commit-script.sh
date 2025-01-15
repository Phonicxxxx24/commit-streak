#!/bin/bash
# Create 120 commits with past dates
for i in {1..120}
do
    echo "Commit $i" > file_$i.txt
    git add file_$i.txt
    GIT_AUTHOR_DATE="$(date -d "$i days ago" '+%Y-%m-%dT%H:%M:%S')" \
    GIT_COMMITTER_DATE="$(date -d "$i days ago" '+%Y-%m-%dT%H:%M:%S')" \
    git commit -m "Commit $i" --date "$(date -d "$i days ago" '+%Y-%m-%dT%H:%M:%S')"
done

git push origin main
