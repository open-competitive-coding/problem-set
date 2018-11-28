git config user.name "MadaraUchiha-314" && git config user.email "rohithr31@gmail.com"
git checkout gh-pages
git add .
git commit -m "[CI SKIP] Adding the problem"
git push --force --quiet https://${GITHUB_PERSONAL_TOKEN}@github.com/open-competitive-coding/problem-set.git 
git checkout master
