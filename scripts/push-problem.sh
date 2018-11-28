git config --global user.name "MadaraUchiha-314" && git config --global user.email "rohithr31@gmail.com"
git checkout gh-pages
git add .
git commit -m "[CI SKIP] Adding the problem"
git push -q https://${GITHUB_PERSONAL_TOKEN}@github.com/open-competitive-coding/website.git gh-pages
