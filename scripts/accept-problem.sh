COMPRESSED_FOLDER_NAME="compressed"
TAR_GZ=".tar.gz"

PROBLEM_ID="1-A" # Will be of the format <contest-name>-<problem-name>
CONTEST_NAME=$(echo $PROBLEM_ID | awk -F - '{print $1}')
PROBLEM_NAME=$(echo $PROBLEM_ID | awk -F - '{print $2}')

# We will create the folder compressed if it does not already exists
mkdir -p $COMPRESSED_FOLDER_NAME

# We will compress the entire folder for that particular probblem
PROBLEM_FOLDER="$CONTEST_NAME/$PROBLEM_NAME"

mkdir -p $COMPRESSED_FOLDER_NAME/$CONTEST_NAME

tar czf "$COMPRESSED_FOLDER_NAME/$CONTEST_NAME/$PROBLEM_NAME$TAR_GZ" "$CONTEST_NAME/$PROBLEM_NAME"
