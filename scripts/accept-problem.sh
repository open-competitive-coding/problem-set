COMPRESSED_FOLDER_NAME="compressed"
TAR_GZ=".tar.gz"
DOCS="docs/"

PROBLEM_ID=$(cat problem-name.txt) # Will be of the format <contest-name>-<problem-name>
CONTEST_NAME=$(echo $PROBLEM_ID | awk -F - '{print $1}')
PROBLEM_NAME=$(echo $PROBLEM_ID | awk -F - '{print $2}')

mkdir -p $DOCS

# We will create the folder compressed if it does not already exists
mkdir -p $DOCS$COMPRESSED_FOLDER_NAME

# We will compress the entire folder for that particular probblem
PROBLEM_FOLDER="$CONTEST_NAME/$PROBLEM_NAME"

mkdir -p $DOCS$COMPRESSED_FOLDER_NAME/$CONTEST_NAME

tar czf "$DOCS$COMPRESSED_FOLDER_NAME/$CONTEST_NAME/$PROBLEM_NAME$TAR_GZ" "$CONTEST_NAME/$PROBLEM_NAME"

mv "$CONTEST_NAME/$PROBLEM_NAME" "$DOCS$CONTEST_NAME/$PROBLEM_NAME"

python scripts/add-problem-set.py $PROBLEM_ID

cp README.md $DOCS

git config user.name "MadaraUchiha-314" && git config user.email "rohithr31@gmail.com"
git add .
git commit -m "[CI SKIP] Pushing the test cases"
git push -q https://${GITHUB_PERSONAL_TOKEN}@github.com/open-competitive-coding/problem-set.git master
