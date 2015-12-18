;Menghitung GPPT
jumlahgppt:
	fld dword[gapok1]
	fld dword[tunjangan_keluarga]
	fadd
	fst dword [hasil1] 	;fst itu untuk nampung aja 
	
	fld dword[hasil1]
	fld dword[tunjangan_jabatan]
	fadd
	fstp dword[total_GPPT] ;baru diubah jdari dword
				
	push dword[total_GPPT+4]
	push dword[total_GPPT]
	push teks12
	call printf
	add esp, 12
	call hitungjkm1
ret 
hitungjkm1:
	fld dword[jkm1]
	fld dword[nilai]
	fdiv
	fst dword[tampung1]
	
	fild dword[total_GPPT]
	fst dword[total_GPPT]
	
	fld dword[tampung1]
	fld dword[total_GPPT] ;nilai gppt blm mau ketampung 
	fmul
	fstp qword[tot_jkm]
	
	push dword[tot_jkm+4]
	push dword[tot_jkm]
	push teks14
	call printf
	add esp, 12
	call hitungjkk1
ret 

hitungjkk1:
	fld dword[jkk1]
	fld dword[nilai]
	fdiv
	fst dword[tampung2]
	
	fld dword[tampung2]
	fld dword[total_GPPT] ;nilai gppt blm mau ketampung 
	fmul
	fstp qword[tot_jkk]
	
	push dword[tot_jkk+4]
	push dword[tot_jkk]
	push teks15
	call printf
	add esp, 12
	
	call bruto

ret

bruto:
	
	fld dword[total_GPPT]
	fld qword[tot_jkm]
	fadd
	fstp qword[jum1]
		
	fld qword[jum1]
	fld qword[tot_jkk]
	fadd
	fstp qword[jum2]
		
	fld qword[jum2]
	fld dword[tunjangan_kehadiran]
	fadd
	fstp qword[jum3]
	
		
	fld qword[jum3]
	fld dword[tunjangan_lembur]
	fadd
	fstp qword[jum4]
		
	fld qword[jum4]
	fld dword[tunjangan_makan]
	fadd
	fstp qword[hsl_bruto]
	
	push dword[hsl_bruto+4]
	push dword[hsl_bruto]
	push teks16
	call printf
	add esp, 12
	call brutosethn
ret

brutosethn:
	fild dword[nilaisetahun]
	fst dword[nilaisetahun]
	
	fld dword[nilaisetahun]
	fld qword[hsl_bruto]
	fmul
	fstp qword[hsl_bruto1]
	
	push dword[hsl_bruto1+4]
	push dword[hsl_bruto1]
	push teks17
	call printf
	add esp, 12
	call taxdeduction
ret
taxdeduction:
    fld dword[nilaijabatan]
	fld dword[nilai]
	fdiv
	fstp qword[pembagijabatan]
	call hitungjht1
 ret

hitungjht1:
	fld dword[jht1]
	fld dword[nilai]
	fdiv
	fstp qword[tampung3]
	
	fld qword[tampung3]
	fld dword[total_GPPT]
	fmul
	fstp qword[tot_jht]
	
	push dword[tot_jht+4]
	push dword[tot_jht]
	push teks22
	call printf
	add esp, 12
	call jhtsetahun
ret

jhtsetahun:
	fld qword[tot_jht]
	fld dword[nilaisetahun]
	fmul
	fstp qword[niljhtsthn]
	push dword[niljhtsthn+4]
	push dword[niljhtsthn]
	push teks23
	call printf
	add esp, 12
ret


