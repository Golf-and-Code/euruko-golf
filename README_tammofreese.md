# EuRuKo Golf Solutions by tammofreese


## Minimalist Approaches

**tammofreese3x3.rb** 3x3 bitmap characters, 52 ASCII bytes.

What's the bare minimum? Here is a 52 byte version.

Code:

	'uuWeEewGW'.unpack('B24'*3).map{|a|puts a.tr'0',' '}

Result:

	 111 1 1 111 1 1 1 1 111
	 11  1 1 1   1 1 11  1 1
	 111 111 1   111 1 1 111


**tammofreese3x4.rb** 3x4 bitmap characters, 59 ASCII bytes.

In comparison to the version before, here the 1's are replaced with hashes to improve contrast (+2 bytes). Also, an additional line is added to improve readability (+3 bytes). Using all uppercase characters hasn't helped much with readability, so I only made the k bigger to show that the characters are lowercase. However, this means that two bytes in the string are zero bytes, so these need to be escaped (+2 bytes).

Code:

	"\0\0@uuWeEewGW".unpack('B24'*4).map{|a|puts a.tr'01',' #'}

Result:

	                 #      
	 ### # # ### # # # # ###
	 ##  # # #   # # ##  # #
	 ### ### #   ### # # ###


**tammofreese3x5.rb** 3x5 bitmap characters, 60 ASCII bytes.

I added an additional line (+3 bytes). The capital letters used in this version remove the need for the zero bytes (-2 bytes).

Code:

	'ueWEUUeeeEUUwWW'.unpack('B24'*5).map{|a|puts a.tr'01',' #'}

Result:

	 ### # # ##  # # # # ###
	 #   # # # # # # # # # #
	 ##  # # ##  # # ##  # #
	 #   # # # # # # # # # #
	 ### ### # # ### # # ###


**tammofreese6x5.rb** 6x5 bitmap characters, 75 ASCII bytes.

To improve readability even more, I switched to wider characters. The problem here is that the current approach requires that the bytes are in the printable character range – with the 3x4 solution, we lost 2 bytes because of that. So I used 6x5 characters and centered each one on 8 bit width.

Code:

	'~f|ff<`ffflf~fxfxf`flflf~<f<f<'.unpack("B48"*5).map{|a|puts a.tr'01',' #'}

Result:

	 ######  ##  ##  #####   ##  ##  ##  ##   ####  
	 ##      ##  ##  ##  ##  ##  ##  ## ##   ##  ## 
	 ######  ##  ##  ####    ##  ##  ####    ##  ## 
	 ##      ##  ##  ## ##   ##  ##  ## ##   ##  ## 
	 ######   ####   ##  ##   ####   ##  ##   ####  


## Code Bumming: Reduce the size of Wooga's Example


Wooga uploaded an example that output ASCII art in 137 bytes. How much smaller can a program could be that yields the exact same output? Here is one example with 116 ASCII bytes.

**tammofreese_wooga_shorter.rb** Reproduces Wooga ASCII art, 116 ASCII bytes.

This is the shortest version I could come up with. It is more than 15% shorter.

