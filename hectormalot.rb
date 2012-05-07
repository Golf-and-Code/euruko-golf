# encoding: utf-8
# Twitter: https://twitter.com/#!/HectorMalot/status/199242822178705409
n,s,r=0,->s{print(s)},->i{i==0?s['_|']:s['  ']};"ￏ劜抐劜刐".codepoints{|c|16.times{r[c%2];c=c>>1;n+=1;s["\n"]if n%32==0}}