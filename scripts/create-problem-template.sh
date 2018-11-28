# Script to be run as bash scripts/create-problem-template.sh 100 A, for creating problem 100-A
mkdir -p $1
cd $1
mkdir -p $2
cd $2
touch README.md
mkdir inputs
cd inputs
touch in00.txt
cd ..
mkdir outputs
cd outputs
touch out00.txt
