for file in *.rb; do echo "#### $file #### `ruby character_count.rb $file` characters \n"; ruby $file; echo "\n\n\n"; done
