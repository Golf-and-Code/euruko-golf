# This is the Block from the Ascii art generator at http://patorjk.com/software/taag/
# Tweeted: https://twitter.com/#!/baaz/status/201407497158926336
puts"ss1\nb2c1d1b1b2a1d1b1b1f2\n4a1d1b2e1d1b2f1d1\n1g1d1b1g1d1b1b1d1d1\nb3c3b1i3b1d1d2".gsub(/\w/){|c|c.ord>96?' '*(c.ord-96):'_|'*c.to_i}
