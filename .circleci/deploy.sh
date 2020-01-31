# Setting GIT user
git config --global user.email "${GITHUB_EMAIL}"
git config --global user.name "${GITHUB_NAME}"

# Preparation to copy site before new change
git checkout -b deploy
git add -f _site/
git commit -a -m "publish: deployment using ci"
git checkout -b gh-pages
git checkout deploy _site/**

## Delete all files except _site and move to parent directory.
shopt -s extglob
rm -rf !(_site)
cp -r _site/. ./
rm -rf _site/

# Add new changes and push it to gh-pages
git add .
git commit -a -m "release_${CIRCLE_BUILD_NUM}"
git push -q --force https://${GITHUB_TOKEN}@github.com/mughieams/comte.git ${CIRCLE_BRANCH}:gh-pages