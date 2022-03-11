#!/bin/bash
lines=$(cat $1 | wc -l );
source_file=$1
target_file=$2
temp_source_file=$(mktemp)
cat $source_file >> $temp_source_file
uuid_file=$(mktemp)
echo 'ID' > $uuid_file
for i in `seq 1 $lines`;
   do uuidgen | tr "[:upper:]" "[:lower:]" >> $uuid_file ; done
paste -d ',\n' $uuid_file $temp_source_file > $target_file
rm $temp_source_file
rm $uuid_file

# Adds ID colunm in sample data .csv files and fill it with UUIDs
# Execute: ./uuid_generator.sh <source_file_name>.csv <target_file_name>.csv