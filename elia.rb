puts"EUR UKO "  'UUU KKO EEw '.tr(
"urOcK","2012"  '_' ).tr('1_EUR ',
'EUWeu\x00'    ).unpack('V5').map{
|l|l.to_s(2).tr('01',' .')[8..-1]}
