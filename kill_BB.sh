#/usr/bin/env bash
function getPid(){
 keyword=$1
 pid=`ps -ef|grep java|grep $keyword|awk '{print $2}'`
 echo $pid

}
pid=$(getPid "runBigBench")
