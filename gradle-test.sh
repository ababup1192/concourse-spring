#!/bin/sh

source /docker-lib.sh
start_docker
cp -r gradle-project git-repo/project
cd git-repo
docker-compose run gradle sh -c "cd /tmp/project && gradle test"
hogehoge
cp -r ./project/build ../out
# status=$(echo $?)
# exit $status

