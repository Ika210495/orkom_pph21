maxjabatan4:
	fld dword[maxjabatan]
	fld dword[nilaisetahun]
	fmul
	fstp qword[nilmaxjabatan2]
	call niljab35
ret
niljab35:
	fld qword[hsl_bruto1]
	fld qword[pembagijabatan]
	fmul
	fstp qword[niljab3]
	call hasiljbt0
ret
hasiljbt0:
		fld qword[nilmaxjabatan2]
		fld qword[niljab3]
		fcomip
		ja maxjbtn21		
	 
		nilaijbtn23:
			push dword[niljab3+4]
			push dword[niljab3]
			push teks19 ;<600000000 jabatan
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljab3]
			fsub
			fstp qword[nilai23]
			
			fld qword[nilai23]
			fld qword[niljhtsthn]
			fsub
			fstp qword[jum53]
			
			push dword[jum53+4]
			push dword[jum53]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas132
			jmp kondisi_selesai
			
		maxjbtn21:
			push dword[nilmaxjabatan2+4]
			push dword[nilmaxjabatan2]
			push teks19
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljhtsthn]
			fsub
			fstp qword[tampung43]
			
			fld qword[tampung43]
			fld qword[nilmaxjabatan2]
			fsub
			fstp qword[jum53]
			push dword[jum53+4]
			push dword[jum53]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas132
			jmp kondisi_selesai
	;call ptkp
ret


