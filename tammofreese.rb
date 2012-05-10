# coding: utf-8
#
# The absolute maximum ASCII art I could fit into a Tweet.
# Outputs 195x17 characters, so make sure your Terminal is wide enough.
#
# Requires Ruby 1.9 and Unicode.
# Tested with Ruby 1.9.3
# To run it:
# - Paste the content of the Tweet referenced above in irb and press return
# - ... or store the content of the Tweet in a file eurukogolf.rb and run it with ruby -KU euruko.rb
# - ... or simply run this file with ruby tammofreese.rb
#
17.times{|r|65.times{|c|print'   (_) _ (_)'[('ğ³³³£!ﲙ⊡⊡≡ﴙ!蘭࠳こࡳ!邙ꢡꢡꡡ䄙!ट縱衉聥䂣!炑ꢩꢩꢩゑ!အࠡࠡအ!炥裣裃邳ﺭ!䂝ꣃꢳꢫ!ࢥㄟࢡ!¥ãÃ³­'[c].ord-33>>r)%4*3,3]};puts}