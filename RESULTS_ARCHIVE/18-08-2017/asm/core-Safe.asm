Normal JIT generated code
Export_CSharp.Lev.levenshtein_safe(System.String, System.String, Int32, Int32, Int32, Int32)
Begin 00007ffdeb1ecec0, size 9a2

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 25:
>>> 00007ffd`eb1ecec0 4157            push    r15
00007ffd`eb1ecec2 4156            push    r14
00007ffd`eb1ecec4 4155            push    r13
00007ffd`eb1ecec6 4154            push    r12
00007ffd`eb1ecec8 57              push    rdi
00007ffd`eb1ecec9 56              push    rsi
00007ffd`eb1ececa 55              push    rbp
00007ffd`eb1ececb 53              push    rbx
00007ffd`eb1ececc 4881ecc8000000  sub     rsp,0C8h
00007ffd`eb1eced3 4489842420010000 mov     dword ptr [rsp+120h],r8d
00007ffd`eb1ecedb 44898c2428010000 mov     dword ptr [rsp+128h],r9d
00007ffd`eb1ecee3 488be9          mov     rbp,rcx
00007ffd`eb1ecee6 488bfa          mov     rdi,rdx
00007ffd`eb1ecee9 8bb42438010000  mov     esi,dword ptr [rsp+138h]
00007ffd`eb1ecef0 448b6508        mov     r12d,dword ptr [rbp+8]
00007ffd`eb1ecef4 458bec          mov     r13d,r12d
00007ffd`eb1ecef7 8b4708          mov     eax,dword ptr [rdi+8]
00007ffd`eb1ecefa 89442470        mov     dword ptr [rsp+70h],eax
00007ffd`eb1ecefe 448bc0          mov     r8d,eax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 28:
00007ffd`eb1ecf01 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ecf09 458d4801        lea     r9d,[r8+1]
00007ffd`eb1ecf0d 44894c2450      mov     dword ptr [rsp+50h],r9d
00007ffd`eb1ecf12 418bd1          mov     edx,r9d
00007ffd`eb1ecf15 48b95a26124afe7f0000 mov rcx,offset System_Private_CoreLib+0xe265a (00007ffe`4a12265a)
00007ffd`eb1ecf1f e81c6cad5f      call    coreclr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`4acc3b40)
00007ffd`eb1ecf24 4889442430      mov     qword ptr [rsp+30h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 29:
00007ffd`eb1ecf29 8b542450        mov     edx,dword ptr [rsp+50h]
00007ffd`eb1ecf2d 48b95a26124afe7f0000 mov rcx,offset System_Private_CoreLib+0xe265a (00007ffe`4a12265a)
00007ffd`eb1ecf37 e8046cad5f      call    coreclr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`4acc3b40)
00007ffd`eb1ecf3c 4889442428      mov     qword ptr [rsp+28h],rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 30:
00007ffd`eb1ecf41 8b542450        mov     edx,dword ptr [rsp+50h]
00007ffd`eb1ecf45 48b95a26124afe7f0000 mov rcx,offset System_Private_CoreLib+0xe265a (00007ffe`4a12265a)
00007ffd`eb1ecf4f e8ec6bad5f      call    coreclr!JIT_NewArr1VC_MP_InlineGetThread (00007ffe`4acc3b40)

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 32:
00007ffd`eb1ecf54 33d2            xor     edx,edx
00007ffd`eb1ecf56 448b8424b8000000 mov     r8d,dword ptr [rsp+0B8h]
00007ffd`eb1ecf5e 4585c0          test    r8d,r8d
00007ffd`eb1ecf61 7c4a            jl      00007ffd`eb1ecfad
00007ffd`eb1ecf63 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ecf68 418b4b08        mov     ecx,dword ptr [r11+8]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 33:
00007ffd`eb1ecf6c 3bd1            cmp     edx,ecx
00007ffd`eb1ecf6e 0f83e8080000    jae     00007ffd`eb1ed85c
00007ffd`eb1ecf74 4c63ca          movsxd  r9,edx
00007ffd`eb1ecf77 8b9c2430010000  mov     ebx,dword ptr [rsp+130h]
00007ffd`eb1ecf7e 448bd2          mov     r10d,edx
00007ffd`eb1ecf81 440fafd3        imul    r10d,ebx
00007ffd`eb1ecf85 4789548b10      mov     dword ptr [r11+r9*4+10h],r10d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 32:
00007ffd`eb1ecf8a ffc2            inc     edx
00007ffd`eb1ecf8c 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ecf94 413bd0          cmp     edx,r8d
00007ffd`eb1ecf97 899c2430010000  mov     dword ptr [rsp+130h],ebx
00007ffd`eb1ecf9e 448b8424b8000000 mov     r8d,dword ptr [rsp+0B8h]
00007ffd`eb1ecfa6 7ec4            jle     00007ffd`eb1ecf6c
00007ffd`eb1ecfa8 4c895c2428      mov     qword ptr [rsp+28h],r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 35:
00007ffd`eb1ecfad 33c9            xor     ecx,ecx
00007ffd`eb1ecfaf 4585ed          test    r13d,r13d
00007ffd`eb1ecfb2 0f8e7f010000    jle     00007ffd`eb1ed137
00007ffd`eb1ecfb8 448964246c      mov     dword ptr [rsp+6Ch],r12d
00007ffd`eb1ecfbd 453be5          cmp     r12d,r13d
00007ffd`eb1ecfc0 0f9dc2          setge   dl
00007ffd`eb1ecfc3 0fb6d2          movzx   edx,dl
00007ffd`eb1ecfc6 4489ac24bc000000 mov     dword ptr [rsp+0BCh],r13d
00007ffd`eb1ecfce 4585ed          test    r13d,r13d
00007ffd`eb1ecfd1 410f9dc1        setge   r9b
00007ffd`eb1ecfd5 450fb6c9        movzx   r9d,r9b
00007ffd`eb1ecfd9 4185d1          test    r9d,edx
00007ffd`eb1ecfdc 0f8488050000    je      00007ffd`eb1ed56a

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 39:
00007ffd`eb1ecfe2 448d4901        lea     r9d,[rcx+1]
00007ffd`eb1ecfe6 44894c2454      mov     dword ptr [rsp+54h],r9d
00007ffd`eb1ecfeb 418bd1          mov     edx,r9d
00007ffd`eb1ecfee 0fafd6          imul    edx,esi
00007ffd`eb1ecff1 448b5008        mov     r10d,dword ptr [rax+8]
00007ffd`eb1ecff5 4183fa00        cmp     r10d,0
00007ffd`eb1ecff9 0f865d080000    jbe     00007ffd`eb1ed85c
00007ffd`eb1ecfff 895010          mov     dword ptr [rax+10h],edx

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 40:
00007ffd`eb1ed002 33d2            xor     edx,edx
00007ffd`eb1ed004 4585c0          test    r8d,r8d
00007ffd`eb1ed007 0f8e11010000    jle     00007ffd`eb1ed11e
00007ffd`eb1ed00d 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed012 4d85db          test    r11,r11
00007ffd`eb1ed015 0f95c3          setne   bl
00007ffd`eb1ed018 0fb6db          movzx   ebx,bl
00007ffd`eb1ed01b 83e301          and     ebx,1
00007ffd`eb1ed01e f7c301000000    test    ebx,1
00007ffd`eb1ed024 0f84e7000000    je      00007ffd`eb1ed111
00007ffd`eb1ed02a 8b5c2470        mov     ebx,dword ptr [rsp+70h]
00007ffd`eb1ed02e 413bd8          cmp     ebx,r8d
00007ffd`eb1ed031 410f9dc7        setge   r15b
00007ffd`eb1ed035 450fb6ff        movzx   r15d,r15b
00007ffd`eb1ed039 4489bc24c4000000 mov     dword ptr [rsp+0C4h],r15d
00007ffd`eb1ed041 458b7308        mov     r14d,dword ptr [r11+8]
00007ffd`eb1ed045 453bf0          cmp     r14d,r8d
00007ffd`eb1ed048 410f9dc7        setge   r15b
00007ffd`eb1ed04c 450fb6ff        movzx   r15d,r15b
00007ffd`eb1ed050 4489bc24c0000000 mov     dword ptr [rsp+0C0h],r15d
00007ffd`eb1ed058 4585c0          test    r8d,r8d
00007ffd`eb1ed05b 410f9dc7        setge   r15b
00007ffd`eb1ed05f 450fb6ff        movzx   r15d,r15b
00007ffd`eb1ed063 4423bc24c0000000 and     r15d,dword ptr [rsp+0C0h]
00007ffd`eb1ed06b 4423bc24c4000000 and     r15d,dword ptr [rsp+0C4h]
00007ffd`eb1ed073 4489bc24c4000000 mov     dword ptr [rsp+0C4h],r15d
00007ffd`eb1ed07b 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ed083 453bd0          cmp     r10d,r8d
00007ffd`eb1ed086 410f9dc7        setge   r15b
00007ffd`eb1ed08a 450fb6ff        movzx   r15d,r15b
00007ffd`eb1ed08e 4485bc24c4000000 test    dword ptr [rsp+0C4h],r15d
00007ffd`eb1ed096 4489742468      mov     dword ptr [rsp+68h],r14d
00007ffd`eb1ed09b 895c2470        mov     dword ptr [rsp+70h],ebx
00007ffd`eb1ed09f 0f8487020000    je      00007ffd`eb1ed32c
00007ffd`eb1ed0a5 448b8424b8000000 mov     r8d,dword ptr [rsp+0B8h]
00007ffd`eb1ed0ad 4c63e9          movsxd  r13,ecx
00007ffd`eb1ed0b0 460fb76c6d0c    movzx   r13d,word ptr [rbp+r13*2+0Ch]
00007ffd`eb1ed0b6 89b42438010000  mov     dword ptr [rsp+138h],esi
00007ffd`eb1ed0bd 4489542474      mov     dword ptr [rsp+74h],r10d
00007ffd`eb1ed0c2 4889bc2418010000 mov     qword ptr [rsp+118h],rdi

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 43:
00007ffd`eb1ed0ca 4863f2          movsxd  rsi,edx
00007ffd`eb1ed0cd 458b7cb310      mov     r15d,dword ptr [r11+rsi*4+10h]
00007ffd`eb1ed0d2 4c8be0          mov     r12,rax
00007ffd`eb1ed0d5 448d7201        lea     r14d,[rdx+1]
00007ffd`eb1ed0d9 418bfe          mov     edi,r14d
00007ffd`eb1ed0dc 4c8b942418010000 mov     r10,qword ptr [rsp+118h]
00007ffd`eb1ed0e4 4889742448      mov     qword ptr [rsp+48h],rsi
00007ffd`eb1ed0e9 450fb74c720c    movzx   r9d,word ptr [r10+rsi*2+0Ch]
00007ffd`eb1ed0ef 4489ac2498000000 mov     dword ptr [rsp+98h],r13d
00007ffd`eb1ed0f7 44898c2494000000 mov     dword ptr [rsp+94h],r9d
00007ffd`eb1ed0ff 453be9          cmp     r13d,r9d
00007ffd`eb1ed102 7540            jne     00007ffd`eb1ed144
00007ffd`eb1ed104 4533ed          xor     r13d,r13d
00007ffd`eb1ed107 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ed10f eb41            jmp     00007ffd`eb1ed152
00007ffd`eb1ed111 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ed119 e90e020000      jmp     00007ffd`eb1ed32c
00007ffd`eb1ed11e 458be0          mov     r12d,r8d
00007ffd`eb1ed121 8b5c2470        mov     ebx,dword ptr [rsp+70h]
00007ffd`eb1ed125 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed12a 448bac2430010000 mov     r13d,dword ptr [rsp+130h]
00007ffd`eb1ed132 e9bb030000      jmp     00007ffd`eb1ed4f2
00007ffd`eb1ed137 458bf0          mov     r14d,r8d
00007ffd`eb1ed13a 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed13f e9a7060000      jmp     00007ffd`eb1ed7eb
00007ffd`eb1ed144 41bd01000000    mov     r13d,1
00007ffd`eb1ed14a 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ed152 448b4c2474      mov     r9d,dword ptr [rsp+74h]
00007ffd`eb1ed157 413bf9          cmp     edi,r9d
00007ffd`eb1ed15a 0f83fc060000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed160 4863ff          movsxd  rdi,edi
00007ffd`eb1ed163 440fafac2428010000 imul  r13d,dword ptr [rsp+128h]
00007ffd`eb1ed16c 4503fd          add     r15d,r13d
00007ffd`eb1ed16f 4489bc24a4000000 mov     dword ptr [rsp+0A4h],r15d
00007ffd`eb1ed177 45897cbc10      mov     dword ptr [r12+rdi*4+10h],r15d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 45:
00007ffd`eb1ed17c 85c9            test    ecx,ecx
00007ffd`eb1ed17e 0f8eb9000000    jle     00007ffd`eb1ed23d
00007ffd`eb1ed184 85d2            test    edx,edx
00007ffd`eb1ed186 0f8eb1000000    jle     00007ffd`eb1ed23d
00007ffd`eb1ed18c 448d61ff        lea     r12d,[rcx-1]
00007ffd`eb1ed190 443b64246c      cmp     r12d,dword ptr [rsp+6Ch]
00007ffd`eb1ed195 0f83c1060000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed19b 4d63e4          movsxd  r12,r12d
00007ffd`eb1ed19e 460fb764650c    movzx   r12d,word ptr [rbp+r12*2+0Ch]
00007ffd`eb1ed1a4 8bb42494000000  mov     esi,dword ptr [rsp+94h]
00007ffd`eb1ed1ab 443be6          cmp     r12d,esi
00007ffd`eb1ed1ae 0f8589000000    jne     00007ffd`eb1ed23d
00007ffd`eb1ed1b4 ffca            dec     edx
00007ffd`eb1ed1b6 8b742470        mov     esi,dword ptr [rsp+70h]
00007ffd`eb1ed1ba 3bd6            cmp     edx,esi
00007ffd`eb1ed1bc 0f839a060000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed1c2 89542464        mov     dword ptr [rsp+64h],edx
00007ffd`eb1ed1c6 4c63e2          movsxd  r12,edx
00007ffd`eb1ed1c9 4c89a42488000000 mov     qword ptr [rsp+88h],r12
00007ffd`eb1ed1d1 430fb754620c    movzx   edx,word ptr [r10+r12*2+0Ch]
00007ffd`eb1ed1d7 448ba42498000000 mov     r12d,dword ptr [rsp+98h]
00007ffd`eb1ed1df 443be2          cmp     r12d,edx
00007ffd`eb1ed1e2 0f853b010000    jne     00007ffd`eb1ed323
00007ffd`eb1ed1e8 8b542464        mov     edx,dword ptr [rsp+64h]
00007ffd`eb1ed1ec 4c8b642430      mov     r12,qword ptr [rsp+30h]
00007ffd`eb1ed1f1 413b542408      cmp     edx,dword ptr [r12+8]
00007ffd`eb1ed1f6 0f8360060000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed1fc 488b942488000000 mov     rdx,qword ptr [rsp+88h]
00007ffd`eb1ed204 448bac2420010000 mov     r13d,dword ptr [rsp+120h]
00007ffd`eb1ed20c 458bfd          mov     r15d,r13d
00007ffd`eb1ed20f 45037c9410      add     r15d,dword ptr [r12+rdx*4+10h]
00007ffd`eb1ed214 418bd7          mov     edx,r15d
00007ffd`eb1ed217 448bbc24a4000000 mov     r15d,dword ptr [rsp+0A4h]
00007ffd`eb1ed21f 443bfa          cmp     r15d,edx
00007ffd`eb1ed222 0f8ee5000000    jle     00007ffd`eb1ed30d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 48:
00007ffd`eb1ed228 8954b810        mov     dword ptr [rax+rdi*4+10h],edx
00007ffd`eb1ed22c 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffd`eb1ed231 89742470        mov     dword ptr [rsp+70h],esi
00007ffd`eb1ed235 4489ac2420010000 mov     dword ptr [rsp+120h],r13d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 50:
00007ffd`eb1ed23d 8b54b810        mov     edx,dword ptr [rax+rdi*4+10h]
00007ffd`eb1ed241 899424c4000000  mov     dword ptr [rsp+0C4h],edx
00007ffd`eb1ed248 448b7c2468      mov     r15d,dword ptr [rsp+68h]
00007ffd`eb1ed24d 453bf7          cmp     r14d,r15d
00007ffd`eb1ed250 0f8306060000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed256 8b942438010000  mov     edx,dword ptr [rsp+138h]
00007ffd`eb1ed25d 8bf2            mov     esi,edx
00007ffd`eb1ed25f 410374bb10      add     esi,dword ptr [r11+rdi*4+10h]
00007ffd`eb1ed264 448b8424c4000000 mov     r8d,dword ptr [rsp+0C4h]
00007ffd`eb1ed26c 443bc6          cmp     r8d,esi
00007ffd`eb1ed26f 7e04            jle     00007ffd`eb1ed275

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 51:
00007ffd`eb1ed271 8974b810        mov     dword ptr [rax+rdi*4+10h],esi

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 53:
00007ffd`eb1ed275 448b44b810      mov     r8d,dword ptr [rax+rdi*4+10h]
00007ffd`eb1ed27a 44898424c4000000 mov     dword ptr [rsp+0C4h],r8d
00007ffd`eb1ed282 488b742448      mov     rsi,qword ptr [rsp+48h]
00007ffd`eb1ed287 8b9c2430010000  mov     ebx,dword ptr [rsp+130h]
00007ffd`eb1ed28e 448bc3          mov     r8d,ebx
00007ffd`eb1ed291 440344b010      add     r8d,dword ptr [rax+rsi*4+10h]
00007ffd`eb1ed296 8bb424c4000000  mov     esi,dword ptr [rsp+0C4h]
00007ffd`eb1ed29d 413bf0          cmp     esi,r8d
00007ffd`eb1ed2a0 7e05            jle     00007ffd`eb1ed2a7

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 54:
00007ffd`eb1ed2a2 448944b810      mov     dword ptr [rax+rdi*4+10h],r8d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 40:
00007ffd`eb1ed2a7 458bc6          mov     r8d,r14d
00007ffd`eb1ed2aa 448bb424b8000000 mov     r14d,dword ptr [rsp+0B8h]
00007ffd`eb1ed2b2 453bc6          cmp     r8d,r14d
00007ffd`eb1ed2b5 7c23            jl      00007ffd`eb1ed2da
00007ffd`eb1ed2b7 899c2430010000  mov     dword ptr [rsp+130h],ebx
00007ffd`eb1ed2be 8bf2            mov     esi,edx
00007ffd`eb1ed2c0 498bfa          mov     rdi,r10
00007ffd`eb1ed2c3 458bc6          mov     r8d,r14d
00007ffd`eb1ed2c6 458be0          mov     r12d,r8d
00007ffd`eb1ed2c9 8b5c2470        mov     ebx,dword ptr [rsp+70h]
00007ffd`eb1ed2cd 448bac2430010000 mov     r13d,dword ptr [rsp+130h]
00007ffd`eb1ed2d5 e918020000      jmp     00007ffd`eb1ed4f2
00007ffd`eb1ed2da 89942438010000  mov     dword ptr [rsp+138h],edx
00007ffd`eb1ed2e1 44894c2474      mov     dword ptr [rsp+74h],r9d
00007ffd`eb1ed2e6 4c89942418010000 mov     qword ptr [rsp+118h],r10
00007ffd`eb1ed2ee 899c2430010000  mov     dword ptr [rsp+130h],ebx
00007ffd`eb1ed2f5 44897c2468      mov     dword ptr [rsp+68h],r15d
00007ffd`eb1ed2fa 418bd0          mov     edx,r8d
00007ffd`eb1ed2fd 458bc6          mov     r8d,r14d
00007ffd`eb1ed300 448bac2498000000 mov     r13d,dword ptr [rsp+98h]
00007ffd`eb1ed308 e9bdfdffff      jmp     00007ffd`eb1ed0ca
00007ffd`eb1ed30d 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffd`eb1ed312 89742470        mov     dword ptr [rsp+70h],esi
00007ffd`eb1ed316 4489ac2420010000 mov     dword ptr [rsp+120h],r13d
00007ffd`eb1ed31e e91affffff      jmp     00007ffd`eb1ed23d
00007ffd`eb1ed323 89742470        mov     dword ptr [rsp+70h],esi
00007ffd`eb1ed327 e911ffffff      jmp     00007ffd`eb1ed23d
00007ffd`eb1ed32c 458b7b08        mov     r15d,dword ptr [r11+8]
00007ffd`eb1ed330 413bd7          cmp     edx,r15d
00007ffd`eb1ed333 0f8323050000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed339 4c63f2          movsxd  r14,edx
00007ffd`eb1ed33c 478b6cb310      mov     r13d,dword ptr [r11+r14*4+10h]
00007ffd`eb1ed341 4889442420      mov     qword ptr [rsp+20h],rax
00007ffd`eb1ed346 448d4a01        lea     r9d,[rdx+1]
00007ffd`eb1ed34a 44898c24b4000000 mov     dword ptr [rsp+0B4h],r9d
00007ffd`eb1ed352 4489ac24b0000000 mov     dword ptr [rsp+0B0h],r13d
00007ffd`eb1ed35a 4c63e9          movsxd  r13,ecx
00007ffd`eb1ed35d 460fb76c6d0c    movzx   r13d,word ptr [rbp+r13*2+0Ch]
00007ffd`eb1ed363 8b5c2470        mov     ebx,dword ptr [rsp+70h]
00007ffd`eb1ed367 3bd3            cmp     edx,ebx
00007ffd`eb1ed369 0f83ed040000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed36f 4c89742440      mov     qword ptr [rsp+40h],r14
00007ffd`eb1ed374 460fb774770c    movzx   r14d,word ptr [rdi+r14*2+0Ch]
00007ffd`eb1ed37a 4489ac2490000000 mov     dword ptr [rsp+90h],r13d
00007ffd`eb1ed382 4489b424ac000000 mov     dword ptr [rsp+0ACh],r14d
00007ffd`eb1ed38a 453bee          cmp     r13d,r14d
00007ffd`eb1ed38d 751a            jne     00007ffd`eb1ed3a9
00007ffd`eb1ed38f 4c8b442420      mov     r8,qword ptr [rsp+20h]
00007ffd`eb1ed394 448ba424b4000000 mov     r12d,dword ptr [rsp+0B4h]
00007ffd`eb1ed39c 448bac24b0000000 mov     r13d,dword ptr [rsp+0B0h]
00007ffd`eb1ed3a4 4533f6          xor     r14d,r14d
00007ffd`eb1ed3a7 eb1b            jmp     00007ffd`eb1ed3c4
00007ffd`eb1ed3a9 4c8b442420      mov     r8,qword ptr [rsp+20h]
00007ffd`eb1ed3ae 448ba424b4000000 mov     r12d,dword ptr [rsp+0B4h]
00007ffd`eb1ed3b6 448bac24b0000000 mov     r13d,dword ptr [rsp+0B0h]
00007ffd`eb1ed3be 41be01000000    mov     r14d,1
00007ffd`eb1ed3c4 453be2          cmp     r12d,r10d
00007ffd`eb1ed3c7 0f838f040000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed3cd 4d63e4          movsxd  r12,r12d
00007ffd`eb1ed3d0 440fafb42428010000 imul  r14d,dword ptr [rsp+128h]
00007ffd`eb1ed3d9 4503ee          add     r13d,r14d
00007ffd`eb1ed3dc 4489ac24a0000000 mov     dword ptr [rsp+0A0h],r13d
00007ffd`eb1ed3e4 47896ca010      mov     dword ptr [r8+r12*4+10h],r13d
00007ffd`eb1ed3e9 85c9            test    ecx,ecx
00007ffd`eb1ed3eb 0f8ea4000000    jle     00007ffd`eb1ed495
00007ffd`eb1ed3f1 85d2            test    edx,edx
00007ffd`eb1ed3f3 0f8e9c000000    jle     00007ffd`eb1ed495
00007ffd`eb1ed3f9 448d71ff        lea     r14d,[rcx-1]
00007ffd`eb1ed3fd 443b74246c      cmp     r14d,dword ptr [rsp+6Ch]
00007ffd`eb1ed402 0f8354040000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed408 4d63f6          movsxd  r14,r14d
00007ffd`eb1ed40b 460fb774750c    movzx   r14d,word ptr [rbp+r14*2+0Ch]
00007ffd`eb1ed411 448b8424ac000000 mov     r8d,dword ptr [rsp+0ACh]
00007ffd`eb1ed419 453bf0          cmp     r14d,r8d
00007ffd`eb1ed41c 7577            jne     00007ffd`eb1ed495
00007ffd`eb1ed41e 448d42ff        lea     r8d,[rdx-1]
00007ffd`eb1ed422 443bc3          cmp     r8d,ebx
00007ffd`eb1ed425 0f8331040000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed42b 4489442460      mov     dword ptr [rsp+60h],r8d
00007ffd`eb1ed430 4d63f0          movsxd  r14,r8d
00007ffd`eb1ed433 4c89b42480000000 mov     qword ptr [rsp+80h],r14
00007ffd`eb1ed43b 460fb744770c    movzx   r8d,word ptr [rdi+r14*2+0Ch]
00007ffd`eb1ed441 448bb42490000000 mov     r14d,dword ptr [rsp+90h]
00007ffd`eb1ed449 453bf0          cmp     r14d,r8d
00007ffd`eb1ed44c 7547            jne     00007ffd`eb1ed495
00007ffd`eb1ed44e 448b442460      mov     r8d,dword ptr [rsp+60h]
00007ffd`eb1ed453 4c8b742430      mov     r14,qword ptr [rsp+30h]
00007ffd`eb1ed458 453b4608        cmp     r8d,dword ptr [r14+8]
00007ffd`eb1ed45c 0f83fa030000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed462 4c8b842480000000 mov     r8,qword ptr [rsp+80h]
00007ffd`eb1ed46a 448bac2420010000 mov     r13d,dword ptr [rsp+120h]
00007ffd`eb1ed472 47036c8610      add     r13d,dword ptr [r14+r8*4+10h]
00007ffd`eb1ed477 458bc5          mov     r8d,r13d
00007ffd`eb1ed47a 448bac24a0000000 mov     r13d,dword ptr [rsp+0A0h]
00007ffd`eb1ed482 453be8          cmp     r13d,r8d
00007ffd`eb1ed485 0f8ed5000000    jle     00007ffd`eb1ed560
00007ffd`eb1ed48b 468944a010      mov     dword ptr [rax+r12*4+10h],r8d
00007ffd`eb1ed490 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffd`eb1ed495 468b44a010      mov     r8d,dword ptr [rax+r12*4+10h]
00007ffd`eb1ed49a 453bcf          cmp     r9d,r15d
00007ffd`eb1ed49d 0f83b9030000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed4a3 448bfe          mov     r15d,esi
00007ffd`eb1ed4a6 47037ca310      add     r15d,dword ptr [r11+r12*4+10h]
00007ffd`eb1ed4ab 453bc7          cmp     r8d,r15d
00007ffd`eb1ed4ae 7e05            jle     00007ffd`eb1ed4b5
00007ffd`eb1ed4b0 46897ca010      mov     dword ptr [rax+r12*4+10h],r15d
00007ffd`eb1ed4b5 468b44a010      mov     r8d,dword ptr [rax+r12*4+10h]
00007ffd`eb1ed4ba 413bd2          cmp     edx,r10d
00007ffd`eb1ed4bd 0f8399030000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed4c3 488b542440      mov     rdx,qword ptr [rsp+40h]
00007ffd`eb1ed4c8 448bac2430010000 mov     r13d,dword ptr [rsp+130h]
00007ffd`eb1ed4d0 458bfd          mov     r15d,r13d
00007ffd`eb1ed4d3 44037c9010      add     r15d,dword ptr [rax+rdx*4+10h]
00007ffd`eb1ed4d8 453bc7          cmp     r8d,r15d
00007ffd`eb1ed4db 7e05            jle     00007ffd`eb1ed4e2
00007ffd`eb1ed4dd 46897ca010      mov     dword ptr [rax+r12*4+10h],r15d
00007ffd`eb1ed4e2 418bd1          mov     edx,r9d
00007ffd`eb1ed4e5 448ba424b8000000 mov     r12d,dword ptr [rsp+0B8h]
00007ffd`eb1ed4ed 413bd4          cmp     edx,r12d
00007ffd`eb1ed4f0 7c55            jl      00007ffd`eb1ed547

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 57:
00007ffd`eb1ed4f2 4c8b742430      mov     r14,qword ptr [rsp+30h]

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 58:
00007ffd`eb1ed4f7 4d8bfb          mov     r15,r11

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 59:
00007ffd`eb1ed4fa 4c8bd8          mov     r11,rax

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 60:
00007ffd`eb1ed4fd 498bc6          mov     rax,r14

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 35:
00007ffd`eb1ed500 448b4c2454      mov     r9d,dword ptr [rsp+54h]
00007ffd`eb1ed505 418bc9          mov     ecx,r9d
00007ffd`eb1ed508 448bb424bc000000 mov     r14d,dword ptr [rsp+0BCh]
00007ffd`eb1ed510 413bce          cmp     ecx,r14d
00007ffd`eb1ed513 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffd`eb1ed518 4489ac2430010000 mov     dword ptr [rsp+130h],r13d
00007ffd`eb1ed520 4c897c2430      mov     qword ptr [rsp+30h],r15
00007ffd`eb1ed525 895c2470        mov     dword ptr [rsp+70h],ebx
00007ffd`eb1ed529 4489b424bc000000 mov     dword ptr [rsp+0BCh],r14d
00007ffd`eb1ed531 458bc4          mov     r8d,r12d
00007ffd`eb1ed534 0f8ca8faffff    jl      00007ffd`eb1ecfe2
00007ffd`eb1ed53a 458bf0          mov     r14d,r8d
00007ffd`eb1ed53d 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed542 e9a4020000      jmp     00007ffd`eb1ed7eb
00007ffd`eb1ed547 4489ac2430010000 mov     dword ptr [rsp+130h],r13d
00007ffd`eb1ed54f 895c2470        mov     dword ptr [rsp+70h],ebx
00007ffd`eb1ed553 4489a424b8000000 mov     dword ptr [rsp+0B8h],r12d
00007ffd`eb1ed55b e9ccfdffff      jmp     00007ffd`eb1ed32c
00007ffd`eb1ed560 4c89742430      mov     qword ptr [rsp+30h],r14
00007ffd`eb1ed565 e92bffffff      jmp     00007ffd`eb1ed495
00007ffd`eb1ed56a 8d5101          lea     edx,[rcx+1]
00007ffd`eb1ed56d 0fafd6          imul    edx,esi
00007ffd`eb1ed570 448b5008        mov     r10d,dword ptr [rax+8]
00007ffd`eb1ed574 4183fa00        cmp     r10d,0
00007ffd`eb1ed578 0f86de020000    jbe     00007ffd`eb1ed85c
00007ffd`eb1ed57e 895010          mov     dword ptr [rax+10h],edx
00007ffd`eb1ed581 33d2            xor     edx,edx
00007ffd`eb1ed583 44898424b8000000 mov     dword ptr [rsp+0B8h],r8d
00007ffd`eb1ed58b 4585c0          test    r8d,r8d
00007ffd`eb1ed58e 0f8ea6000000    jle     00007ffd`eb1ed63a
00007ffd`eb1ed594 4889bc2418010000 mov     qword ptr [rsp+118h],rdi
00007ffd`eb1ed59c 4889ac2410010000 mov     qword ptr [rsp+110h],rbp
00007ffd`eb1ed5a4 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed5a9 458b4b08        mov     r9d,dword ptr [r11+8]
00007ffd`eb1ed5ad 44894c2458      mov     dword ptr [rsp+58h],r9d
00007ffd`eb1ed5b2 413bd1          cmp     edx,r9d
00007ffd`eb1ed5b5 0f83a1020000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed5bb 4c63ea          movsxd  r13,edx
00007ffd`eb1ed5be 438b5cab10      mov     ebx,dword ptr [r11+r13*4+10h]
00007ffd`eb1ed5c3 4889442420      mov     qword ptr [rsp+20h],rax
00007ffd`eb1ed5c8 448d7201        lea     r14d,[rdx+1]
00007ffd`eb1ed5cc 4489b424b4000000 mov     dword ptr [rsp+0B4h],r14d
00007ffd`eb1ed5d4 899c24b0000000  mov     dword ptr [rsp+0B0h],ebx
00007ffd`eb1ed5db 3b4c246c        cmp     ecx,dword ptr [rsp+6Ch]
00007ffd`eb1ed5df 0f8377020000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed5e5 4863e9          movsxd  rbp,ecx
00007ffd`eb1ed5e8 488b9c2410010000 mov     rbx,qword ptr [rsp+110h]
00007ffd`eb1ed5f0 0fb76c6b0c      movzx   ebp,word ptr [rbx+rbp*2+0Ch]
00007ffd`eb1ed5f5 448b7c2470      mov     r15d,dword ptr [rsp+70h]
00007ffd`eb1ed5fa 413bd7          cmp     edx,r15d
00007ffd`eb1ed5fd 0f8359020000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed603 4c8b842418010000 mov     r8,qword ptr [rsp+118h]
00007ffd`eb1ed60b 4c896c2438      mov     qword ptr [rsp+38h],r13
00007ffd`eb1ed610 430fb77c680c    movzx   edi,word ptr [r8+r13*2+0Ch]
00007ffd`eb1ed616 89ac24a8000000  mov     dword ptr [rsp+0A8h],ebp
00007ffd`eb1ed61d 3bef            cmp     ebp,edi
00007ffd`eb1ed61f 753d            jne     00007ffd`eb1ed65e
00007ffd`eb1ed621 4c8b642420      mov     r12,qword ptr [rsp+20h]
00007ffd`eb1ed626 448bac24b4000000 mov     r13d,dword ptr [rsp+0B4h]
00007ffd`eb1ed62e 448b8c24b0000000 mov     r9d,dword ptr [rsp+0B0h]
00007ffd`eb1ed636 33ed            xor     ebp,ebp
00007ffd`eb1ed638 eb3e            jmp     00007ffd`eb1ed678
00007ffd`eb1ed63a 488bdd          mov     rbx,rbp
00007ffd`eb1ed63d 4c8bc7          mov     r8,rdi
00007ffd`eb1ed640 8bbc2430010000  mov     edi,dword ptr [rsp+130h]
00007ffd`eb1ed647 4c8b5c2428      mov     r11,qword ptr [rsp+28h]
00007ffd`eb1ed64c 448bb424b8000000 mov     r14d,dword ptr [rsp+0B8h]
00007ffd`eb1ed654 448b7c2470      mov     r15d,dword ptr [rsp+70h]
00007ffd`eb1ed659 e954010000      jmp     00007ffd`eb1ed7b2
00007ffd`eb1ed65e 4c8b642420      mov     r12,qword ptr [rsp+20h]
00007ffd`eb1ed663 448bac24b4000000 mov     r13d,dword ptr [rsp+0B4h]
00007ffd`eb1ed66b 448b8c24b0000000 mov     r9d,dword ptr [rsp+0B0h]
00007ffd`eb1ed673 bd01000000      mov     ebp,1
00007ffd`eb1ed678 453bea          cmp     r13d,r10d
00007ffd`eb1ed67b 0f83db010000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed681 4d63ed          movsxd  r13,r13d
00007ffd`eb1ed684 0fafac2428010000 imul    ebp,dword ptr [rsp+128h]
00007ffd`eb1ed68c 4403cd          add     r9d,ebp
00007ffd`eb1ed68f 44898c249c000000 mov     dword ptr [rsp+9Ch],r9d
00007ffd`eb1ed697 47894cac10      mov     dword ptr [r12+r13*4+10h],r9d
00007ffd`eb1ed69c 85c9            test    ecx,ecx
00007ffd`eb1ed69e 0f8e99000000    jle     00007ffd`eb1ed73d
00007ffd`eb1ed6a4 85d2            test    edx,edx
00007ffd`eb1ed6a6 0f8e91000000    jle     00007ffd`eb1ed73d
00007ffd`eb1ed6ac 448d61ff        lea     r12d,[rcx-1]
00007ffd`eb1ed6b0 443b64246c      cmp     r12d,dword ptr [rsp+6Ch]
00007ffd`eb1ed6b5 0f83a1010000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed6bb 4d63e4          movsxd  r12,r12d
00007ffd`eb1ed6be 460fb764630c    movzx   r12d,word ptr [rbx+r12*2+0Ch]
00007ffd`eb1ed6c4 443be7          cmp     r12d,edi
00007ffd`eb1ed6c7 7574            jne     00007ffd`eb1ed73d
00007ffd`eb1ed6c9 8d7aff          lea     edi,[rdx-1]
00007ffd`eb1ed6cc 413bff          cmp     edi,r15d
00007ffd`eb1ed6cf 0f8387010000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed6d5 897c245c        mov     dword ptr [rsp+5Ch],edi
00007ffd`eb1ed6d9 4c63e7          movsxd  r12,edi
00007ffd`eb1ed6dc 4c89642478      mov     qword ptr [rsp+78h],r12
00007ffd`eb1ed6e1 430fb77c600c    movzx   edi,word ptr [r8+r12*2+0Ch]
00007ffd`eb1ed6e7 448ba424a8000000 mov     r12d,dword ptr [rsp+0A8h]
00007ffd`eb1ed6ef 413bfc          cmp     edi,r12d
00007ffd`eb1ed6f2 7549            jne     00007ffd`eb1ed73d
00007ffd`eb1ed6f4 8b7c245c        mov     edi,dword ptr [rsp+5Ch]
00007ffd`eb1ed6f8 4c8b642430      mov     r12,qword ptr [rsp+30h]
00007ffd`eb1ed6fd 413b7c2408      cmp     edi,dword ptr [r12+8]
00007ffd`eb1ed702 0f8354010000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed708 488b7c2478      mov     rdi,qword ptr [rsp+78h]
00007ffd`eb1ed70d 8bac2420010000  mov     ebp,dword ptr [rsp+120h]
00007ffd`eb1ed714 448bcd          mov     r9d,ebp
00007ffd`eb1ed717 45034cbc10      add     r9d,dword ptr [r12+rdi*4+10h]
00007ffd`eb1ed71c 8bbc249c000000  mov     edi,dword ptr [rsp+9Ch]
00007ffd`eb1ed723 413bf9          cmp     edi,r9d
00007ffd`eb1ed726 0f8e1f010000    jle     00007ffd`eb1ed84b
00007ffd`eb1ed72c 46894ca810      mov     dword ptr [rax+r13*4+10h],r9d
00007ffd`eb1ed731 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffd`eb1ed736 89ac2420010000  mov     dword ptr [rsp+120h],ebp
00007ffd`eb1ed73d 468b4ca810      mov     r9d,dword ptr [rax+r13*4+10h]
00007ffd`eb1ed742 44898c24c4000000 mov     dword ptr [rsp+0C4h],r9d
00007ffd`eb1ed74a 443b742458      cmp     r14d,dword ptr [rsp+58h]
00007ffd`eb1ed74f 0f8307010000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed755 438b7cab10      mov     edi,dword ptr [r11+r13*4+10h]
00007ffd`eb1ed75a 448d0c37        lea     r9d,[rdi+rsi]
00007ffd`eb1ed75e 44398c24c4000000 cmp     dword ptr [rsp+0C4h],r9d
00007ffd`eb1ed766 7e09            jle     00007ffd`eb1ed771
00007ffd`eb1ed768 448d0c37        lea     r9d,[rdi+rsi]
00007ffd`eb1ed76c 46894ca810      mov     dword ptr [rax+r13*4+10h],r9d
00007ffd`eb1ed771 413bd2          cmp     edx,r10d
00007ffd`eb1ed774 0f83e2000000    jae     00007ffd`eb1ed85c
00007ffd`eb1ed77a 488b542438      mov     rdx,qword ptr [rsp+38h]
00007ffd`eb1ed77f 8bbc2430010000  mov     edi,dword ptr [rsp+130h]
00007ffd`eb1ed786 448bcf          mov     r9d,edi
00007ffd`eb1ed789 44034c9010      add     r9d,dword ptr [rax+rdx*4+10h]
00007ffd`eb1ed78e 46394ca810      cmp     dword ptr [rax+r13*4+10h],r9d
00007ffd`eb1ed793 7e0d            jle     00007ffd`eb1ed7a2
00007ffd`eb1ed795 448bcf          mov     r9d,edi
00007ffd`eb1ed798 44034c9010      add     r9d,dword ptr [rax+rdx*4+10h]
00007ffd`eb1ed79d 46894ca810      mov     dword ptr [rax+r13*4+10h],r9d
00007ffd`eb1ed7a2 418bd6          mov     edx,r14d
00007ffd`eb1ed7a5 448bb424b8000000 mov     r14d,dword ptr [rsp+0B8h]
00007ffd`eb1ed7ad 413bd6          cmp     edx,r14d
00007ffd`eb1ed7b0 7c6b            jl      00007ffd`eb1ed81d
00007ffd`eb1ed7b2 4c8b642430      mov     r12,qword ptr [rsp+30h]
00007ffd`eb1ed7b7 4d8beb          mov     r13,r11
00007ffd`eb1ed7ba 4c8bd8          mov     r11,rax
00007ffd`eb1ed7bd 498bc4          mov     rax,r12
00007ffd`eb1ed7c0 ffc1            inc     ecx
00007ffd`eb1ed7c2 448ba424bc000000 mov     r12d,dword ptr [rsp+0BCh]
00007ffd`eb1ed7ca 413bcc          cmp     ecx,r12d
00007ffd`eb1ed7cd 89bc2430010000  mov     dword ptr [rsp+130h],edi
00007ffd`eb1ed7d4 4c896c2430      mov     qword ptr [rsp+30h],r13
00007ffd`eb1ed7d9 44897c2470      mov     dword ptr [rsp+70h],r15d
00007ffd`eb1ed7de 4489a424bc000000 mov     dword ptr [rsp+0BCh],r12d
00007ffd`eb1ed7e6 488beb          mov     rbp,rbx
00007ffd`eb1ed7e9 7c22            jl      00007ffd`eb1ed80d

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 63:
00007ffd`eb1ed7eb 453b7308        cmp     r14d,dword ptr [r11+8]
00007ffd`eb1ed7ef 736b            jae     00007ffd`eb1ed85c
00007ffd`eb1ed7f1 4963c6          movsxd  rax,r14d
00007ffd`eb1ed7f4 418b448310      mov     eax,dword ptr [r11+rax*4+10h]
00007ffd`eb1ed7f9 4881c4c8000000  add     rsp,0C8h
00007ffd`eb1ed800 5b              pop     rbx
00007ffd`eb1ed801 5d              pop     rbp
00007ffd`eb1ed802 5e              pop     rsi
00007ffd`eb1ed803 5f              pop     rdi
00007ffd`eb1ed804 415c            pop     r12
00007ffd`eb1ed806 415d            pop     r13
00007ffd`eb1ed808 415e            pop     r14
00007ffd`eb1ed80a 415f            pop     r15
00007ffd`eb1ed80c c3              ret

