
:%s/\v\\\$/$/gc
:%s/\v\$\$(.{-})\$\$/\$\ \1\ \$/gc

:%s/\v\\\\subseteq/subset.eq/gc


:%s/\v\\\[\ (.{-})\ \\\]/\[\1\]/gc
:%s/\v\\\(\ (.{-})\ \\\)/(\1)/gc

:%s/\v…/.../gc

:%s/\v#emph\[(.{-})\];/_\1_/gc
:%s/\v#emph\[(.{-})\]/_\1_/gc

:%s/\v\\\\\{(.{-})\\\\\}/{\1}/gc

:%s/\v\\\\in/in/gc

:%s/\\\\iff/arrow.l.r.double/gc

:%s/\v\\\\setminus/without/gc

:%s/\voverline\((.{-})\)/dash(\1)/gc

:%s/\v\\\\notin/in.not/gc

:%s/\v\\\\powset\((.{-})\)/cal(P)(\1)/gc

:%s/\v\\\\nset/NN/gc
:%s/\v\\\\zset/ZZ/gc
:%s/\v\\\\rset/RR/gc
:%s/\v\\\\qset/QQ/gc
:%s/\v\\\\cset/CC/gc

:%s/\v\\\\st/|/gc

:%s/\v\\\\text\{(.{-})\}/"\1"/gc



:%s/\v\\\\neg/not/gc
:%s/\v\\\\land/and/gc
:%s/\v\\\\lor/or/gc


:%s/\v\\\\contrad/bb(0)/gc
:%s/\v\\\\tautol/bb(1)/gc



:%s/\vnothing/emptyset/gc

:%s/\vupright\(\"(.{-})\"\)/"\1"/gc

:%s/\\\$NN\\\$/$NN$/gc

:%s/\\\\rrel/cal(R)/gc
:%s/\v\\\\srel/cal(S)/gc
:%s/\v\\\\grel/cal(G)/gc
:%s/\v\\\\erel/cal(E)/gc

:%s/\v\\\\circ/compose/gc

:%s/\v\\\\times/times/gc
:%s/\v\\\\exists/exists/gc
:%s/\v\\\\forall/forall/gc

:%s/\v\^\{-1\}/\^(-1)/gc





