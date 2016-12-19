find  engines/hive/queries -name "*.sql"|grep -v "engineLocalSettings">sql.name
for i in `cat ./sql.name`
do 
  filepath=$i
  basedir=$(dirname "$filepath")
  queryname=`echo $filepath|cut -d'/'  -f5`
  engineLocalSettingsSql=$basedir/engineLocalSettings.sql
  echo "set spark.app.name=$queryname;">>$engineLocalSettingsSql
done
