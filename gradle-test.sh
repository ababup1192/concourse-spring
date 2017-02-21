#!/bin/sh

source /docker-lib.sh
start_docker
cp -r gradle-project git-repo/project
cd git-repo
docker-compose run gradle sh -c "cd /tmp/project && gradle test"
cp -r ./project/build ../out
echo "aaaaa"
ls ./project/build
ls ../out/build
echo "aaaaa"
# status=$(echo $?)
# exit $status

