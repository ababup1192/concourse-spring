#!/bin/sh
source /docker-lib.sh
start_docker

cp -r gradle-project git-repo/project
cd git-repo
docker-compose run gradle sh -c "cd /tmp/project && gradle test"
status=`echo $?`

cp -r ./project/build ../out
cp -r ../gradle-project/src/test/java ../out
echo $status > ../result/status

exit $status

