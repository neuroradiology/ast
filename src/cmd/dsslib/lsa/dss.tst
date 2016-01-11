# regression tests for the dss lsa method

TITLE + lsa

export TZ=EST5EDT

VIEW data

TEST 01 'ospf lsa method'
	EXEC -x lsa -f text 'lsa_advrt=="10.254.7.5"' $data/lsa.dat
		OUTPUT - $'OSPF LSAs (text format)
20030214
1022728685.965949|10.254.1.2|224.0.0.5|64|10.254.7.5|0.0.0.0|1|5|10.254.7.5|10.200.224.48|3600|0x80000002|0x766|36|1|new|16|fffffff080ffffff0afe04b20000029a|
1022728695.424662|10.254.1.2|224.0.0.5|64|10.254.7.5|0.0.0.0|1|5|10.254.7.5|10.200.224.48|1|0x80000001|0xa307|36|1|new|16|fffffff080000bb80afe04b20000029a|
1022728747.391074|10.254.1.2|224.0.0.5|64|10.254.7.5|0.0.0.0|1|5|10.254.7.5|10.200.54.0|1|0x80000021|0xf461|36|1|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.137.24.0|1|0x80000032|0xd708|36|1|new|16|fffffc0080000bb80afe03790000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|204.132.192.0|1|0x8000004f|0xa5b7|36|2|new|16|ffffe00080000bb80afe03940000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|139.127.8.0|1|0x8000010f|0x25da|36|3|new|16|fffffc0080000bb80afe03140000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|139.127.68.0|1|0x8000010f|0x8e35|36|4|new|16|fffffc0080000bb80afe03140000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|206.213.32.0|1|0x8000010b|0x1fd4|36|5|new|16|ffffff008000012c0afe04050000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.22.192.0|1|0x8000010b|0x975f|36|6|new|16|ffffe0008000012c0afe04050000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|159.251.169.0|1|0x8000010b|0x2906|36|7|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|159.251.233.0|1|0x8000010b|0x6688|36|8|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.153.0|1|0x8000010b|0xd82f|36|9|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|170.164.0.0|1|0x8000010b|0xfb29|36|10|new|16|ffff000080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.222.0|1|0x8000010b|0xdee3|36|11|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|171.64.0.0|1|0x8000010b|0x97f3|36|12|new|16|fffc000080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|171.65.213.0|1|0x8000010b|0x674a|36|13|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.31.64.0|1|0x80000142|0x80aa|36|14|new|16|ffffe00080000bb80afe0a740000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.31.192.0|1|0x80000123|0xf25c|36|15|new|16|ffffe00080000bb80afe03f50000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.214.0|1|0x8000010b|0x3793|36|16|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.215.0.0|1|0x8000010b|0x68e8|36|17|new|16|ffffe00080000bb80afe03140000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.96.0.0|1|0x80000092|0xa3b6|36|18|new|16|ffffe00080000bb80afe04fa0000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|192.168.200.0|1|0x80005e81|0x2bc0|36|19|new|16|ffffff0080000bb80afe03360000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.124.0|1|0x800000e9|0x784|36|20|new|16|ffffff008000012c0afe04050000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.185.0|1|0x80000067|0xc1ca|36|21|new|16|ffffff0080000bb80afe04b20000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|198.204.96.0|1|0x8000003d|0x6664|36|22|new|16|ffffff0080000bb80afe04370000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.30.0|1|0x8000005d|0x7970|36|23|new|16|ffffff0080000bb80afe04fa0000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.88.0|1|0x80000030|0x5389|36|24|new|16|ffffff0080000bb80afe04fa0000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|165.157.0.0|1|0x80000021|0xd93a|36|25|new|16|ffff000080000bb80afe03bb0000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.50.0|1|0x80000004|0x4fdf|36|26|new|16|ffffff0080000bb80afe04fa0000029a|
1022728996.224654|10.254.1.2|224.0.0.5|1000|10.254.7.5|0.0.0.0|27|5|10.254.7.5|10.200.66.0|1|0x80000003|0x35bb|36|27|new|16|ffffff0080000bb80afe042a0000029a|
1022729252.206048|10.254.1.2|224.0.0.5|64|10.254.7.5|0.0.0.0|1|5|10.254.7.5|10.200.174.0|1|0x80000014|0x85aa|36|1|new|16|fffffe008000012c0afe04050000029a|'
	EXEC -x lsa -f text 'lsa_advrt=="10.254.7.5"' $data/lsa-be.dat
	EXEC -x lsa -f text 'lsa_advrt=="10.254.7.5"' $data/lsa-le.dat

