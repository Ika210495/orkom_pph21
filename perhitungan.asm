maxjabatan1:
	fld dword[maxjabatan]
	fld dword[nilaisetahun]
	fmul
	fstp qword[nilmaxjabatan]
	call niljab2
ret
niljab2:
	fld qword[hsl_bruto1]
	fld qword[pembagijabatan]
	fmul
	fstp qword[niljab]
	call hasiljbt
ret
hasiljbt:
		fld qword[nilmaxjabatan]
		fld qword[niljab]
		fcomip
		ja maxjbtn2		
	 
		nilaijbtn:
			push dword[niljab+4]
			push dword[niljab]
			push teks19 ;<600000000 jabatan
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljab]
			fsub
			fstp qword[nilai2]
			
			fld qword[nilai2]
			fld qword[niljhtsthn]
			fsub
			fstp qword[jum5]
			
			push dword[jum5+4]
			push dword[jum5]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas
			jmp kondisi_selesai
			
		maxjbtn2:
			push dword[nilmaxjabatan+4]
			push dword[nilmaxjabatan]
			push teks19
			call printf
			add esp, 12
			
			fld qword[hsl_bruto1]
			fld qword[niljhtsthn]
			fsub
			fstp qword[tampung4]
			
			fld qword[tampung4]
			fld qword[nilmaxjabatan]
			fsub
			fstp qword[jum5]
			push dword[jum5+4]
			push dword[jum5]
			push teks24
			call printf
			add esp, 12
			call persenlimabelas
			jmp kondisi_selesai
	;call ptkp
ret


