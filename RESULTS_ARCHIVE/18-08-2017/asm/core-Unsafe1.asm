Normal JIT generated code
Export_CSharp.Lev.levenshtein_unsafe1(System.String, System.String, Int32, Int32, Int32, Int32)
Begin 00007ffde2b5d360, size 357

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 78:
>>> 00007ffd`e2b5d360 55              push    rbp
00007ffd`e2b5d361 4157            push    r15
00007ffd`e2b5d363 4156            push    r14
00007ffd`e2b5d365 4155            push    r13
00007ffd`e2b5d367 4154            push    r12
00007ffd`e2b5d369 57              push    rdi
00007ffd`e2b5d36a 56              push    rsi
00007ffd`e2b5d36b 53              push    rbx
00007ffd`e2b5d36c 4881ec98000000  sub     rsp,98h
00007ffd`e2b5d373 488d6c2420      lea     rbp,[rsp+20h]
00007ffd`e2b5d378 488bf1          mov     rsi,rcx
00007ffd`e2b5d37b 488d7d08        lea     rdi,[rbp+8]
00007ffd`e2b5d37f b91c000000      mov     ecx,1Ch
00007ffd`e2b5d384 33c0            xor     eax,eax
00007ffd`e2b5d386 f3ab            rep stos dword ptr [rdi]
00007ffd`e2b5d388 488bce          mov     rcx,rsi
00007ffd`e2b5d38b 48896570        mov     qword ptr [rbp+70h],rsp
00007ffd`e2b5d38f 48b83178b70efae00000 mov rax,0E0FA0EB77831h
00007ffd`e2b5d399 48894508        mov     qword ptr [rbp+8],rax
00007ffd`e2b5d39d 448985d0000000  mov     dword ptr [rbp+0D0h],r8d
00007ffd`e2b5d3a4 44898dd8000000  mov     dword ptr [rbp+0D8h],r9d
00007ffd`e2b5d3ab 8bbde0000000    mov     edi,dword ptr [rbp+0E0h]
00007ffd`e2b5d3b1 48894d68        mov     qword ptr [rbp+68h],rcx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 82:
00007ffd`e2b5d3b5 4c8bf9          mov     r15,rcx
00007ffd`e2b5d3b8 4d85ff          test    r15,r15
00007ffd`e2b5d3bb 7404            je      00007ffd`e2b5d3c1
00007ffd`e2b5d3bd 4983c70c        add     r15,0Ch
00007ffd`e2b5d3c1 48895560        mov     qword ptr [rbp+60h],rdx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 83:
00007ffd`e2b5d3c5 4c8be2          mov     r12,rdx
00007ffd`e2b5d3c8 4d85e4          test    r12,r12
00007ffd`e2b5d3cb 7404            je      00007ffd`e2b5d3d1
00007ffd`e2b5d3cd 4983c40c        add     r12,0Ch

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 85:
00007ffd`e2b5d3d1 448b6908        mov     r13d,dword ptr [rcx+8]
00007ffd`e2b5d3d5 448b4208        mov     r8d,dword ptr [rdx+8]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 92:
00007ffd`e2b5d3d9 4183fd0f        cmp     r13d,0Fh
00007ffd`e2b5d3dd 0f8d9b000000    jge     00007ffd`e2b5d47e
00007ffd`e2b5d3e3 4183f80f        cmp     r8d,0Fh
00007ffd`e2b5d3e7 0f8d91000000    jge     00007ffd`e2b5d47e

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 94:
00007ffd`e2b5d3ed 418d4001        lea     eax,[r8+1]
00007ffd`e2b5d3f1 8bc0            mov     eax,eax
00007ffd`e2b5d3f3 ba04000000      mov     edx,4
00007ffd`e2b5d3f8 48f7e2          mul     rax,rdx
00007ffd`e2b5d3fb 0f82b0020000    jb      00007ffd`e2b5d6b1
00007ffd`e2b5d401 488bd0          mov     rdx,rax
00007ffd`e2b5d404 4885d2          test    rdx,rdx
00007ffd`e2b5d407 741e            je      00007ffd`e2b5d427
00007ffd`e2b5d409 4883c20f        add     rdx,0Fh
00007ffd`e2b5d40d 48c1ea04        shr     rdx,4
00007ffd`e2b5d411 4883c420        add     rsp,20h
00007ffd`e2b5d415 6a00            push    0
00007ffd`e2b5d417 6a00            push    0
00007ffd`e2b5d419 48ffca          dec     rdx
00007ffd`e2b5d41c 75f7            jne     00007ffd`e2b5d415
00007ffd`e2b5d41e 4883ec20        sub     rsp,20h
00007ffd`e2b5d422 488d542420      lea     rdx,[rsp+20h]
00007ffd`e2b5d427 48896570        mov     qword ptr [rbp+70h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 95:
00007ffd`e2b5d42b 4c8bc8          mov     r9,rax
00007ffd`e2b5d42e 4d85c9          test    r9,r9
00007ffd`e2b5d431 741e            je      00007ffd`e2b5d451
00007ffd`e2b5d433 4983c10f        add     r9,0Fh
00007ffd`e2b5d437 49c1e904        shr     r9,4
00007ffd`e2b5d43b 4883c420        add     rsp,20h
00007ffd`e2b5d43f 6a00            push    0
00007ffd`e2b5d441 6a00            push    0
00007ffd`e2b5d443 49ffc9          dec     r9
00007ffd`e2b5d446 75f7            jne     00007ffd`e2b5d43f
00007ffd`e2b5d448 4883ec20        sub     rsp,20h
00007ffd`e2b5d44c 4c8d4c2420      lea     r9,[rsp+20h]
00007ffd`e2b5d451 48896570        mov     qword ptr [rbp+70h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 96:
00007ffd`e2b5d455 4885c0          test    rax,rax
00007ffd`e2b5d458 741e            je      00007ffd`e2b5d478
00007ffd`e2b5d45a 4883c00f        add     rax,0Fh
00007ffd`e2b5d45e 48c1e804        shr     rax,4
00007ffd`e2b5d462 4883c420        add     rsp,20h
00007ffd`e2b5d466 6a00            push    0
00007ffd`e2b5d468 6a00            push    0
00007ffd`e2b5d46a 48ffc8          dec     rax
00007ffd`e2b5d46d 75f7            jne     00007ffd`e2b5d466
00007ffd`e2b5d46f 4883ec20        sub     rsp,20h
00007ffd`e2b5d473 488d442420      lea     rax,[rsp+20h]
00007ffd`e2b5d478 48896570        mov     qword ptr [rbp+70h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 100:
00007ffd`e2b5d47c eb4d            jmp     00007ffd`e2b5d4cb

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 104:
00007ffd`e2b5d47e 44894558        mov     dword ptr [rbp+58h],r8d
00007ffd`e2b5d482 428d0c8504000000 lea     ecx,[r8*4+4]
00007ffd`e2b5d48a 4863c1          movsxd  rax,ecx
00007ffd`e2b5d48d 488bc8          mov     rcx,rax
00007ffd`e2b5d490 48894d18        mov     qword ptr [rbp+18h],rcx
00007ffd`e2b5d494 488bc1          mov     rax,rcx
00007ffd`e2b5d497 488bc8          mov     rcx,rax
00007ffd`e2b5d49a e8115e4a5d      call    System_Private_CoreLib+0x5832b0 (00007ffe`400032b0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006003b13)
00007ffd`e2b5d49f 48894548        mov     qword ptr [rbp+48h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 105:
00007ffd`e2b5d4a3 488b4d18        mov     rcx,qword ptr [rbp+18h]
00007ffd`e2b5d4a7 488bd1          mov     rdx,rcx
00007ffd`e2b5d4aa 488bca          mov     rcx,rdx
00007ffd`e2b5d4ad e8fe5d4a5d      call    System_Private_CoreLib+0x5832b0 (00007ffe`400032b0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006003b13)
00007ffd`e2b5d4b2 48894540        mov     qword ptr [rbp+40h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 106:
00007ffd`e2b5d4b6 488b4d18        mov     rcx,qword ptr [rbp+18h]
00007ffd`e2b5d4ba e8f15d4a5d      call    System_Private_CoreLib+0x5832b0 (00007ffe`400032b0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006003b13)
00007ffd`e2b5d4bf 488b5548        mov     rdx,qword ptr [rbp+48h]
00007ffd`e2b5d4c3 448b4558        mov     r8d,dword ptr [rbp+58h]
00007ffd`e2b5d4c7 4c8b4d40        mov     r9,qword ptr [rbp+40h]
00007ffd`e2b5d4cb 48895548        mov     qword ptr [rbp+48h],rdx
00007ffd`e2b5d4cf 488bca          mov     rcx,rdx
00007ffd`e2b5d4d2 4c894d40        mov     qword ptr [rbp+40h],r9
00007ffd`e2b5d4d6 4d8bd1          mov     r10,r9
00007ffd`e2b5d4d9 48894538        mov     qword ptr [rbp+38h],rax
00007ffd`e2b5d4dd 4c8bd8          mov     r11,rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 113:
00007ffd`e2b5d4e0 4533f6          xor     r14d,r14d
00007ffd`e2b5d4e3 4585c0          test    r8d,r8d
00007ffd`e2b5d4e6 7c15            jl      00007ffd`e2b5d4fd

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 114:
00007ffd`e2b5d4e8 418bde          mov     ebx,r14d
00007ffd`e2b5d4eb 0fafdf          imul    ebx,edi
00007ffd`e2b5d4ee 4963f6          movsxd  rsi,r14d
00007ffd`e2b5d4f1 41891cb2        mov     dword ptr [r10+rsi*4],ebx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 113:
00007ffd`e2b5d4f5 41ffc6          inc     r14d
00007ffd`e2b5d4f8 453bf0          cmp     r14d,r8d
00007ffd`e2b5d4fb 7eeb            jle     00007ffd`e2b5d4e8

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 116:
00007ffd`e2b5d4fd 33f6            xor     esi,esi
00007ffd`e2b5d4ff 44896d5c        mov     dword ptr [rbp+5Ch],r13d
00007ffd`e2b5d503 4585ed          test    r13d,r13d
00007ffd`e2b5d506 7e57            jle     00007ffd`e2b5d55f

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 120:
00007ffd`e2b5d508 8d5e01          lea     ebx,[rsi+1]
00007ffd`e2b5d50b 895d14          mov     dword ptr [rbp+14h],ebx
00007ffd`e2b5d50e 448bb5e8000000  mov     r14d,dword ptr [rbp+0E8h]
00007ffd`e2b5d515 8bc3            mov     eax,ebx
00007ffd`e2b5d517 410fafc6        imul    eax,r14d
00007ffd`e2b5d51b 418903          mov     dword ptr [r11],eax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 122:
00007ffd`e2b5d51e 33c0            xor     eax,eax
00007ffd`e2b5d520 44894558        mov     dword ptr [rbp+58h],r8d
00007ffd`e2b5d524 4585c0          test    r8d,r8d
00007ffd`e2b5d527 7e2e            jle     00007ffd`e2b5d557

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 125:
00007ffd`e2b5d529 4c63c8          movsxd  r9,eax
00007ffd`e2b5d52c 438b148a        mov     edx,dword ptr [r10+r9*4]
00007ffd`e2b5d530 448d6801        lea     r13d,[rax+1]
00007ffd`e2b5d534 4963dd          movsxd  rbx,r13d
00007ffd`e2b5d537 4d8d049b        lea     r8,[r11+rbx*4]
00007ffd`e2b5d53b 895534          mov     dword ptr [rbp+34h],edx
00007ffd`e2b5d53e 4863d6          movsxd  rdx,esi
00007ffd`e2b5d541 410fb71457      movzx   edx,word ptr [r15+rdx*2]
00007ffd`e2b5d546 66433b144c      cmp     dx,word ptr [r12+r9*2]
00007ffd`e2b5d54b 751e            jne     00007ffd`e2b5d56b
00007ffd`e2b5d54d 8b5534          mov     edx,dword ptr [rbp+34h]
00007ffd`e2b5d550 895524          mov     dword ptr [rbp+24h],edx
00007ffd`e2b5d553 33d2            xor     edx,edx
00007ffd`e2b5d555 eb2b            jmp     00007ffd`e2b5d582
00007ffd`e2b5d557 8b5d58          mov     ebx,dword ptr [rbp+58h]
00007ffd`e2b5d55a e9bd000000      jmp     00007ffd`e2b5d61c
00007ffd`e2b5d55f 418bd8          mov     ebx,r8d
00007ffd`e2b5d562 448b6d5c        mov     r13d,dword ptr [rbp+5Ch]
00007ffd`e2b5d566 e9d0000000      jmp     00007ffd`e2b5d63b
00007ffd`e2b5d56b 4c894528        mov     qword ptr [rbp+28h],r8
00007ffd`e2b5d56f 8b5534          mov     edx,dword ptr [rbp+34h]
00007ffd`e2b5d572 41b801000000    mov     r8d,1
00007ffd`e2b5d578 895524          mov     dword ptr [rbp+24h],edx
00007ffd`e2b5d57b 418bd0          mov     edx,r8d
00007ffd`e2b5d57e 4c8b4528        mov     r8,qword ptr [rbp+28h]
00007ffd`e2b5d582 0faf95d8000000  imul    edx,dword ptr [rbp+0D8h]
00007ffd`e2b5d589 035524          add     edx,dword ptr [rbp+24h]
00007ffd`e2b5d58c 418910          mov     dword ptr [r8],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 128:
00007ffd`e2b5d58f 85f6            test    esi,esi
00007ffd`e2b5d591 7e56            jle     00007ffd`e2b5d5e9
00007ffd`e2b5d593 85c0            test    eax,eax
00007ffd`e2b5d595 7e52            jle     00007ffd`e2b5d5e9
00007ffd`e2b5d597 8d56ff          lea     edx,[rsi-1]
00007ffd`e2b5d59a 4863d2          movsxd  rdx,edx
00007ffd`e2b5d59d 410fb71457      movzx   edx,word ptr [r15+rdx*2]
00007ffd`e2b5d5a2 66433b144c      cmp     dx,word ptr [r12+r9*2]
00007ffd`e2b5d5a7 7540            jne     00007ffd`e2b5d5e9
00007ffd`e2b5d5a9 4863d6          movsxd  rdx,esi
00007ffd`e2b5d5ac 410fb71457      movzx   edx,word ptr [r15+rdx*2]
00007ffd`e2b5d5b1 ffc8            dec     eax
00007ffd`e2b5d5b3 4863c0          movsxd  rax,eax
00007ffd`e2b5d5b6 66413b1444      cmp     dx,word ptr [r12+rax*2]
00007ffd`e2b5d5bb 752c            jne     00007ffd`e2b5d5e9
00007ffd`e2b5d5bd 418b149b        mov     edx,dword ptr [r11+rbx*4]
00007ffd`e2b5d5c1 895504          mov     dword ptr [rbp+4],edx
00007ffd`e2b5d5c4 448b85d0000000  mov     r8d,dword ptr [rbp+0D0h]
00007ffd`e2b5d5cb 418bd0          mov     edx,r8d
00007ffd`e2b5d5ce 031481          add     edx,dword ptr [rcx+rax*4]
00007ffd`e2b5d5d1 8bc2            mov     eax,edx
00007ffd`e2b5d5d3 8b5504          mov     edx,dword ptr [rbp+4]
00007ffd`e2b5d5d6 3bd0            cmp     edx,eax
00007ffd`e2b5d5d8 0f8ec7000000    jle     00007ffd`e2b5d6a5

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 132:
00007ffd`e2b5d5de 4189049b        mov     dword ptr [r11+rbx*4],eax
00007ffd`e2b5d5e2 448985d0000000  mov     dword ptr [rbp+0D0h],r8d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 135:
00007ffd`e2b5d5e9 418b049b        mov     eax,dword ptr [r11+rbx*4]
00007ffd`e2b5d5ed 418bd6          mov     edx,r14d
00007ffd`e2b5d5f0 4103149a        add     edx,dword ptr [r10+rbx*4]
00007ffd`e2b5d5f4 3bc2            cmp     eax,edx
00007ffd`e2b5d5f6 7e04            jle     00007ffd`e2b5d5fc

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 136:
00007ffd`e2b5d5f8 4189149b        mov     dword ptr [r11+rbx*4],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 139:
00007ffd`e2b5d5fc 418b049b        mov     eax,dword ptr [r11+rbx*4]
00007ffd`e2b5d600 8bd7            mov     edx,edi
00007ffd`e2b5d602 4303148b        add     edx,dword ptr [r11+r9*4]
00007ffd`e2b5d606 3bc2            cmp     eax,edx
00007ffd`e2b5d608 7e04            jle     00007ffd`e2b5d60e

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 140:
00007ffd`e2b5d60a 4189149b        mov     dword ptr [r11+rbx*4],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 122:
00007ffd`e2b5d60e 418bc5          mov     eax,r13d
00007ffd`e2b5d611 8b5d58          mov     ebx,dword ptr [rbp+58h]
00007ffd`e2b5d614 3bc3            cmp     eax,ebx
00007ffd`e2b5d616 0f8c81000000    jl      00007ffd`e2b5d69d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 143:
00007ffd`e2b5d61c 498bc2          mov     rax,r10

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 145:
00007ffd`e2b5d61f 4d8bd3          mov     r10,r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 146:
00007ffd`e2b5d622 4c8bd9          mov     r11,rcx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 116:
00007ffd`e2b5d625 8b7514          mov     esi,dword ptr [rbp+14h]
00007ffd`e2b5d628 448b6d5c        mov     r13d,dword ptr [rbp+5Ch]
00007ffd`e2b5d62c 413bf5          cmp     esi,r13d
00007ffd`e2b5d62f 4489b5e8000000  mov     dword ptr [rbp+0E8h],r14d
00007ffd`e2b5d636 488bc8          mov     rcx,rax
00007ffd`e2b5d639 7c56            jl      00007ffd`e2b5d691

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 148:
00007ffd`e2b5d63b 4863cb          movsxd  rcx,ebx
00007ffd`e2b5d63e 418b348a        mov     esi,dword ptr [r10+rcx*4]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 151:
00007ffd`e2b5d642 4183fd0f        cmp     r13d,0Fh
00007ffd`e2b5d646 7d05            jge     00007ffd`e2b5d64d
00007ffd`e2b5d648 83fb0f          cmp     ebx,0Fh
00007ffd`e2b5d64b 7c1b            jl      00007ffd`e2b5d668

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 153:
00007ffd`e2b5d64d 488b4d48        mov     rcx,qword ptr [rbp+48h]
00007ffd`e2b5d651 e82a5d4a5d      call    System_Private_CoreLib+0x583380 (00007ffe`40003380) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006003b15)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 154:
00007ffd`e2b5d656 488b4d40        mov     rcx,qword ptr [rbp+40h]
00007ffd`e2b5d65a e8215d4a5d      call    System_Private_CoreLib+0x583380 (00007ffe`40003380) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006003b15)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 155:
00007ffd`e2b5d65f 488b4d38        mov     rcx,qword ptr [rbp+38h]
00007ffd`e2b5d663 e8185d4a5d      call    System_Private_CoreLib+0x583380 (00007ffe`40003380) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006003b15)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 158:
00007ffd`e2b5d668 8bc6            mov     eax,esi
00007ffd`e2b5d66a 48b93178b70efae00000 mov rcx,0E0FA0EB77831h
00007ffd`e2b5d674 48394d08        cmp     qword ptr [rbp+8],rcx
00007ffd`e2b5d678 7405            je      00007ffd`e2b5d67f
00007ffd`e2b5d67a e8e1a4bf5f      call    coreclr!JIT_FailFast (00007ffe`42757b60)
00007ffd`e2b5d67f 90              nop
00007ffd`e2b5d680 488d6578        lea     rsp,[rbp+78h]
00007ffd`e2b5d684 5b              pop     rbx
00007ffd`e2b5d685 5e              pop     rsi
00007ffd`e2b5d686 5f              pop     rdi
00007ffd`e2b5d687 415c            pop     r12
00007ffd`e2b5d689 415d            pop     r13
00007ffd`e2b5d68b 415e            pop     r14
00007ffd`e2b5d68d 415f            pop     r15
00007ffd`e2b5d68f 5d              pop     rbp
00007ffd`e2b5d690 c3              ret

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 78:
00007ffd`e2b5d691 44896d5c        mov     dword ptr [rbp+5Ch],r13d
00007ffd`e2b5d695 448bc3          mov     r8d,ebx
00007ffd`e2b5d698 e96bfeffff      jmp     00007ffd`e2b5d508
00007ffd`e2b5d69d 895d58          mov     dword ptr [rbp+58h],ebx
00007ffd`e2b5d6a0 e984feffff      jmp     00007ffd`e2b5d529
00007ffd`e2b5d6a5 448985d0000000  mov     dword ptr [rbp+0D0h],r8d
00007ffd`e2b5d6ac e938ffffff      jmp     00007ffd`e2b5d5e9
00007ffd`e2b5d6b1 e87a8cbf5f      call    coreclr!JIT_Overflow (00007ffe`42756330)
00007ffd`e2b5d6b6 cc              int     3
