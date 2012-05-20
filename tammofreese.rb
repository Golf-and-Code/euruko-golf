# coding: utf-8
#
# Here are three solutions I thought worth sharing. All are one-liners requiring Ruby 1.9 and UTF-8.
# The first two are commented out, as the last one is my favorite and therefore my submission.
# Either execute in IRB, or run with Ruby -KU, or add a UTF-8 BOM or a magic header to the file.
#
# 1) Small and Readable in Half a Tweet: Stick Letters font
# 
# Program size: 70 characters in Twitter (can be reduced to 69 characters by replacing \n with a linebreak)
# Output size: 90 ASCII bytes
#
# Tweet URL: https://twitter.com/#!/tammofreese/status/202503421490761728
=begin
90.times{|i|putc"\n _|)/\\"["ᒑ቉ኑ቉቉ʑናᙋᢓᙋ᪓్ᒓ᪖᱋᪖᱋ખ"[i/5].ord/8**(i%5)%8]}
=end
#
# 2) Code Bumming: Wooga's ASCII art reduced by a third
#
# Program size: 91 characters in Twitter (can be reduced to 90 characters by replacing \n with a linebreak)
# Output size: 130 ASCII bytes
# 
# Tweet URL: https://twitter.com/#!/tammofreese/status/202503486909333505
=begin
130.times{|i|putc"<'\n |/\\_,()"["嶇褡싇⊽厡钩럜▍᷋㲳厝宠㿉抃員⋫瘒⊢졛镲쎣䠘뿊赫꞉ဖ"[i/5].ord/9**(i%5)%9+(2*i&2)]}
=end
# 3) Maxed Out: Huge output in dotmatrix-like font
#
# Program size: 140 characters in Twitter
# Output size: 3332 ASCII bytes (195 columns, make sure your terminal is wide enough)
#
# Tweet URL: https://twitter.com/#!/tammofreese/status/202503528554561537
# 
17.times{|r|65.times{|c|print"   (_) _ (_)"[("ğ³³³£!ﲙ⊡⊡≡ﴙ!蘭࠳こࡳ!邙ꢡꢡꡡ䄙!ट縱衉聥䂣!炑ꢩꢩꢩゑ!အࠡࠡအ!炥裣裃邳ﺭ!䂝ꣃꢳꢫ!ࢥㄟࢡ!¥ãÃ³­"[c].ord-33>>r)%4*3,3]};puts}