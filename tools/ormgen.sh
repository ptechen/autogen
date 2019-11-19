#! /bin/bash
dbName=$1
projectName=$2
tableExp=$3
$GOPATH/bin/xorm reverse \
mysql devuser:devuser@tcp\(192.168.1.174:3306\)/${dbName}?charset=utf8mb4 \
$GOPATH/src/github.com/pychance/autogen/xorm \
$GOPATH/src/ifchange/${projectName}/models ${tableExp}
echo $GOPATH/src/ifchange/${projectName}/models ${tableExp}
