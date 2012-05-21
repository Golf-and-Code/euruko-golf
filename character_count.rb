puts File.open(ARGV[0],'r').read.gsub(/^=begin.*?^=end\n/m,'').gsub(/^#.*?\n/,'').gsub(/\n\Z/m,'').length
