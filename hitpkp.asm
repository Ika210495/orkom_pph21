persenlimabelas:
        
		fld qword[jum5]
		fld dword[niltk0]
		fsub
		fstp qword[pkp1]
		
		;<5000000
		fld qword[pkp1] ; niltk9  ;p1=50000000*0.05;
		fld qword[pembagijabatan]
		fmul
		fstp qword[p12]
		
		fld qword[p12]
		fld dword[nilaisetahun]
		fdiv
		fstp qword[psetahun]
		;push dword[psetahun+4]
		;push dword[psetahun]
		;push tl2
		;call printf
		;add esp,12
		
		;>50jt
		;satu
		fld qword[pkp1]			;	pkp=pkp-50000000;
		fld dword[niltk9]
		fsub
		fstp qword[t1]
		
		
		fld qword[banding50] ; niltk9  ;p1=50000000*0.05;
		fld qword[pembagijabatan]
		fmul
		fstp qword[p1]
		
		;pkp2
		fld qword[t1]
		fld qword[persen15]
		fmul
		fstp qword[p2]
		;p2=pkp*0.15;
		fld qword[p1]
		fld qword[p2]
		fadd 
		fstp qword[hasil12]
		
		fld qword[hasil12]
		fld dword[nilaisetahun] ;tahun=12
		fdiv
		fstp qword[psetahun1]
		;push dword[psetahun1+4]
		;push dword[psetahun1]
		;push tl2
		;call printf
		;add esp,12
		
		fld qword[t1]
		fld qword[banding25]
		fsub
		fstp qword[t2]
		
		fld qword[t2]
		fld qword[persen25]
		fmul
		fstp qword[p4]
		
		
		;pkp2a
		
	
		fld qword[banding25]
		fld qword[persen15]
		fmul
		fstp qword[p2]
	
		
		fld qword[t2]
		fld qword[persen30]
		fmul
		fstp qword[p3]
		
		
		fld qword[p1]
		fld qword[p2]
		fadd 
		fstp qword[t]
		
		
		fld qword[t]
		fld qword[p3]
		fadd
		fstp qword[hasil2]
		
		
		fld qword[hasil2]
		fld dword[nilaisetahun] ;tahun=12
		fdiv
		fstp qword[psetahun2]
		;push dword[psetahun2+4]
		;push dword[psetahun2]
		;push tl2
		;call printf
		;add esp,12
		
		fld qword[t]
		fld qword[p4]
		fadd
		fstp qword[hasil3]
		fld qword[hasil3]
		fld dword[nilaisetahun] ;tahun=12
		fdiv
		fstp qword[psetahun3]
		;push dword[psetahun3+4]
		;push dword[psetahun3]
		;push tl2
		;call printf
		;add esp,12
		
		call ptkp
ret

ptkp:

		
		fld qword[banding50]
		fld qword[pkp1]
		fcomip
		ja tk0k
		
		tk0p:
		push dword[pkp1+4]
		push dword[pkp1]
		push tl1
		call printf
		add esp,12
		
		push dword[p12+4]
		push dword[p12]
		push tl1
		call printf
		add esp,12
		
		push masuk
		call printf
		add esp,4
		
		push dword[psetahun+4]
		push dword[psetahun]
        push tl3
        call printf
        add esp, 8
		jmp kondisi_selesai
		
		tk0k:
	
		mov ebx,[t1]	
		cmp ebx,[niltk9] ;if(pkp>50000000)
		jg pkp2
		cmp ebx,[banding25]
		jle	pkp2;|| pkp <=250000000)
		
		pkp2:
			cmp ebx,[banding25]
			jg pkp2a ;if(pkp>250000000)
		;habis diubah dari pkp2				
				
				;baru ditambahin nih..
				
				push dword[pkp1+4]
				push dword[pkp1]
				call printf
				add esp, 12
				
				push masuk1
				call printf
				add esp,4
			
				push dword[psetahun1+4]
				push dword[psetahun1]
		        push tl3
		        call printf
		        add esp, 8
				jmp kondisi_selesai
				
		pkp2a:
				mov ecx,[t2]
				cmp ecx,[banding50]
				jg pkp3
				
				push dword[pkp1+4]
				push dword[pkp1]
				push teks25
				call printf
				add esp, 12
					
				push masuk2
				call printf
				add esp,4
						
				push dword[psetahun2+4]
				push dword[psetahun2]
				push tl3
		        call printf
		        add esp, 8
				jmp kondisi_selesai
				
			pkp3:
			push masuk2
			call printf
			add esp,4
			
			push dword[pkp1+4]
			push dword[pkp1]
			push tl1
			call printf
			add esp,12
					
			push dword[psetahun3+4]
			push dword[psetahun3]
	        push tl3
			call printf
	        add esp, 8
	        jmp kondisi_selesai
			
			
		jmp kondisi_selesai
ret
