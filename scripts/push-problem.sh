COMPRESSED_FOLDER_NAME="compressed"
TAR_GZ=".tar.gz"

PROBLEM_ID="1-A" # Will be of the format <contest-name>-<problem-name>
CONTEST_NAME=$(echo $PROBLEM_ID | awk -F - '{print $1}')
PROBLEM_NAME=$(echo $PROBLEM_ID | awk -F - '{print $2}')

git config user.name "MadaraUchiha-314" && git config user.email "rohithr31@gmail.com"
git fetch --all
git add .
git stash
git checkout gh-pages
rm "$COMPRESSED_FOLDER_NAME/$CONTEST_NAME/$PROBLEM_NAME$TAR_GZ"
git stash pop
git add .
git commit -m "[CI SKIP] Deploying the problem"
git push -q https://${GITHUB_PERSONAL_TOKEN}@github.com/open-competitive-coding/problem-set.git gh-pages
