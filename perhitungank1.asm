maxjabatan3:
	fld dword[maxjabatan]
	fld dword[nilaisetahun]
	fmul
	fstp qword[nilmaxjabatan3]
	call niljab24
ret
niljab24:
	fld qword[hsl_bruto1]
	fld qword[pembagijabatan]
	fmul
	fstp qword[niljab2]
	call hasiljbt4
ret
hasiljbt4:
		fld qword[nilmaxjabatan3]
		fld qword[niljab2]
		fcomip
		ja maxjbtn9		
	 
		nilaijbtn1:
			push dword[niljab2+4]
			push dword[niljab2]
			push teks19 ;<600000000 jabatan
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljab2]
			fsub
			fstp qword[nilai22]
			
			fld qword[nilai22]
			fld qword[niljhtsthn]
			fsub
			fstp qword[jum52]
			
			push dword[jum52+4]
			push dword[jum52]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas12
			jmp kondisi_selesai
			
		maxjbtn9:
			push dword[nilmaxjabatan3+4]
			push dword[nilmaxjabatan3]
			push teks19
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljhtsthn]
			fsub
			fstp qword[tampung42]
			
			fld qword[tampung42]
			fld qword[nilmaxjabatan3]
			fsub
			fstp qword[jum52]
			push dword[jum52+4]
			push dword[jum52]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas12
			jmp kondisi_selesai
	;call ptkp
ret


