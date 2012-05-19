# coding: utf-8
# Please run with ruby-1.9.3, otherwise Zlib.inflate won't work.
# Link to tweet: https://twitter.com/eckrdt/status/201070190044250113
require'zlib';s='';'༭橂ㅊ0ↆ௿㲢߽ឡ⡎䒼ᾛ⹲᱓̨ᬟ⒴∀ቆ㫼ᒀᖀ㓷⬓努ᮇ⠖㌠◆敌啑庝ⓖ㣬ḫ浔䵻㑬嵆䑥ኳⱄ慏丟棏㶯㶶㉹㖟㢘怞䦞ᱬ汿䭒尩撿泝ч暨堠'.codepoints{|p|s<<"%15b"%p};puts Zlib.inflate [s].pack'b*'
