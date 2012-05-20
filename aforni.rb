puts "elqle cl2ma et3le".split.map{|s|s.to_i(32).to_s(2).scan(/.{4}/).each_with_index.map{|t,i|t.tr("01"," "+"euruko"[i])}.join}
