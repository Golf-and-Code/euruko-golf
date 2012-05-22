# euruko-golf

Want to win one (out of four) EuRuKo tickets? 

	irb(main):001:0> puts %q{ ___ _   _ _ __ _   _..__ ___
	irb(main):002:0' / _ \ ...'__....|/ // _ \
	irb(main):003:0'   __/ |_... .|_..  <.(_)
	irb(main):004:0' \___|\__,_|_.  \__,_|_|\_\\\___/
	irb(main):005:0' }.gsub '.','| '
	 ___ _   _ _ __ _   _| | __ ___
	/ _ \ | | | '__| | | | |/ // _ \
	  __/ |_| | |  | |_| |   <| (_)
	\___|\__,_|_|   \__,_|_|\_\\___/
	=> nil
	irb(main):006:0> 

## The contest

**Prize** One ticket to [EuRuKo 2012 in Amsterdam](http://www.euruko2012.org/), **including** accommodation.

**Deadline** May 20th, 23:59 CET

**Task** Write a tweetable (= 140 characters or less) ruby program that outputs EuRuKo ASCII art &mdash; see `wooga.rb` for an example. 

**Rules** Fork this repo, add your submission 
under your twitter handle, send us a pull request .... and don't forget to tweet it!

## Inspecting the result

    ./run.sh

## The Winners

After careful consideration of all 23 submissions, we have selected the
following 4 winners:

### [@tammofreese](http://twitter.com/tammofreese)

    21.times{|r|"!ğ³³³£!ﲙ⊡⊡≡ﴙ!蘭࠳こࡳ!邙ꢡꢡꡡ䄙!ट縱衉聥䂣!炑ꢩꢩꢩゑ!အࠡࠡအ!炥裣裃邳ﺭ!䂝ꣃꢳꢫ!ࢥㄟࢡ!¥ãÃ³­".codepoints{|c|print"   (_) _ (_)"[(c-33>>r-2)%4*3,3]};puts}


![Result](https://github.com/wooga/euruko-golf/raw/master/images/tammofreese.png)


### [@eckrdt](http://twitter.com/eckrdt)

    require'zlib';s='';'༭橂ㅊ0ↆ௿㲢߽ឡ⡎䒼ᾛ⹲᱓̨ᬟ⒴∀ቆ㫼ᒀᖀ㓷⬓努ᮇ⠖㌠◆敌啑庝ⓖ㣬ḫ浔䵻㑬嵆䑥ኳⱄ慏丟棏㶯㶶㉹㖟㢘怞䦞ᱬ汿䭒尩撿泝ч暨堠'.codepoints{|p|s<<"%15b"%p};puts Zlib.inflate [s].pack'b*'
    

![Result](https://github.com/wooga/euruko-golf/raw/master/images/eckrdt.png)


### [@philister](http://twitter.com/philister)

    'WWuSQSwqu'.unpack('b23'*3).each{|n|puts n.tr'10','# '}

![Result](https://github.com/wooga/euruko-golf/raw/master/images/philister.png)


### [@konstantinhaase](http://twitter.com/konstantinhaase)

    x=->c,v{(v==v.to_s)?print(v*(c%4)):x[x[x[c,"\u{1f49a} "],"  "],"\n"];c>>2};"񙖧񊒭𫖳𫒩򑤥񙖧񫢭𫖱𫒩򑤥񊕫󚔫".codepoints{|c|4.times{x[c%32,c=c>>5]}}
    
![Result](https://github.com/wooga/euruko-golf/raw/master/images/konstantinhaase.png)


## Honorable mention

### [@gorenjee](http://twitter.com/gorenjee)

Gerrit works at wooga, so unfortunately he can't be an official winner.

    529.times{|x|print"\e[3%dm██\e[0m"%[7,0][("\0﹓󹁍񁋫󫩝𩝋򮫩允𿪯󠀔ҫ񚂢򓴄򤙀󃃈𻦆򀆝񳾋󼐑Һ󿼗񍣲󨪠񁟀︖򨀀".codepoints.map{|a|"%20s"%a.to_s(2)}.join)[x].to_i];x%23==22?p(''):x}
    

![Result](https://github.com/wooga/euruko-golf/raw/master/images/gorenje.png)