TEST 02 'ospf lsa method'
	EXEC -x lsa '(lsa_advrt=="10.254.7.5")|{print "%(time:%=u%K.%9N)s|%(src_addr)s|%(dest_addr)s|%(dest_addr)s|%(lsu_rtid)s|%(lsu_len)u|%(lsu_ver)u|0x%(lsu_cksum)x|%(lsu_no_lsas)u|%(lsu_lsa_no)u|%(lsa_area)s|%(lsa_type)u|%(lsa_advrt)s|%(lsa_id)s|0x%(lsa_seq)x|%(lsa_age)u|0x%(lsa_cksum)x"}' $data/lsa.dat
		OUTPUT - $'2002-05-30+03:18:05.965949000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|64|2|0xa5de|1|1|0.0.0.0|5|10.254.7.5|10.200.224.48|0x80000002|3600|0x766
2002-05-30+03:18:15.424662000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|64|2|0xd94|1|1|0.0.0.0|5|10.254.7.5|10.200.224.48|0x80000001|1|0xa307
2002-05-30+03:19:07.391074000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|64|2|0x673a|1|1|0.0.0.0|5|10.254.7.5|10.200.54.0|0x80000021|1|0xf461
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|1|0.0.0.0|5|10.254.7.5|10.137.24.0|0x80000032|1|0xd708
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|2|0.0.0.0|5|10.254.7.5|204.132.192.0|0x8000004f|1|0xa5b7
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|3|0.0.0.0|5|10.254.7.5|139.127.8.0|0x8000010f|1|0x25da
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|4|0.0.0.0|5|10.254.7.5|139.127.68.0|0x8000010f|1|0x8e35
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|5|0.0.0.0|5|10.254.7.5|206.213.32.0|0x8000010b|1|0x1fd4
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|6|0.0.0.0|5|10.254.7.5|10.22.192.0|0x8000010b|1|0x975f
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|7|0.0.0.0|5|10.254.7.5|159.251.169.0|0x8000010b|1|0x2906
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|8|0.0.0.0|5|10.254.7.5|159.251.233.0|0x8000010b|1|0x6688
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|9|0.0.0.0|5|10.254.7.5|10.200.153.0|0x8000010b|1|0xd82f
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|10|0.0.0.0|5|10.254.7.5|170.164.0.0|0x8000010b|1|0xfb29
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|11|0.0.0.0|5|10.254.7.5|10.200.222.0|0x8000010b|1|0xdee3
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|12|0.0.0.0|5|10.254.7.5|171.64.0.0|0x8000010b|1|0x97f3
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|13|0.0.0.0|5|10.254.7.5|171.65.213.0|0x8000010b|1|0x674a
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|14|0.0.0.0|5|10.254.7.5|10.31.64.0|0x80000142|1|0x80aa
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|15|0.0.0.0|5|10.254.7.5|10.31.192.0|0x80000123|1|0xf25c
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|16|0.0.0.0|5|10.254.7.5|10.200.214.0|0x8000010b|1|0x3793
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|17|0.0.0.0|5|10.254.7.5|10.215.0.0|0x8000010b|1|0x68e8
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|18|0.0.0.0|5|10.254.7.5|10.96.0.0|0x80000092|1|0xa3b6
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|19|0.0.0.0|5|10.254.7.5|192.168.200.0|0x80005e81|1|0x2bc0
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|20|0.0.0.0|5|10.254.7.5|10.200.124.0|0x800000e9|1|0x784
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|21|0.0.0.0|5|10.254.7.5|10.200.185.0|0x80000067|1|0xc1ca
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|22|0.0.0.0|5|10.254.7.5|198.204.96.0|0x8000003d|1|0x6664
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|23|0.0.0.0|5|10.254.7.5|10.200.30.0|0x8000005d|1|0x7970
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|24|0.0.0.0|5|10.254.7.5|10.200.88.0|0x80000030|1|0x5389
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|25|0.0.0.0|5|10.254.7.5|165.157.0.0|0x80000021|1|0xd93a
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|26|0.0.0.0|5|10.254.7.5|10.200.50.0|0x80000004|1|0x4fdf
2002-05-30+03:23:16.224654000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|1000|2|0xdbe5|27|27|0.0.0.0|5|10.254.7.5|10.200.66.0|0x80000003|1|0x35bb
2002-05-30+03:27:32.206048000|10.254.1.2|224.0.0.5|224.0.0.5|10.254.7.5|64|2|0x6a37|1|1|0.0.0.0|5|10.254.7.5|10.200.174.0|0x80000014|1|0x85aa'
	EXEC -x lsa '(lsa_advrt=="10.254.7.5")|{print "%(lsa_len)d:%(sizeof(lsa_data))d:%(lsa_data)s"}' $data/lsa.dat
		OUTPUT - $'36:16:////8ID///8K/gSyAAACmg==
