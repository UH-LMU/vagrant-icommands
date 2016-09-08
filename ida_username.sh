#!/bin/bash

echo "Type your Ida username, followed by [ENTER]:"
read username

template="/vagrant/irods_environment.json"
config="$HOME/.irods/irods_environment.json"

echo $config
sed "s/my_ida_user_name/$username/" $template > $config
cat $config
