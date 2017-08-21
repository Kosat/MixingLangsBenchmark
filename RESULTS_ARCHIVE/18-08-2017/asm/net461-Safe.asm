Normal JIT generated code
Export_CSharp.Lev.levenshtein_safe(System.String, System.String, Int32, Int32, Int32, Int32)
Begin 00007ffe187a59104157
*** WARNING: Unable to verify checksum for levenshtein-CSharp.dll

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 25:
>>> 00007ffe`187a5910 4157            push    r15
00007ffe`187a5912 4156            push    r14
00007ffe`187a5914 4155            push    r13
00007ffe`187a5916 4154            push    r12
00007ffe`187a5918 57              push    rdi
00007ffe`187a5919 56              push    rsi
00007ffe`187a591a 55              push    rbp
00007ffe`187a591b 53              push    rbx
00007ffe`187a591c 4881ecb8000000  sub     rsp,0B8h
00007ffe`187a5923 4489842410010000 mov     dword ptr [rsp+110h],r8d
00007ffe`187a592b 44898c2418010000 mov     dword ptr [rsp+118h],r9d
00007ffe`187a5933 488bd9          mov     rbx,rcx
00007ffe`187a5936 488bfa          mov     rdi,rdx
00007ffe`187a5939 8bac2428010000  mov     ebp,dword ptr [rsp+128h]
00007ffe`187a5940 448b6308        mov     r12d,dword ptr [rbx+8]
00007ffe`187a5944 458bec          mov     r13d,r12d
00007ffe`187a5947 8b4708          mov     eax,dword ptr [rdi+8]
00007ffe`187a594a 8944245c        mov     dword ptr [rsp+5Ch],eax
00007ffe`187a594e 448bc0          mov     r8d,eax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 28:
00007ffe`187a5951 44898424ac000000 mov     dword ptr [rsp+0ACh],r8d
00007ffe`187a5959 458d4801        lea     r9d,[r8+1]
00007ffe`187a595d 44894c243c      mov     dword ptr [rsp+3Ch],r9d
00007ffe`187a5962 418bd1          mov     edx,r9d
00007ffe`187a5965 48b98256636ffe7f0000 mov rcx,offset mscorlib_ni+0x5682 (00007ffe`6f635682)
00007ffe`187a596f e88ccc5f5f      call    clr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`77da2600)
00007ffe`187a5974 4889442430      mov     qword ptr [rsp+30h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 29:
00007ffe`187a5979 8b54243c        mov     edx,dword ptr [rsp+3Ch]
00007ffe`187a597d 48b98256636ffe7f0000 mov rcx,offset mscorlib_ni+0x5682 (00007ffe`6f635682)
00007ffe`187a5987 e874cc5f5f      call    clr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`77da2600)
00007ffe`187a598c 4889442428      mov     qword ptr [rsp+28h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 30:
00007ffe`187a5991 8b54243c        mov     edx,dword ptr [rsp+3Ch]
00007ffe`187a5995 48b98256636ffe7f0000 mov rcx,offset mscorlib_ni+0x5682 (00007ffe`6f635682)
00007ffe`187a599f e85ccc5f5f      call    clr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`77da2600)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 32:
00007ffe`187a59a4 33d2            xor     edx,edx
00007ffe`187a59a6 448b8424ac000000 mov     r8d,dword ptr [rsp+0ACh]
00007ffe`187a59ae 4585c0          test    r8d,r8d
00007ffe`187a59b1 7c31            jl      00007ffe`187a59e4
00007ffe`187a59b3 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a59b8 418b4b08        mov     ecx,dword ptr [r11+8]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 33:
00007ffe`187a59bc 3bd1            cmp     edx,ecx
00007ffe`187a59be 0f833d080000    jae     00007ffe`187a6201
00007ffe`187a59c4 4c63ca          movsxd  r9,edx
00007ffe`187a59c7 448bd2          mov     r10d,edx
00007ffe`187a59ca 440faf942420010000 imul  r10d,dword ptr [rsp+120h]
00007ffe`187a59d3 4789548b10      mov     dword ptr [r11+r9*4+10h],r10d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 32:
00007ffe`187a59d8 ffc2            inc     edx
00007ffe`187a59da 413bd0          cmp     edx,r8d
00007ffe`187a59dd 7edd            jle     00007ffe`187a59bc
00007ffe`187a59df 4c895c2428      mov     qword ptr [rsp+28h],r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 35:
00007ffe`187a59e4 33c9            xor     ecx,ecx
00007ffe`187a59e6 4585ed          test    r13d,r13d
00007ffe`187a59e9 0f8e64010000    jle     00007ffe`187a5b53
00007ffe`187a59ef 4489642458      mov     dword ptr [rsp+58h],r12d
00007ffe`187a59f4 453be5          cmp     r12d,r13d
00007ffe`187a59f7 0f9dc2          setge   dl
00007ffe`187a59fa 0fb6d2          movzx   edx,dl
00007ffe`187a59fd 4489ac24b0000000 mov     dword ptr [rsp+0B0h],r13d
00007ffe`187a5a05 4d85ed          test    r13,r13
00007ffe`187a5a08 410f9dc1        setge   r9b
00007ffe`187a5a0c 450fb6c9        movzx   r9d,r9b
00007ffe`187a5a10 4123d1          and     edx,r9d
00007ffe`187a5a13 0f841e050000    je      00007ffe`187a5f37

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 39:
00007ffe`187a5a19 448d4901        lea     r9d,[rcx+1]
00007ffe`187a5a1d 44894c2440      mov     dword ptr [rsp+40h],r9d
00007ffe`187a5a22 418bd1          mov     edx,r9d
00007ffe`187a5a25 0fafd5          imul    edx,ebp
00007ffe`187a5a28 448b5008        mov     r10d,dword ptr [rax+8]
00007ffe`187a5a2c 4183fa00        cmp     r10d,0
00007ffe`187a5a30 0f86cb070000    jbe     00007ffe`187a6201
00007ffe`187a5a36 895010          mov     dword ptr [rax+10h],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 40: //for (j = 0; j < len2; j++)
00007ffe`187a5a39 33d2            xor     edx,edx
00007ffe`187a5a3b 4585c0          test    r8d,r8d
00007ffe`187a5a3e 0f8ef6000000    jle     00007ffe`187a5b3a
00007ffe`187a5a44 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5a49 4d85db          test    r11,r11
00007ffe`187a5a4c 410f95c6        setne   r14b
00007ffe`187a5a50 450fb6f6        movzx   r14d,r14b
00007ffe`187a5a54 4183e601        and     r14d,1
00007ffe`187a5a58 41f7c601000000  test    r14d,1
00007ffe`187a5a5f 0f84cb000000    je      00007ffe`187a5b30
00007ffe`187a5a65 443944245c      cmp     dword ptr [rsp+5Ch],r8d
00007ffe`187a5a6a 410f9dc7        setge   r15b
00007ffe`187a5a6e 450fb6ff        movzx   r15d,r15b
00007ffe`187a5a72 4489bc24b4000000 mov     dword ptr [rsp+0B4h],r15d
00007ffe`187a5a7a 418b7308        mov     esi,dword ptr [r11+8]
00007ffe`187a5a7e 413bf0          cmp     esi,r8d
00007ffe`187a5a81 410f9dc7        setge   r15b
00007ffe`187a5a85 450fb6ff        movzx   r15d,r15b
00007ffe`187a5a89 4423bc24b4000000 and     r15d,dword ptr [rsp+0B4h]
00007ffe`187a5a91 4489bc24b4000000 mov     dword ptr [rsp+0B4h],r15d
00007ffe`187a5a99 4d85c0          test    r8,r8
00007ffe`187a5a9c 410f9dc7        setge   r15b
00007ffe`187a5aa0 450fb6ff        movzx   r15d,r15b
00007ffe`187a5aa4 4423bc24b4000000 and     r15d,dword ptr [rsp+0B4h]
00007ffe`187a5aac 4489bc24b4000000 mov     dword ptr [rsp+0B4h],r15d
00007ffe`187a5ab4 4489542464      mov     dword ptr [rsp+64h],r10d
00007ffe`187a5ab9 453bd0          cmp     r10d,r8d
00007ffe`187a5abc 410f9dc7        setge   r15b
00007ffe`187a5ac0 450fb6ff        movzx   r15d,r15b
00007ffe`187a5ac4 4423bc24b4000000 and     r15d,dword ptr [rsp+0B4h]
00007ffe`187a5acc 89742454        mov     dword ptr [rsp+54h],esi
00007ffe`187a5ad0 0f8430020000    je      00007ffe`187a5d06
00007ffe`187a5ad6 448b542464      mov     r10d,dword ptr [rsp+64h]
00007ffe`187a5adb 4c63e9          movsxd  r13,ecx
00007ffe`187a5ade 460fb76c6b0c    movzx   r13d,word ptr [rbx+r13*2+0Ch]
00007ffe`187a5ae4 4889bc2408010000 mov     qword ptr [rsp+108h],rdi
00007ffe`187a5aec 89ac2428010000  mov     dword ptr [rsp+128h],ebp
00007ffe`187a5af3 4489542464      mov     dword ptr [rsp+64h],r10d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 43: /* substitution */
00007ffe`187a5af8 4863ea          movsxd  rbp,edx
00007ffe`187a5afb 458b7cab10      mov     r15d,dword ptr [r11+rbp*4+10h]
00007ffe`187a5b00 4c8be0          mov     r12,rax
00007ffe`187a5b03 8d7201          lea     esi,[rdx+1]
00007ffe`187a5b06 8bfe            mov     edi,esi
00007ffe`187a5b08 4c8b8c2408010000 mov     r9,qword ptr [rsp+108h]
00007ffe`187a5b10 450fb754690c    movzx   r10d,word ptr [r9+rbp*2+0Ch]
00007ffe`187a5b16 4489ac248c000000 mov     dword ptr [rsp+8Ch],r13d
00007ffe`187a5b1e 4489942488000000 mov     dword ptr [rsp+88h],r10d
00007ffe`187a5b26 453bea          cmp     r13d,r10d
00007ffe`187a5b29 7532            jne     00007ffe`187a5b5d
00007ffe`187a5b2b 4533ed          xor     r13d,r13d
00007ffe`187a5b2e eb33            jmp     00007ffe`187a5b63
00007ffe`187a5b30 4489542464      mov     dword ptr [rsp+64h],r10d
00007ffe`187a5b35 e9cc010000      jmp     00007ffe`187a5d06
00007ffe`187a5b3a 48899c2400010000 mov     qword ptr [rsp+100h],rbx
00007ffe`187a5b42 8b9c2420010000  mov     ebx,dword ptr [rsp+120h]
00007ffe`187a5b49 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5b4e e951030000      jmp     00007ffe`187a5ea4
00007ffe`187a5b53 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5b58 e93b060000      jmp     00007ffe`187a6198
00007ffe`187a5b5d 41bd01000000    mov     r13d,1
00007ffe`187a5b63 3b7c2464        cmp     edi,dword ptr [rsp+64h]
00007ffe`187a5b67 0f8394060000    jae     00007ffe`187a6201
00007ffe`187a5b6d 4863ff          movsxd  rdi,edi
00007ffe`187a5b70 440fafac2418010000 imul  r13d,dword ptr [rsp+118h]
00007ffe`187a5b79 4503fd          add     r15d,r13d
00007ffe`187a5b7c 4489bc249c000000 mov     dword ptr [rsp+9Ch],r15d
00007ffe`187a5b84 45897cbc10      mov     dword ptr [r12+rdi*4+10h],r15d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 45: /* swap */
00007ffe`187a5b89 85c9            test    ecx,ecx
00007ffe`187a5b8b 0f8ea7000000    jle     00007ffe`187a5c38
00007ffe`187a5b91 85d2            test    edx,edx
00007ffe`187a5b93 0f8e9f000000    jle     00007ffe`187a5c38
00007ffe`187a5b99 448d61ff        lea     r12d,[rcx-1]
00007ffe`187a5b9d 443b642458      cmp     r12d,dword ptr [rsp+58h]
00007ffe`187a5ba2 0f8359060000    jae     00007ffe`187a6201
00007ffe`187a5ba8 4d63e4          movsxd  r12,r12d
00007ffe`187a5bab 460fb764630c    movzx   r12d,word ptr [rbx+r12*2+0Ch]
00007ffe`187a5bb1 448bbc2488000000 mov     r15d,dword ptr [rsp+88h]
00007ffe`187a5bb9 453be7          cmp     r12d,r15d
00007ffe`187a5bbc 757a            jne     00007ffe`187a5c38
00007ffe`187a5bbe ffca            dec     edx
00007ffe`187a5bc0 448b7c245c      mov     r15d,dword ptr [rsp+5Ch]
00007ffe`187a5bc5 413bd7          cmp     edx,r15d
00007ffe`187a5bc8 0f8333060000    jae     00007ffe`187a6201
00007ffe`187a5bce 89542450        mov     dword ptr [rsp+50h],edx
00007ffe`187a5bd2 4c63e2          movsxd  r12,edx
00007ffe`187a5bd5 4c89642478      mov     qword ptr [rsp+78h],r12
00007ffe`187a5bda 470fb764610c    movzx   r12d,word ptr [r9+r12*2+0Ch]
00007ffe`187a5be0 8b94248c000000  mov     edx,dword ptr [rsp+8Ch]
00007ffe`187a5be7 413bd4          cmp     edx,r12d
00007ffe`187a5bea 0f850c010000    jne     00007ffe`187a5cfc
00007ffe`187a5bf0 4c8b642430      mov     r12,qword ptr [rsp+30h]
00007ffe`187a5bf5 8b542450        mov     edx,dword ptr [rsp+50h]
00007ffe`187a5bf9 413b542408      cmp     edx,dword ptr [r12+8]
00007ffe`187a5bfe 0f83fd050000    jae     00007ffe`187a6201
00007ffe`187a5c04 488b542478      mov     rdx,qword ptr [rsp+78h]
00007ffe`187a5c09 448bac2410010000 mov     r13d,dword ptr [rsp+110h]
00007ffe`187a5c11 45036c9410      add     r13d,dword ptr [r12+rdx*4+10h]
00007ffe`187a5c16 418bd5          mov     edx,r13d
00007ffe`187a5c19 448bac249c000000 mov     r13d,dword ptr [rsp+9Ch]
00007ffe`187a5c21 443bea          cmp     r13d,edx
00007ffe`187a5c24 0f8ec3000000    jle     00007ffe`187a5ced

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 48:
00007ffe`187a5c2a 8954b810        mov     dword ptr [rax+rdi*4+10h],edx
00007ffe`187a5c2e 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffe`187a5c33 44897c245c      mov     dword ptr [rsp+5Ch],r15d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 50:
00007ffe`187a5c38 8b54b810        mov     edx,dword ptr [rax+rdi*4+10h]
00007ffe`187a5c3c 899424b4000000  mov     dword ptr [rsp+0B4h],edx
00007ffe`187a5c43 448b6c2454      mov     r13d,dword ptr [rsp+54h]
00007ffe`187a5c48 413bf5          cmp     esi,r13d
00007ffe`187a5c4b 0f83b0050000    jae     00007ffe`187a6201
00007ffe`187a5c51 8b942428010000  mov     edx,dword ptr [rsp+128h]
00007ffe`187a5c58 448bd2          mov     r10d,edx
00007ffe`187a5c5b 450354bb10      add     r10d,dword ptr [r11+rdi*4+10h]
00007ffe`187a5c60 448bb424b4000000 mov     r14d,dword ptr [rsp+0B4h]
00007ffe`187a5c68 453bf2          cmp     r14d,r10d
00007ffe`187a5c6b 7e05            jle     00007ffe`187a5c72

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 51:
00007ffe`187a5c6d 448954b810      mov     dword ptr [rax+rdi*4+10h],r10d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 53:
00007ffe`187a5c72 448b54b810      mov     r10d,dword ptr [rax+rdi*4+10h]
00007ffe`187a5c77 44899424b4000000 mov     dword ptr [rsp+0B4h],r10d
00007ffe`187a5c7f 448bb42420010000 mov     r14d,dword ptr [rsp+120h]
00007ffe`187a5c87 458bd6          mov     r10d,r14d
00007ffe`187a5c8a 440354a810      add     r10d,dword ptr [rax+rbp*4+10h]
00007ffe`187a5c8f 8bac24b4000000  mov     ebp,dword ptr [rsp+0B4h]
00007ffe`187a5c96 413bea          cmp     ebp,r10d
00007ffe`187a5c99 7e05            jle     00007ffe`187a5ca0

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 54:
00007ffe`187a5c9b 448954b810      mov     dword ptr [rax+rdi*4+10h],r10d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 40:
00007ffe`187a5ca0 448bd6          mov     r10d,esi
00007ffe`187a5ca3 453bd0          cmp     r10d,r8d
00007ffe`187a5ca6 44896c2454      mov     dword ptr [rsp+54h],r13d
00007ffe`187a5cab 4489b42420010000 mov     dword ptr [rsp+120h],r14d
00007ffe`187a5cb3 7c19            jl      00007ffe`187a5cce
00007ffe`187a5cb5 8bea            mov     ebp,edx
00007ffe`187a5cb7 498bf9          mov     rdi,r9
00007ffe`187a5cba 48899c2400010000 mov     qword ptr [rsp+100h],rbx
00007ffe`187a5cc2 8b9c2420010000  mov     ebx,dword ptr [rsp+120h]
00007ffe`187a5cc9 e9d6010000      jmp     00007ffe`187a5ea4
00007ffe`187a5cce 4c898c2408010000 mov     qword ptr [rsp+108h],r9
00007ffe`187a5cd6 89942428010000  mov     dword ptr [rsp+128h],edx
00007ffe`187a5cdd 418bd2          mov     edx,r10d
00007ffe`187a5ce0 448bac248c000000 mov     r13d,dword ptr [rsp+8Ch]
00007ffe`187a5ce8 e90bfeffff      jmp     00007ffe`187a5af8
00007ffe`187a5ced 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffe`187a5cf2 44897c245c      mov     dword ptr [rsp+5Ch],r15d
00007ffe`187a5cf7 e93cffffff      jmp     00007ffe`187a5c38
00007ffe`187a5cfc 44897c245c      mov     dword ptr [rsp+5Ch],r15d
00007ffe`187a5d01 e932ffffff      jmp     00007ffe`187a5c38
00007ffe`187a5d06 458b7b08        mov     r15d,dword ptr [r11+8]
00007ffe`187a5d0a 413bd7          cmp     edx,r15d
00007ffe`187a5d0d 0f83ee040000    jae     00007ffe`187a6201
00007ffe`187a5d13 4863f2          movsxd  rsi,edx
00007ffe`187a5d16 458b6cb310      mov     r13d,dword ptr [r11+rsi*4+10h]
00007ffe`187a5d1b 4c8bc8          mov     r9,rax
00007ffe`187a5d1e 448d6201        lea     r12d,[rdx+1]
00007ffe`187a5d22 458bd4          mov     r10d,r12d
00007ffe`187a5d25 4c63f1          movsxd  r14,ecx
00007ffe`187a5d28 48899c2400010000 mov     qword ptr [rsp+100h],rbx
00007ffe`187a5d30 460fb774730c    movzx   r14d,word ptr [rbx+r14*2+0Ch]
00007ffe`187a5d36 4489b42484000000 mov     dword ptr [rsp+84h],r14d
00007ffe`187a5d3e 3b54245c        cmp     edx,dword ptr [rsp+5Ch]
00007ffe`187a5d42 0f83b9040000    jae     00007ffe`187a6201
00007ffe`187a5d48 440fb774770c    movzx   r14d,word ptr [rdi+rsi*2+0Ch]
00007ffe`187a5d4e 8b9c2484000000  mov     ebx,dword ptr [rsp+84h]
00007ffe`187a5d55 4489b424a8000000 mov     dword ptr [rsp+0A8h],r14d
00007ffe`187a5d5d 413bde          cmp     ebx,r14d
00007ffe`187a5d60 7504            jne     00007ffe`187a5d66
00007ffe`187a5d62 33db            xor     ebx,ebx
00007ffe`187a5d64 eb05            jmp     00007ffe`187a5d6b
00007ffe`187a5d66 bb01000000      mov     ebx,1
00007ffe`187a5d6b 443b542464      cmp     r10d,dword ptr [rsp+64h]
00007ffe`187a5d70 0f838b040000    jae     00007ffe`187a6201
00007ffe`187a5d76 4d63d2          movsxd  r10,r10d
00007ffe`187a5d79 0faf9c2418010000 imul    ebx,dword ptr [rsp+118h]
00007ffe`187a5d81 4403eb          add     r13d,ebx
00007ffe`187a5d84 4489ac2498000000 mov     dword ptr [rsp+98h],r13d
00007ffe`187a5d8c 47896c9110      mov     dword ptr [r9+r10*4+10h],r13d
00007ffe`187a5d91 85c9            test    ecx,ecx
00007ffe`187a5d93 0f8eb4000000    jle     00007ffe`187a5e4d
00007ffe`187a5d99 85d2            test    edx,edx
00007ffe`187a5d9b 0f8eac000000    jle     00007ffe`187a5e4d
00007ffe`187a5da1 8d59ff          lea     ebx,[rcx-1]
00007ffe`187a5da4 3b5c2458        cmp     ebx,dword ptr [rsp+58h]
00007ffe`187a5da8 0f8353040000    jae     00007ffe`187a6201
00007ffe`187a5dae 4863db          movsxd  rbx,ebx
00007ffe`187a5db1 4c8bac2400010000 mov     r13,qword ptr [rsp+100h]
00007ffe`187a5db9 410fb75c5d0c    movzx   ebx,word ptr [r13+rbx*2+0Ch]
00007ffe`187a5dbf 448b8c24a8000000 mov     r9d,dword ptr [rsp+0A8h]
00007ffe`187a5dc7 413bd9          cmp     ebx,r9d
00007ffe`187a5dca 0f855a010000    jne     00007ffe`187a5f2a
00007ffe`187a5dd0 448d4aff        lea     r9d,[rdx-1]
00007ffe`187a5dd4 443b4c245c      cmp     r9d,dword ptr [rsp+5Ch]
00007ffe`187a5dd9 0f8322040000    jae     00007ffe`187a6201
00007ffe`187a5ddf 44894c244c      mov     dword ptr [rsp+4Ch],r9d
00007ffe`187a5de4 4d63c9          movsxd  r9,r9d
00007ffe`187a5de7 4c894c2470      mov     qword ptr [rsp+70h],r9
00007ffe`187a5dec 460fb74c4f0c    movzx   r9d,word ptr [rdi+r9*2+0Ch]
00007ffe`187a5df2 448bb42484000000 mov     r14d,dword ptr [rsp+84h]
00007ffe`187a5dfa 453bf1          cmp     r14d,r9d
00007ffe`187a5dfd 0f851a010000    jne     00007ffe`187a5f1d
00007ffe`187a5e03 4c8b742430      mov     r14,qword ptr [rsp+30h]
00007ffe`187a5e08 448b4c244c      mov     r9d,dword ptr [rsp+4Ch]
00007ffe`187a5e0d 453b4e08        cmp     r9d,dword ptr [r14+8]
00007ffe`187a5e11 0f83ea030000    jae     00007ffe`187a6201
00007ffe`187a5e17 4c8b4c2470      mov     r9,qword ptr [rsp+70h]
00007ffe`187a5e1c 8b9c2410010000  mov     ebx,dword ptr [rsp+110h]
00007ffe`187a5e23 43035c8e10      add     ebx,dword ptr [r14+r9*4+10h]
00007ffe`187a5e28 448bcb          mov     r9d,ebx
00007ffe`187a5e2b 8b9c2498000000  mov     ebx,dword ptr [rsp+98h]
00007ffe`187a5e32 413bd9          cmp     ebx,r9d
00007ffe`187a5e35 0f8ed0000000    jle     00007ffe`187a5f0b
00007ffe`187a5e3b 46894c9010      mov     dword ptr [rax+r10*4+10h],r9d
00007ffe`187a5e40 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffe`187a5e45 4c89ac2400010000 mov     qword ptr [rsp+100h],r13
00007ffe`187a5e4d 468b4c9010      mov     r9d,dword ptr [rax+r10*4+10h]
00007ffe`187a5e52 453be7          cmp     r12d,r15d
00007ffe`187a5e55 0f83a6030000    jae     00007ffe`187a6201
00007ffe`187a5e5b 448bfd          mov     r15d,ebp
00007ffe`187a5e5e 47037c9310      add     r15d,dword ptr [r11+r10*4+10h]
00007ffe`187a5e63 453bcf          cmp     r9d,r15d
00007ffe`187a5e66 7e05            jle     00007ffe`187a5e6d
00007ffe`187a5e68 46897c9010      mov     dword ptr [rax+r10*4+10h],r15d
00007ffe`187a5e6d 468b4c9010      mov     r9d,dword ptr [rax+r10*4+10h]
00007ffe`187a5e72 448b742464      mov     r14d,dword ptr [rsp+64h]
00007ffe`187a5e77 413bd6          cmp     edx,r14d
00007ffe`187a5e7a 0f8381030000    jae     00007ffe`187a6201
00007ffe`187a5e80 8b9c2420010000  mov     ebx,dword ptr [rsp+120h]
00007ffe`187a5e87 8bd3            mov     edx,ebx
00007ffe`187a5e89 0354b010        add     edx,dword ptr [rax+rsi*4+10h]
00007ffe`187a5e8d 443bca          cmp     r9d,edx
00007ffe`187a5e90 7e05            jle     00007ffe`187a5e97
00007ffe`187a5e92 4289549010      mov     dword ptr [rax+r10*4+10h],edx
00007ffe`187a5e97 418bd4          mov     edx,r12d
00007ffe`187a5e9a 413bd0          cmp     edx,r8d
00007ffe`187a5e9d 4489742464      mov     dword ptr [rsp+64h],r14d
00007ffe`187a5ea2 7c53            jl      00007ffe`187a5ef7

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 57:
00007ffe`187a5ea4 4c8b742430      mov     r14,qword ptr [rsp+30h]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 58:
00007ffe`187a5ea9 498bf3          mov     rsi,r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 59:
00007ffe`187a5eac 4c8bd8          mov     r11,rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 60:
00007ffe`187a5eaf 498bc6          mov     rax,r14

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 35:
00007ffe`187a5eb2 448b4c2440      mov     r9d,dword ptr [rsp+40h]
00007ffe`187a5eb7 418bc9          mov     ecx,r9d
00007ffe`187a5eba 448ba424b0000000 mov     r12d,dword ptr [rsp+0B0h]
00007ffe`187a5ec2 413bcc          cmp     ecx,r12d
00007ffe`187a5ec5 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffe`187a5eca 4889742430      mov     qword ptr [rsp+30h],rsi
00007ffe`187a5ecf 899c2420010000  mov     dword ptr [rsp+120h],ebx
00007ffe`187a5ed6 4489a424b0000000 mov     dword ptr [rsp+0B0h],r12d
00007ffe`187a5ede 7c0a            jl      00007ffe`187a5eea
00007ffe`187a5ee0 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5ee5 e9ae020000      jmp     00007ffe`187a6198
00007ffe`187a5eea 488b9c2400010000 mov     rbx,qword ptr [rsp+100h]
00007ffe`187a5ef2 e922fbffff      jmp     00007ffe`187a5a19
00007ffe`187a5ef7 899c2420010000  mov     dword ptr [rsp+120h],ebx
00007ffe`187a5efe 488b9c2400010000 mov     rbx,qword ptr [rsp+100h]
00007ffe`187a5f06 e9fbfdffff      jmp     00007ffe`187a5d06
00007ffe`187a5f0b 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffe`187a5f10 4c89ac2400010000 mov     qword ptr [rsp+100h],r13
00007ffe`187a5f18 e930ffffff      jmp     00007ffe`187a5e4d
00007ffe`187a5f1d 4c89ac2400010000 mov     qword ptr [rsp+100h],r13
00007ffe`187a5f25 e923ffffff      jmp     00007ffe`187a5e4d
00007ffe`187a5f2a 4c89ac2400010000 mov     qword ptr [rsp+100h],r13
00007ffe`187a5f32 e916ffffff      jmp     00007ffe`187a5e4d
00007ffe`187a5f37 8d5101          lea     edx,[rcx+1]
00007ffe`187a5f3a 0fafd5          imul    edx,ebp
00007ffe`187a5f3d 448b4808        mov     r9d,dword ptr [rax+8]
00007ffe`187a5f41 44894c2460      mov     dword ptr [rsp+60h],r9d
00007ffe`187a5f46 4183f900        cmp     r9d,0
00007ffe`187a5f4a 0f86b1020000    jbe     00007ffe`187a6201
00007ffe`187a5f50 895010          mov     dword ptr [rax+10h],edx
00007ffe`187a5f53 33d2            xor     edx,edx
00007ffe`187a5f55 4585c0          test    r8d,r8d
00007ffe`187a5f58 0f8e89000000    jle     00007ffe`187a5fe7
00007ffe`187a5f5e 4889bc2408010000 mov     qword ptr [rsp+108h],rdi
00007ffe`187a5f66 48899c2400010000 mov     qword ptr [rsp+100h],rbx
00007ffe`187a5f6e 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5f73 458b5308        mov     r10d,dword ptr [r11+8]
00007ffe`187a5f77 4489542444      mov     dword ptr [rsp+44h],r10d
00007ffe`187a5f7c 413bd2          cmp     edx,r10d
00007ffe`187a5f7f 0f837c020000    jae     00007ffe`187a6201
00007ffe`187a5f85 4c63ea          movsxd  r13,edx
00007ffe`187a5f88 478b74ab10      mov     r14d,dword ptr [r11+r13*4+10h]
00007ffe`187a5f8d 4c8bf8          mov     r15,rax
00007ffe`187a5f90 8d7201          lea     esi,[rdx+1]
00007ffe`187a5f93 8bfe            mov     edi,esi
00007ffe`187a5f95 3b4c2458        cmp     ecx,dword ptr [rsp+58h]
00007ffe`187a5f99 0f8362020000    jae     00007ffe`187a6201
00007ffe`187a5f9f 4863d9          movsxd  rbx,ecx
00007ffe`187a5fa2 4c8ba42400010000 mov     r12,qword ptr [rsp+100h]
00007ffe`187a5faa 410fb75c5c0c    movzx   ebx,word ptr [r12+rbx*2+0Ch]
00007ffe`187a5fb0 899c24a0000000  mov     dword ptr [rsp+0A0h],ebx
00007ffe`187a5fb7 3b54245c        cmp     edx,dword ptr [rsp+5Ch]
00007ffe`187a5fbb 0f8340020000    jae     00007ffe`187a6201
00007ffe`187a5fc1 4c8b8c2408010000 mov     r9,qword ptr [rsp+108h]
00007ffe`187a5fc9 470fb754690c    movzx   r10d,word ptr [r9+r13*2+0Ch]
00007ffe`187a5fcf 8b9c24a0000000  mov     ebx,dword ptr [rsp+0A0h]
00007ffe`187a5fd6 44899424a4000000 mov     dword ptr [rsp+0A4h],r10d
00007ffe`187a5fde 413bda          cmp     ebx,r10d
00007ffe`187a5fe1 751b            jne     00007ffe`187a5ffe
00007ffe`187a5fe3 33db            xor     ebx,ebx
00007ffe`187a5fe5 eb1c            jmp     00007ffe`187a6003
00007ffe`187a5fe7 4c8bcf          mov     r9,rdi
00007ffe`187a5fea 4c8be3          mov     r12,rbx
00007ffe`187a5fed 8b9c2420010000  mov     ebx,dword ptr [rsp+120h]
00007ffe`187a5ff4 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffe`187a5ff9 e966010000      jmp     00007ffe`187a6164
00007ffe`187a5ffe bb01000000      mov     ebx,1
00007ffe`187a6003 3b7c2460        cmp     edi,dword ptr [rsp+60h]
00007ffe`187a6007 0f83f4010000    jae     00007ffe`187a6201
00007ffe`187a600d 4863ff          movsxd  rdi,edi
00007ffe`187a6010 0faf9c2418010000 imul    ebx,dword ptr [rsp+118h]
00007ffe`187a6018 4403f3          add     r14d,ebx
00007ffe`187a601b 4489b42494000000 mov     dword ptr [rsp+94h],r14d
00007ffe`187a6023 458974bf10      mov     dword ptr [r15+rdi*4+10h],r14d
00007ffe`187a6028 85c9            test    ecx,ecx
00007ffe`187a602a 0f8ea6000000    jle     00007ffe`187a60d6
00007ffe`187a6030 85d2            test    edx,edx
00007ffe`187a6032 0f8e9e000000    jle     00007ffe`187a60d6
00007ffe`187a6038 448d79ff        lea     r15d,[rcx-1]
00007ffe`187a603c 443b7c2458      cmp     r15d,dword ptr [rsp+58h]
00007ffe`187a6041 0f83ba010000    jae     00007ffe`187a6201
00007ffe`187a6047 4d63ff          movsxd  r15,r15d
00007ffe`187a604a 470fb77c7c0c    movzx   r15d,word ptr [r12+r15*2+0Ch]
00007ffe`187a6050 448bb424a4000000 mov     r14d,dword ptr [rsp+0A4h]
00007ffe`187a6058 453bfe          cmp     r15d,r14d
00007ffe`187a605b 7579            jne     00007ffe`187a60d6
00007ffe`187a605d 448d72ff        lea     r14d,[rdx-1]
00007ffe`187a6061 448b7c245c      mov     r15d,dword ptr [rsp+5Ch]
00007ffe`187a6066 453bf7          cmp     r14d,r15d
00007ffe`187a6069 0f8392010000    jae     00007ffe`187a6201
00007ffe`187a606f 4489742448      mov     dword ptr [rsp+48h],r14d
00007ffe`187a6074 4d63f6          movsxd  r14,r14d
00007ffe`187a6077 4c89742468      mov     qword ptr [rsp+68h],r14
00007ffe`187a607c 470fb774710c    movzx   r14d,word ptr [r9+r14*2+0Ch]
00007ffe`187a6082 8b9c24a0000000  mov     ebx,dword ptr [rsp+0A0h]
00007ffe`187a6089 443bf3          cmp     r14d,ebx
00007ffe`187a608c 0f8565010000    jne     00007ffe`187a61f7
00007ffe`187a6092 4c8b742430      mov     r14,qword ptr [rsp+30h]
00007ffe`187a6097 8b5c2448        mov     ebx,dword ptr [rsp+48h]
00007ffe`187a609b 413b5e08        cmp     ebx,dword ptr [r14+8]
00007ffe`187a609f 0f835c010000    jae     00007ffe`187a6201
00007ffe`187a60a5 488b5c2468      mov     rbx,qword ptr [rsp+68h]
00007ffe`187a60aa 448b942410010000 mov     r10d,dword ptr [rsp+110h]
00007ffe`187a60b2 4503549e10      add     r10d,dword ptr [r14+rbx*4+10h]
00007ffe`187a60b7 8b9c2494000000  mov     ebx,dword ptr [rsp+94h]
00007ffe`187a60be 413bda          cmp     ebx,r10d
00007ffe`187a60c1 0f8e21010000    jle     00007ffe`187a61e8
00007ffe`187a60c7 448954b810      mov     dword ptr [rax+rdi*4+10h],r10d
00007ffe`187a60cc 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffe`187a60d1 44897c245c      mov     dword ptr [rsp+5Ch],r15d
00007ffe`187a60d6 8b5cb810        mov     ebx,dword ptr [rax+rdi*4+10h]
00007ffe`187a60da 899c24b4000000  mov     dword ptr [rsp+0B4h],ebx
00007ffe`187a60e1 8b5c2444        mov     ebx,dword ptr [rsp+44h]
00007ffe`187a60e5 3bf3            cmp     esi,ebx
00007ffe`187a60e7 0f8314010000    jae     00007ffe`187a6201
00007ffe`187a60ed 458b54bb10      mov     r10d,dword ptr [r11+rdi*4+10h]
00007ffe`187a60f2 4489942490000000 mov     dword ptr [rsp+90h],r10d
00007ffe`187a60fa 4403d5          add     r10d,ebp
00007ffe`187a60fd 44399424b4000000 cmp     dword ptr [rsp+0B4h],r10d
00007ffe`187a6105 7e18            jle     00007ffe`187a611f
00007ffe`187a6107 3bf3            cmp     esi,ebx
00007ffe`187a6109 0f83f2000000    jae     00007ffe`187a6201
00007ffe`187a610f 448bd5          mov     r10d,ebp
00007ffe`187a6112 4403942490000000 add     r10d,dword ptr [rsp+90h]
00007ffe`187a611a 448954b810      mov     dword ptr [rax+rdi*4+10h],r10d
00007ffe`187a611f 3b542460        cmp     edx,dword ptr [rsp+60h]
00007ffe`187a6123 0f83d8000000    jae     00007ffe`187a6201
00007ffe`187a6129 8b9c2420010000  mov     ebx,dword ptr [rsp+120h]
00007ffe`187a6130 448bd3          mov     r10d,ebx
00007ffe`187a6133 460354a810      add     r10d,dword ptr [rax+r13*4+10h]
00007ffe`187a6138 443954b810      cmp     dword ptr [rax+rdi*4+10h],r10d
00007ffe`187a613d 7e1e            jle     00007ffe`187a615d
00007ffe`187a613f 448b542460      mov     r10d,dword ptr [rsp+60h]
00007ffe`187a6144 413bd2          cmp     edx,r10d
00007ffe`187a6147 0f83b4000000    jae     00007ffe`187a6201
00007ffe`187a614d 8bd3            mov     edx,ebx
00007ffe`187a614f 420354a810      add     edx,dword ptr [rax+r13*4+10h]
00007ffe`187a6154 8954b810        mov     dword ptr [rax+rdi*4+10h],edx
00007ffe`187a6158 4489542460      mov     dword ptr [rsp+60h],r10d
00007ffe`187a615d 8bd6            mov     edx,esi
00007ffe`187a615f 413bd0          cmp     edx,r8d
00007ffe`187a6162 7c63            jl      00007ffe`187a61c7
00007ffe`187a6164 4c8b742430      mov     r14,qword ptr [rsp+30h]
00007ffe`187a6169 498bf3          mov     rsi,r11
00007ffe`187a616c 4c8bd8          mov     r11,rax
00007ffe`187a616f 498bc6          mov     rax,r14
00007ffe`187a6172 ffc1            inc     ecx
00007ffe`187a6174 448bac24b0000000 mov     r13d,dword ptr [rsp+0B0h]
00007ffe`187a617c 413bcd          cmp     ecx,r13d
00007ffe`187a617f 4889742430      mov     qword ptr [rsp+30h],rsi
00007ffe`187a6184 899c2420010000  mov     dword ptr [rsp+120h],ebx
00007ffe`187a618b 4489ac24b0000000 mov     dword ptr [rsp+0B0h],r13d
00007ffe`187a6193 498bf9          mov     rdi,r9
00007ffe`187a6196 7c22            jl      00007ffe`187a61ba

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 63:
00007ffe`187a6198 453b4308        cmp     r8d,dword ptr [r11+8]
00007ffe`187a619c 7363            jae     00007ffe`187a6201
00007ffe`187a619e 4963c0          movsxd  rax,r8d
00007ffe`187a61a1 418b448310      mov     eax,dword ptr [r11+rax*4+10h]
00007ffe`187a61a6 4881c4b8000000  add     rsp,0B8h
00007ffe`187a61ad 5b              pop     rbx
00007ffe`187a61ae 5d              pop     rbp
00007ffe`187a61af 5e              pop     rsi
00007ffe`187a61b0 5f              pop     rdi
00007ffe`187a61b1 415c            pop     r12
00007ffe`187a61b3 415d            pop     r13
00007ffe`187a61b5 415e            pop     r14
00007ffe`187a61b7 415f            pop     r15
00007ffe`187a61b9 c3              ret

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 25:
00007ffe`187a61ba 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffe`187a61bf 498bdc          mov     rbx,r12
00007ffe`187a61c2 e970fdffff      jmp     00007ffe`187a5f37
00007ffe`187a61c7 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffe`187a61cc 4c898c2408010000 mov     qword ptr [rsp+108h],r9
00007ffe`187a61d4 4c89a42400010000 mov     qword ptr [rsp+100h],r12
00007ffe`187a61dc 899c2420010000  mov     dword ptr [rsp+120h],ebx
00007ffe`187a61e3 e986fdffff      jmp     00007ffe`187a5f6e
00007ffe`187a61e8 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffe`187a61ed 44897c245c      mov     dword ptr [rsp+5Ch],r15d
00007ffe`187a61f2 e9dffeffff      jmp     00007ffe`187a60d6
00007ffe`187a61f7 44897c245c      mov     dword ptr [rsp+5Ch],r15d
00007ffe`187a61fc e9d5feffff      jmp     00007ffe`187a60d6
00007ffe`187a6201 e80a8aa95f      call    clr!JIT_RngChkFail (00007ffe`7823ec10)
00007ffe`187a6206 cc              int     3
