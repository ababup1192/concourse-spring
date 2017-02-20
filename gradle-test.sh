#!/bin/bash
cd gradle-project

mysql
gradle test
status=$(echo $?)

cp -r build ../out

exit $status
