.text
.intel_syntax noprefix

gs_foo:
 ret

bar:
 lea	eax, .LC0@GOTOFF[ebx]
 mov	eax, DWORD PTR gs_foo@GOT[ebx]

.L11:
        jmp     DWORD PTR[ .L11  + eax * 4 ]
.LC0:
        lea     eax, DWORD PTR[ .LC0@GOTOFF + ebx ]