C:\temp\MixingLangsBenchmark\levenshtein-CSharp\levenshtein.cs @ 25:
00007ffd`eb1ed80d 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffd`eb1ed812 498bf8          mov     rdi,r8
00007ffd`eb1ed815 458bc6          mov     r8d,r14d
00007ffd`eb1ed818 e94dfdffff      jmp     00007ffd`eb1ed56a
00007ffd`eb1ed81d 4c895c2428      mov     qword ptr [rsp+28h],r11
00007ffd`eb1ed822 4c89842418010000 mov     qword ptr [rsp+118h],r8
00007ffd`eb1ed82a 89bc2430010000  mov     dword ptr [rsp+130h],edi
00007ffd`eb1ed831 48899c2410010000 mov     qword ptr [rsp+110h],rbx
00007ffd`eb1ed839 44897c2470      mov     dword ptr [rsp+70h],r15d
00007ffd`eb1ed83e 4489b424b8000000 mov     dword ptr [rsp+0B8h],r14d
00007ffd`eb1ed846 e959fdffff      jmp     00007ffd`eb1ed5a4
00007ffd`eb1ed84b 4c89642430      mov     qword ptr [rsp+30h],r12
00007ffd`eb1ed850 89ac2420010000  mov     dword ptr [rsp+120h],ebp
00007ffd`eb1ed857 e9e1feffff      jmp     00007ffd`eb1ed73d
00007ffd`eb1ed85c e86f8cc15f      call    coreclr!JIT_RngChkFail (00007ffe`4ae064d0)
00007ffd`eb1ed861 cc              int     3