Code:

	a="()
	 ,/\\_|'<";"4X40444TT0Y54TXSBTK]]]jY5555BD43'4V5Y550]a]]0t-R*XYOUYY03X=a`WOXA".bytes{|x|print a[x/9-2]+a[x%9]}

Result:

	 ___ _   _ _ __ _   _| | __ ___
	/ _ \ | | | '__| | | | |/ // _ \
	  __/ |_| | |  | |_| |   <| (_)
	\___|\__,_|_|   \__,_|_|\_\\___/

**tammofreese_wooga_shorter_utf8.rb** Reproduces Wooga ASCII art, 164 bytes, 105 UTF-8 characters.

Golf is about the shortest program. But what's the definition of short? If you take the number of characters in Twitter, I could reduce the code size down to 105 characters by encoding information in UTF-8 characters. You need to start with ruby -KU then as it is unicode. To make the code run without -KU, we could either add the magic header (+16 bytes/+16 characters), or add the UTF-8 BOM to the file (+3 bytes/+0 characters). I've done the latter for the file in GitHub.

Code:

	s=0
	"泉眢⺷ח㚬ᵜ仇碶拑⁡ầᔦ粳守ↄ⪂䶛椤ᚒ璺ḛ⭗瓬烏⺵䖯揂䔝㈪൵".codepoints{|x|s=(s<<15)+x-255}
	putc"/
	_\\|, )(<'"[s%11]while 0<s/=11

Result:

	 ___ _   _ _ __ _   _| | __ ___
	/ _ \ | | | '__| | | | |/ // _ \
	  __/ |_| | |  | |_| |   <| (_)
	\___|\__,_|_|   \__,_|_|\_\\___/


## ASCII Art with Dotmatrix Style

The limit are 140 characters. I wondered what I can fit inside that when only using ASCII characters.

**tammofreese_lowercase.rb** euruko in 5x7 lowercase dotmatrix style characters, 105 ASCII bytes

Code:

	8.times{|i|"/444-!?  #>!>)11)!?  #>!!^%+0!/000/".bytes{|b|print"    _ (_)(_)"[((b^33)>>6-i)%4*3,3]};puts}

Result:

	                                                                            _                            
	                                                                           (_)                           
	    _  _  _        _           _     _     _  _        _           _       (_)       _        _  _  _    
	 _ (_)(_)(_) _    (_)         (_)   (_) _ (_)(_) _    (_)         (_)      (_)    _ (_)    _ (_)(_)(_) _ 
	(_) _  _  _ (_)   (_)         (_)   (_)(_)      (_)   (_)         (_)      (_) _ (_)      (_)         (_)
	(_)(_)(_)(_)(_)   (_)       _ (_)   (_)               (_)       _ (_)      (_)(_) _       (_)         (_)
	(_) _  _  _       (_) _  _ (_)(_)   (_)               (_) _  _ (_)(_)      (_)   (_) _    (_) _  _  _ (_)
	   (_)(_)(_)         (_)(_)   (_)   (_)                  (_)(_)   (_)      (_)      (_)      (_)(_)(_)   


**tammofreese_camelcase.rb** EuRuKo in 5x7 camelcase dotmatrix style characters, 107 ASCII bytes

The name of the conference is EuRuKo, not euruko. Let's switch over to that:

Code:

	8.times{|i|"Fpppx9'88;&9Fqus\b9'88;&9F1-\ex97(((7".bytes{|b|print"    _ (_)(_)"[((b^57)>>6-i)%4*3,3]};puts}

Result:

	 _  _  _  _  _                       _  _  _  _                          _           _                   
	(_)(_)(_)(_)(_)                     (_)(_)(_)(_) _                      (_)       _ (_)                  
	(_)                _           _    (_)         (_)    _           _    (_)    _ (_)          _  _  _    
	(_) _  _  _       (_)         (_)   (_) _  _  _ (_)   (_)         (_)   (_) _ (_)          _ (_)(_)(_) _ 
	(_)(_)(_)(_)      (_)         (_)   (_)(_)(_)(_)      (_)         (_)   (_)(_) _          (_)         (_)
	(_)               (_)       _ (_)   (_)   (_) _       (_)       _ (_)   (_)   (_) _       (_)         (_)
	(_) _  _  _  _    (_) _  _ (_)(_)   (_)      (_) _    (_) _  _ (_)(_)   (_)      (_) _    (_) _  _  _ (_)
	(_)(_)(_)(_)(_)      (_)(_)   (_)   (_)         (_)      (_)(_)   (_)   (_)         (_)      (_)(_)(_)   


**tammofreese_camelcase_year.rb** EuRuKo 2012 in 5x7 camelcase dotmatrix style characters, 140 ASCII bytes

Maxed out at 140 ASCII bytes, this shows the text "EuRuKo 2012" in 5x7 dotmatrix style. A couple of bytes can be saved by switching to lowercase (-2 bytes), or by reducing the size of the space between "EuRuKo" and "2012" (up to -6 bytes). But my target has been to use up all 140 characters, so let's leave it at that. :)

Code:

	8.times{|i|"\e---%dzeef{d\e,(.Udzeef{d\elpF%djuuujdddddddE'!-UdZ!-5ZddE\eeddE'!-U".bytes{|b|print"    _ (_)(_)"[((b^100)>>6-i)%4*3,3]};puts}

Result:

	 _  _  _  _  _                       _  _  _  _                          _           _                                            _  _  _           _  _  _              _              _  _  _    
	(_)(_)(_)(_)(_)                     (_)(_)(_)(_) _                      (_)       _ (_)                                        _ (_)(_)(_) _     _ (_)(_)(_) _        _ (_)          _ (_)(_)(_) _ 
	(_)                _           _    (_)         (_)    _           _    (_)    _ (_)          _  _  _                         (_)         (_)   (_)       _ (_)      (_)(_)         (_)         (_)
	(_) _  _  _       (_)         (_)   (_) _  _  _ (_)   (_)         (_)   (_) _ (_)          _ (_)(_)(_) _                                _ (_)   (_)    _ (_)(_)         (_)                   _ (_)
	(_)(_)(_)(_)      (_)         (_)   (_)(_)(_)(_)      (_)         (_)   (_)(_) _          (_)         (_)                            _ (_)      (_) _ (_)   (_)         (_)                _ (_)   
	(_)               (_)       _ (_)   (_)   (_) _       (_)       _ (_)   (_)   (_) _       (_)         (_)                         _ (_)         (_)(_)      (_)         (_)             _ (_)      
	(_) _  _  _  _    (_) _  _ (_)(_)   (_)      (_) _    (_) _  _ (_)(_)   (_)      (_) _    (_) _  _  _ (_)                      _ (_) _  _  _    (_) _  _  _ (_)       _ (_) _        _ (_) _  _  _ 
	(_)(_)(_)(_)(_)      (_)(_)   (_)   (_)         (_)      (_)(_)   (_)   (_)         (_)      (_)(_)(_)                        (_)(_)(_)(_)(_)      (_)(_)(_)         (_)(_)(_)      (_)(_)(_)(_)(_)

