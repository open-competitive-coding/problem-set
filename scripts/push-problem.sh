git config --global user.name "MadaraUchiha-314" && git config --global user.email "rohithr31@gmail.com"
git stash
git checkout gh-pages
git stash pop
git add .
git commit -m "[CI SKIP] Deploying the problem"
git push -q https://${GITHUB_PERSONAL_TOKEN}@github.com/open-competitive-coding/problem-set.git gh-pages