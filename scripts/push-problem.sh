git config user.name "MadaraUchiha-314" && git config user.email "rohithr31@gmail.com"
git checkout gh-pages
git add .
git commit -m "[CI SKIP] Adding the problem"
git push --force --quiet origin gh-pages
git checkout master