36:16:////8IAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:///8AIAAC7gK/gN5AAACmg==
36:16:///gAIAAC7gK/gOUAAACmg==
36:16:///8AIAAC7gK/gMUAAACmg==
36:16:///8AIAAC7gK/gMUAAACmg==
36:16:////AIAAASwK/gQFAAACmg==
36:16:///gAIAAASwK/gQFAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16://8AAIAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16://wAAIAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:///gAIAAC7gK/gp0AAACmg==
36:16:///gAIAAC7gK/gP1AAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:///gAIAAC7gK/gMUAAACmg==
36:16:///gAIAAC7gK/gT6AAACmg==
36:16:////AIAAC7gK/gM2AAACmg==
36:16:////AIAAASwK/gQFAAACmg==
36:16:////AIAAC7gK/gSyAAACmg==
36:16:////AIAAC7gK/gQ3AAACmg==
36:16:////AIAAC7gK/gT6AAACmg==
36:16:////AIAAC7gK/gT6AAACmg==
36:16://8AAIAAC7gK/gO7AAACmg==
36:16:////AIAAC7gK/gT6AAACmg==
36:16:////AIAAC7gK/gQqAAACmg==
36:16:///+AIAAASwK/gQFAAACmg=='
	EXEC -x lsa '(lsa_advrt=="10.254.7.5")|{print "%(lsa_len)d:%(sizeof(lsa_data))d:%(lsa_data:hex)s"}' $data/lsa.dat
		OUTPUT - $'36:16:fffffff080ffffff0afe04b20000029a
36:16:fffffff080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:fffffc0080000bb80afe03790000029a
36:16:ffffe00080000bb80afe03940000029a
36:16:fffffc0080000bb80afe03140000029a
36:16:fffffc0080000bb80afe03140000029a
36:16:ffffff008000012c0afe04050000029a
36:16:ffffe0008000012c0afe04050000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffff000080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:fffc000080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffffe00080000bb80afe0a740000029a
36:16:ffffe00080000bb80afe03f50000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffffe00080000bb80afe03140000029a
36:16:ffffe00080000bb80afe04fa0000029a
36:16:ffffff0080000bb80afe03360000029a
36:16:ffffff008000012c0afe04050000029a
36:16:ffffff0080000bb80afe04b20000029a
36:16:ffffff0080000bb80afe04370000029a
36:16:ffffff0080000bb80afe04fa0000029a
36:16:ffffff0080000bb80afe04fa0000029a
36:16:ffff000080000bb80afe03bb0000029a
36:16:ffffff0080000bb80afe04fa0000029a
36:16:ffffff0080000bb80afe042a0000029a
36:16:fffffe008000012c0afe04050000029a'
