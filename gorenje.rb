# -*- coding: utf-8 -*-
(0..528).map{|x|print"\e[3%dm💚 \e[0m"%[7,0][("0"+"\0🲧󲂚򂗗󗒺񒺗񝗒ꊂ񿕟󀀨ॖ򴅅𧨉񈲁򆆐񷌍̺󧼗󸠢ॵ󿸮򛇥󑕀򂾀🰭񐀀".codepoints.map{|a|"%20s"%a.to_s(2)}.join)[x].to_i];x%23==22?p(''):nil}

