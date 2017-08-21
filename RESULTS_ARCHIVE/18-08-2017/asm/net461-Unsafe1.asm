Normal JIT generated code
Export_CSharp.Lev.levenshtein_unsafe1(System.String, System.String, Int32, Int32, Int32, Int32)
Begin 00007ffe187b5910, size 33f
*** WARNING: Unable to verify checksum for levenshtein-CSharp.dll

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 78:
>>> 00007ffe`187b5910 55              push    rbp
00007ffe`187b5911 4157            push    r15
00007ffe`187b5913 4156            push    r14
00007ffe`187b5915 4155            push    r13
00007ffe`187b5917 4154            push    r12
00007ffe`187b5919 57              push    rdi
00007ffe`187b591a 56              push    rsi
00007ffe`187b591b 53              push    rbx
00007ffe`187b591c 4883ec78        sub     rsp,78h
00007ffe`187b5920 488d6c2420      lea     rbp,[rsp+20h]
00007ffe`187b5925 488bf1          mov     rsi,rcx
00007ffe`187b5928 488d7d08        lea     rdi,[rbp+8]
00007ffe`187b592c b914000000      mov     ecx,14h
00007ffe`187b5931 33c0            xor     eax,eax
00007ffe`187b5933 f3ab            rep stos dword ptr [rdi]
00007ffe`187b5935 488bce          mov     rcx,rsi
00007ffe`187b5938 48896550        mov     qword ptr [rbp+50h],rsp
00007ffe`187b593c 48b87ecb928bcecf0000 mov rax,0CFCE8B92CB7Eh
00007ffe`187b5946 48894508        mov     qword ptr [rbp+8],rax
00007ffe`187b594a 448985b0000000  mov     dword ptr [rbp+0B0h],r8d
00007ffe`187b5951 44898db8000000  mov     dword ptr [rbp+0B8h],r9d
00007ffe`187b5958 8bbdc0000000    mov     edi,dword ptr [rbp+0C0h]
00007ffe`187b595e 48894d48        mov     qword ptr [rbp+48h],rcx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 82:
00007ffe`187b5962 4c8bf9          mov     r15,rcx
00007ffe`187b5965 4d85ff          test    r15,r15
00007ffe`187b5968 7404            je      00007ffe`187b596e
00007ffe`187b596a 4983c70c        add     r15,0Ch
00007ffe`187b596e 48895540        mov     qword ptr [rbp+40h],rdx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 83:
00007ffe`187b5972 4c8be2          mov     r12,rdx
00007ffe`187b5975 4d85e4          test    r12,r12
00007ffe`187b5978 7404            je      00007ffe`187b597e
00007ffe`187b597a 4983c40c        add     r12,0Ch

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 85:
00007ffe`187b597e 448b6908        mov     r13d,dword ptr [rcx+8]
00007ffe`187b5982 448b4208        mov     r8d,dword ptr [rdx+8]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 92:
00007ffe`187b5986 4183fd0f        cmp     r13d,0Fh
00007ffe`187b598a 0f8d9b000000    jge     00007ffe`187b5a2b
00007ffe`187b5990 4183f80f        cmp     r8d,0Fh
00007ffe`187b5994 0f8d91000000    jge     00007ffe`187b5a2b

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 94:
00007ffe`187b599a 418d4001        lea     eax,[r8+1]
00007ffe`187b599e 8bc0            mov     eax,eax
00007ffe`187b59a0 ba04000000      mov     edx,4
00007ffe`187b59a5 48f7e2          mul     rax,rdx
00007ffe`187b59a8 0f829b020000    jb      00007ffe`187b5c49
00007ffe`187b59ae 488bd0          mov     rdx,rax
00007ffe`187b59b1 4885d2          test    rdx,rdx
00007ffe`187b59b4 741e            je      00007ffe`187b59d4
00007ffe`187b59b6 4883c20f        add     rdx,0Fh
00007ffe`187b59ba 48c1ea04        shr     rdx,4
00007ffe`187b59be 4883c420        add     rsp,20h
00007ffe`187b59c2 6a00            push    0
00007ffe`187b59c4 6a00            push    0
00007ffe`187b59c6 48ffca          dec     rdx
00007ffe`187b59c9 75f7            jne     00007ffe`187b59c2
00007ffe`187b59cb 4883ec20        sub     rsp,20h
00007ffe`187b59cf 488d542420      lea     rdx,[rsp+20h]
00007ffe`187b59d4 48896550        mov     qword ptr [rbp+50h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 95:
00007ffe`187b59d8 4c8bc8          mov     r9,rax
00007ffe`187b59db 4d85c9          test    r9,r9
00007ffe`187b59de 741e            je      00007ffe`187b59fe
00007ffe`187b59e0 4983c10f        add     r9,0Fh
00007ffe`187b59e4 49c1e904        shr     r9,4
00007ffe`187b59e8 4883c420        add     rsp,20h
00007ffe`187b59ec 6a00            push    0
00007ffe`187b59ee 6a00            push    0
00007ffe`187b59f0 49ffc9          dec     r9
00007ffe`187b59f3 75f7            jne     00007ffe`187b59ec
00007ffe`187b59f5 4883ec20        sub     rsp,20h
00007ffe`187b59f9 4c8d4c2420      lea     r9,[rsp+20h]
00007ffe`187b59fe 48896550        mov     qword ptr [rbp+50h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 96:
00007ffe`187b5a02 4885c0          test    rax,rax
00007ffe`187b5a05 741e            je      00007ffe`187b5a25
00007ffe`187b5a07 4883c00f        add     rax,0Fh
00007ffe`187b5a0b 48c1e804        shr     rax,4
00007ffe`187b5a0f 4883c420        add     rsp,20h
00007ffe`187b5a13 6a00            push    0
00007ffe`187b5a15 6a00            push    0
00007ffe`187b5a17 48ffc8          dec     rax
00007ffe`187b5a1a 75f7            jne     00007ffe`187b5a13
00007ffe`187b5a1c 4883ec20        sub     rsp,20h
00007ffe`187b5a20 488d442420      lea     rax,[rsp+20h]
00007ffe`187b5a25 48896550        mov     qword ptr [rbp+50h],rsp

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 100:
00007ffe`187b5a29 eb4d            jmp     00007ffe`187b5a78

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 104:
00007ffe`187b5a2b 44894538        mov     dword ptr [rbp+38h],r8d
00007ffe`187b5a2f 428d0c8504000000 lea     ecx,[r8*4+4]
00007ffe`187b5a37 4863c1          movsxd  rax,ecx
00007ffe`187b5a3a 488bc8          mov     rcx,rax
00007ffe`187b5a3d 48894d10        mov     qword ptr [rbp+10h],rcx
00007ffe`187b5a41 488bc1          mov     rax,rcx
00007ffe`187b5a44 488bc8          mov     rcx,rax
00007ffe`187b5a47 e8548e3557      call    mscorlib_ni+0x4de8a0 (00007ffe`6fb0e8a0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006005f74)
00007ffe`187b5a4c 48894530        mov     qword ptr [rbp+30h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 105:
00007ffe`187b5a50 488b4d10        mov     rcx,qword ptr [rbp+10h]
00007ffe`187b5a54 488bd1          mov     rdx,rcx
00007ffe`187b5a57 488bca          mov     rcx,rdx
00007ffe`187b5a5a e8418e3557      call    mscorlib_ni+0x4de8a0 (00007ffe`6fb0e8a0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006005f74)
00007ffe`187b5a5f 48894528        mov     qword ptr [rbp+28h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 106:
00007ffe`187b5a63 488b4d10        mov     rcx,qword ptr [rbp+10h]
00007ffe`187b5a67 e8348e3557      call    mscorlib_ni+0x4de8a0 (00007ffe`6fb0e8a0) (System.Runtime.InteropServices.Marshal.AllocHGlobal(IntPtr), mdToken: 0000000006005f74)
00007ffe`187b5a6c 488b5530        mov     rdx,qword ptr [rbp+30h]
00007ffe`187b5a70 448b4538        mov     r8d,dword ptr [rbp+38h]
00007ffe`187b5a74 4c8b4d28        mov     r9,qword ptr [rbp+28h]
00007ffe`187b5a78 48895530        mov     qword ptr [rbp+30h],rdx
00007ffe`187b5a7c 48895518        mov     qword ptr [rbp+18h],rdx
00007ffe`187b5a80 4c894d28        mov     qword ptr [rbp+28h],r9
00007ffe`187b5a84 4d8bd1          mov     r10,r9
00007ffe`187b5a87 48894520        mov     qword ptr [rbp+20h],rax
00007ffe`187b5a8b 4c8bd8          mov     r11,rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 113:
00007ffe`187b5a8e 4533f6          xor     r14d,r14d
00007ffe`187b5a91 4585c0          test    r8d,r8d
00007ffe`187b5a94 7c15            jl      00007ffe`187b5aab

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 114:
00007ffe`187b5a96 418bf6          mov     esi,r14d
00007ffe`187b5a99 0faff7          imul    esi,edi
00007ffe`187b5a9c 4963de          movsxd  rbx,r14d
00007ffe`187b5a9f 4189349a        mov     dword ptr [r10+rbx*4],esi

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 113:
00007ffe`187b5aa3 41ffc6          inc     r14d
00007ffe`187b5aa6 453bf0          cmp     r14d,r8d
00007ffe`187b5aa9 7eeb            jle     00007ffe`187b5a96

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 116:
00007ffe`187b5aab 33f6            xor     esi,esi
00007ffe`187b5aad 44896d3c        mov     dword ptr [rbp+3Ch],r13d
00007ffe`187b5ab1 4585ed          test    r13d,r13d
00007ffe`187b5ab4 7e45            jle     00007ffe`187b5afb

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 120:
00007ffe`187b5ab6 448d7601        lea     r14d,[rsi+1]
00007ffe`187b5aba 8b9dc8000000    mov     ebx,dword ptr [rbp+0C8h]
00007ffe`187b5ac0 440faff3        imul    r14d,ebx
00007ffe`187b5ac4 458933          mov     dword ptr [r11],r14d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 122:
00007ffe`187b5ac7 4533f6          xor     r14d,r14d
00007ffe`187b5aca 4585c0          test    r8d,r8d
00007ffe`187b5acd 0f8ee5000000    jle     00007ffe`187b5bb8

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 125: /* substitution */
00007ffe`187b5ad3 4963c6          movsxd  rax,r14d
00007ffe`187b5ad6 418b0482        mov     eax,dword ptr [r10+rax*4]
00007ffe`187b5ada 458d4e01        lea     r9d,[r14+1]
00007ffe`187b5ade 4d63c9          movsxd  r9,r9d
00007ffe`187b5ae1 4b8d148b        lea     rdx,[r11+r9*4]
00007ffe`187b5ae5 4c63ee          movsxd  r13,esi
00007ffe`187b5ae8 470fb72c6f      movzx   r13d,word ptr [r15+r13*2]
00007ffe`187b5aed 4963ce          movsxd  rcx,r14d
00007ffe`187b5af0 66453b2c4c      cmp     r13w,word ptr [r12+rcx*2]
00007ffe`187b5af5 750d            jne     00007ffe`187b5b04
00007ffe`187b5af7 33c9            xor     ecx,ecx
00007ffe`187b5af9 eb0e            jmp     00007ffe`187b5b09
00007ffe`187b5afb 448b6d3c        mov     r13d,dword ptr [rbp+3Ch]
00007ffe`187b5aff e9d6000000      jmp     00007ffe`187b5bda
00007ffe`187b5b04 b901000000      mov     ecx,1
00007ffe`187b5b09 0faf8db8000000  imul    ecx,dword ptr [rbp+0B8h]
00007ffe`187b5b10 03c8            add     ecx,eax
00007ffe`187b5b12 890a            mov     dword ptr [rdx],ecx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 128:
00007ffe`187b5b14 85f6            test    esi,esi
00007ffe`187b5b16 7e60            jle     00007ffe`187b5b78
00007ffe`187b5b18 4585f6          test    r14d,r14d
00007ffe`187b5b1b 7e5b            jle     00007ffe`187b5b78
00007ffe`187b5b1d 8d4eff          lea     ecx,[rsi-1]
00007ffe`187b5b20 4863c9          movsxd  rcx,ecx
00007ffe`187b5b23 410fb70c4f      movzx   ecx,word ptr [r15+rcx*2]
00007ffe`187b5b28 4963c6          movsxd  rax,r14d
00007ffe`187b5b2b 66413b0c44      cmp     cx,word ptr [r12+rax*2]
00007ffe`187b5b30 7546            jne     00007ffe`187b5b78
00007ffe`187b5b32 4863ce          movsxd  rcx,esi
00007ffe`187b5b35 410fb70c4f      movzx   ecx,word ptr [r15+rcx*2]
00007ffe`187b5b3a 418d46ff        lea     eax,[r14-1]
00007ffe`187b5b3e 4863c0          movsxd  rax,eax
00007ffe`187b5b41 66413b0c44      cmp     cx,word ptr [r12+rax*2]
00007ffe`187b5b46 7530            jne     00007ffe`187b5b78
00007ffe`187b5b48 488b4d18        mov     rcx,qword ptr [rbp+18h]
00007ffe`187b5b4c 8b95b0000000    mov     edx,dword ptr [rbp+0B0h]
00007ffe`187b5b52 448bea          mov     r13d,edx
00007ffe`187b5b55 44032c81        add     r13d,dword ptr [rcx+rax*4]
00007ffe`187b5b59 47392c8b        cmp     dword ptr [r11+r9*4],r13d
00007ffe`187b5b5d 0f8ed7000000    jle     00007ffe`187b5c3a

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 132:
00007ffe`187b5b63 448bea          mov     r13d,edx
00007ffe`187b5b66 44032c81        add     r13d,dword ptr [rcx+rax*4]
00007ffe`187b5b6a 47892c8b        mov     dword ptr [r11+r9*4],r13d
00007ffe`187b5b6e 48894d18        mov     qword ptr [rbp+18h],rcx
00007ffe`187b5b72 8995b0000000    mov     dword ptr [rbp+0B0h],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 135:
00007ffe`187b5b78 8bc3            mov     eax,ebx
00007ffe`187b5b7a 4303048a        add     eax,dword ptr [r10+r9*4]
00007ffe`187b5b7e 4339048b        cmp     dword ptr [r11+r9*4],eax
00007ffe`187b5b82 7e0a            jle     00007ffe`187b5b8e

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 136:
00007ffe`187b5b84 8bc3            mov     eax,ebx
00007ffe`187b5b86 4303048a        add     eax,dword ptr [r10+r9*4]
00007ffe`187b5b8a 4389048b        mov     dword ptr [r11+r9*4],eax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 139:
00007ffe`187b5b8e 4963c6          movsxd  rax,r14d
00007ffe`187b5b91 448bef          mov     r13d,edi
00007ffe`187b5b94 45032c83        add     r13d,dword ptr [r11+rax*4]
00007ffe`187b5b98 47392c8b        cmp     dword ptr [r11+r9*4],r13d
00007ffe`187b5b9c 7e0e            jle     00007ffe`187b5bac

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 140:
00007ffe`187b5b9e 4963c6          movsxd  rax,r14d
00007ffe`187b5ba1 448bef          mov     r13d,edi
00007ffe`187b5ba4 45032c83        add     r13d,dword ptr [r11+rax*4]
00007ffe`187b5ba8 47892c8b        mov     dword ptr [r11+r9*4],r13d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 122:
00007ffe`187b5bac 41ffc6          inc     r14d
00007ffe`187b5baf 453bf0          cmp     r14d,r8d
00007ffe`187b5bb2 0f8c1bffffff    jl      00007ffe`187b5ad3

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 143:
00007ffe`187b5bb8 488b4d18        mov     rcx,qword ptr [rbp+18h]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 144:
00007ffe`187b5bbc 498bc2          mov     rax,r10

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 145:
00007ffe`187b5bbf 4d8bd3          mov     r10,r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 146:
00007ffe`187b5bc2 4c8bd9          mov     r11,rcx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 116:
00007ffe`187b5bc5 ffc6            inc     esi
00007ffe`187b5bc7 448b6d3c        mov     r13d,dword ptr [rbp+3Ch]
00007ffe`187b5bcb 413bf5          cmp     esi,r13d
00007ffe`187b5bce 899dc8000000    mov     dword ptr [rbp+0C8h],ebx
00007ffe`187b5bd4 48894518        mov     qword ptr [rbp+18h],rax
00007ffe`187b5bd8 7c57            jl      00007ffe`187b5c31

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 148:
00007ffe`187b5bda 4963c8          movsxd  rcx,r8d
00007ffe`187b5bdd 418b348a        mov     esi,dword ptr [r10+rcx*4]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 151:
00007ffe`187b5be1 4183fd0f        cmp     r13d,0Fh
00007ffe`187b5be5 7d06            jge     00007ffe`187b5bed
00007ffe`187b5be7 4183f80f        cmp     r8d,0Fh
00007ffe`187b5beb 7c1b            jl      00007ffe`187b5c08

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 153:
00007ffe`187b5bed 488b4d30        mov     rcx,qword ptr [rbp+30h]
00007ffe`187b5bf1 e89a783557      call    mscorlib_ni+0x4dd490 (00007ffe`6fb0d490) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006005f76)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 154:
00007ffe`187b5bf6 488b4d28        mov     rcx,qword ptr [rbp+28h]
00007ffe`187b5bfa e891783557      call    mscorlib_ni+0x4dd490 (00007ffe`6fb0d490) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006005f76)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 155:
00007ffe`187b5bff 488b4d20        mov     rcx,qword ptr [rbp+20h]
00007ffe`187b5c03 e888783557      call    mscorlib_ni+0x4dd490 (00007ffe`6fb0d490) (System.Runtime.InteropServices.Marshal.FreeHGlobal(IntPtr), mdToken: 0000000006005f76)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 158:
00007ffe`187b5c08 8bc6            mov     eax,esi
00007ffe`187b5c0a 48b97ecb928bcecf0000 mov rcx,0CFCE8B92CB7Eh
00007ffe`187b5c14 48394d08        cmp     qword ptr [rbp+8],rcx
00007ffe`187b5c18 7405            je      00007ffe`187b5c1f
00007ffe`187b5c1a e801a7a85f      call    clr!JIT_FailFast (00007ffe`78240320)
00007ffe`187b5c1f 90              nop
00007ffe`187b5c20 488d6558        lea     rsp,[rbp+58h]
00007ffe`187b5c24 5b              pop     rbx
00007ffe`187b5c25 5e              pop     rsi
00007ffe`187b5c26 5f              pop     rdi
00007ffe`187b5c27 415c            pop     r12
00007ffe`187b5c29 415d            pop     r13
00007ffe`187b5c2b 415e            pop     r14
00007ffe`187b5c2d 415f            pop     r15
00007ffe`187b5c2f 5d              pop     rbp
00007ffe`187b5c30 c3              ret

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 78:
00007ffe`187b5c31 44896d3c        mov     dword ptr [rbp+3Ch],r13d
00007ffe`187b5c35 e97cfeffff      jmp     00007ffe`187b5ab6
00007ffe`187b5c3a 48894d18        mov     qword ptr [rbp+18h],rcx
00007ffe`187b5c3e 8995b0000000    mov     dword ptr [rbp+0B0h],edx
00007ffe`187b5c44 e92fffffff      jmp     00007ffe`187b5b78
00007ffe`187b5c49 e8c28da85f      call    clr!JIT_Overflow (00007ffe`7823ea10)
00007ffe`187b5c4e cc              int     3
