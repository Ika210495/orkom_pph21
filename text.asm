perhitugan:
    
    mov eax, teks1
    mov ebx, 1
    call printStr
    
    push jkk1
    push format1_in
    call scanf
    add esp, 8
    
    mov eax, teks2
    mov ebx, 1
    call printStr
    
    push jkm1
    push format1_in
    call scanf
    add esp, 8
    
    mov eax, teks3
    mov ebx, 1
    call printStr
    
    push jht1
    push format1_in
    call scanf
    add esp, 8
    
    mov eax, teks4
    mov ebx, 1
    call printStr
    
    push  gapok1
    push format_in
    call scanf
    add esp, 8
    
    mov eax, teks5
    mov ebx, 1
    call printStr
    push tunjangan_keluarga
    push format_in
    call scanf
    add esp, 8
    
    mov eax, teks6
    mov ebx, 1
    call printStr
    push tunjangan_jabatan
    push format_in
    call scanf
    add esp, 8
       
    mov eax, teks7
    mov ebx, 1
    call printStr
    
    push tunjangan_kehadiran
    push format1_in
    call scanf
    add esp, 8
    
    mov eax, teks8
    mov ebx, 1
    call printStr
    
    push tunjangan_lembur
    push format1_in
    call scanf
    add esp, 8
    
    mov eax, teks9
    mov ebx, 1
    call printStr
    
    push tunjangan_makan
    push format1_in
    call scanf
    add esp, 8
    
ret


