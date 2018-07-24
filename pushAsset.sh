#! /bin/sh

echo "pushing assets using script"

cd ~/workspace/SoftwareAGBuildAssets
echo "curent directory is : ${PWD}"

git init
git add .
git commit -am "pushing assets build automatically "
git push git+ssh://git@github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git --all | true

echo "pushed assets using script"
