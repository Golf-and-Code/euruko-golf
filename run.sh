for file in *.rb; do echo "#### $file #### `cat $file | egrep -v '^#' | wc -m` characters \n"; ruby $file; echo "\n\n\n"; done
