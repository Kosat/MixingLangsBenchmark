levenshtein_C!levenshtein_C [c:\temp\mixinglangsbenchmark\levenshtein-c\levenshtein.cpp @ 25]:
00007ffe`7b1e1030 48895c2408      mov     qword ptr [rsp+8],rbx
00007ffe`7b1e1035 44894c2420      mov     dword ptr [rsp+20h],r9d
00007ffe`7b1e103a 4489442418      mov     dword ptr [rsp+18h],r8d
00007ffe`7b1e103f 55              push    rbp
00007ffe`7b1e1040 56              push    rsi
00007ffe`7b1e1041 57              push    rdi
00007ffe`7b1e1042 4154            push    r12
00007ffe`7b1e1044 4155            push    r13
00007ffe`7b1e1046 4156            push    r14
00007ffe`7b1e1048 4157            push    r15
00007ffe`7b1e104a 4883ec60        sub     rsp,60h
00007ffe`7b1e104e 448bac24c0000000 mov     r13d,dword ptr [rsp+0C0h]
00007ffe`7b1e1056 4983ccff        or      r12,0FFFFFFFFFFFFFFFFh
00007ffe`7b1e105a 0f29742450      movaps  xmmword ptr [rsp+50h],xmm6
00007ffe`7b1e105f 488bea          mov     rbp,rdx
00007ffe`7b1e1062 488bf9          mov     rdi,rcx
00007ffe`7b1e1065 4d8bf4          mov     r14,r12
00007ffe`7b1e1068 66410f6ef5      movd    xmm6,r13d
00007ffe`7b1e106d 660f70f600      pshufd  xmm6,xmm6,0
00007ffe`7b1e1072 49ffc6          inc     r14
00007ffe`7b1e1075 42803c3100      cmp     byte ptr [rcx+r14],0
00007ffe`7b1e107a 75f6            jne     levenshtein_C!levenshtein_C+0x42 (00007ffe`7b1e1072)
00007ffe`7b1e107c 498bf4          mov     rsi,r12
00007ffe`7b1e107f 90              nop
00007ffe`7b1e1080 48ffc6          inc     rsi
00007ffe`7b1e1083 803c1600        cmp     byte ptr [rsi+rdx],0
00007ffe`7b1e1087 75f7            jne     levenshtein_C!levenshtein_C+0x50 (00007ffe`7b1e1080)
00007ffe`7b1e1089 448d7e01        lea     r15d,[rsi+1]
00007ffe`7b1e108d b804000000      mov     eax,4
00007ffe`7b1e1092 4963df          movsxd  rbx,r15d
00007ffe`7b1e1095 48f7e3          mul     rax,rbx
00007ffe`7b1e1098 490f40c4        cmovo   rax,r12
00007ffe`7b1e109c 488bc8          mov     rcx,rax
00007ffe`7b1e109f ff15fb1f0000    call    qword ptr [levenshtein_C!_imp_malloc (00007ffe`7b1e30a0)]
00007ffe`7b1e10a5 4889442428      mov     qword ptr [rsp+28h],rax
00007ffe`7b1e10aa b804000000      mov     eax,4
00007ffe`7b1e10af 48f7e3          mul     rax,rbx
00007ffe`7b1e10b2 490f40c4        cmovo   rax,r12
00007ffe`7b1e10b6 488bc8          mov     rcx,rax
00007ffe`7b1e10b9 ff15e11f0000    call    qword ptr [levenshtein_C!_imp_malloc (00007ffe`7b1e30a0)]
00007ffe`7b1e10bf 4c8be0          mov     r12,rax
00007ffe`7b1e10c2 4889442438      mov     qword ptr [rsp+38h],rax
00007ffe`7b1e10c7 48c7c1ffffffff  mov     rcx,0FFFFFFFFFFFFFFFFh
00007ffe`7b1e10ce b804000000      mov     eax,4
00007ffe`7b1e10d3 48f7e3          mul     rax,rbx
00007ffe`7b1e10d6 480f40c1        cmovo   rax,rcx
00007ffe`7b1e10da 488bc8          mov     rcx,rax
00007ffe`7b1e10dd ff15bd1f0000    call    qword ptr [levenshtein_C!_imp_malloc (00007ffe`7b1e30a0)]
00007ffe`7b1e10e3 33c9            xor     ecx,ecx
00007ffe`7b1e10e5 4889442430      mov     qword ptr [rsp+30h],rax
00007ffe`7b1e10ea 488bd0          mov     rdx,rax
00007ffe`7b1e10ed 85f6            test    esi,esi
00007ffe`7b1e10ef 0f88c5000000    js      levenshtein_C!levenshtein_C+0x18a (00007ffe`7b1e11ba)
00007ffe`7b1e10f5 4183ff10        cmp     r15d,10h
00007ffe`7b1e10f9 0f82bb000000    jb      levenshtein_C!levenshtein_C+0x18a (00007ffe`7b1e11ba)
00007ffe`7b1e10ff 833d122f000002  cmp     dword ptr [levenshtein_C!__isa_available (00007ffe`7b1e4018)],2
00007ffe`7b1e1106 0f8cae000000    jl      levenshtein_C!levenshtein_C+0x18a (00007ffe`7b1e11ba)
00007ffe`7b1e110c 660f6f156c200000 movdqa  xmm2,xmmword ptr [levenshtein_C!_xmm (00007ffe`7b1e3180)]
00007ffe`7b1e1114 4181e70f000080  and     r15d,8000000Fh
00007ffe`7b1e111b 7d0a            jge     levenshtein_C!levenshtein_C+0xf7 (00007ffe`7b1e1127)
00007ffe`7b1e111d 41ffcf          dec     r15d
00007ffe`7b1e1120 4183cff0        or      r15d,0FFFFFFF0h
00007ffe`7b1e1124 41ffc7          inc     r15d
00007ffe`7b1e1127 448bce          mov     r9d,esi
00007ffe`7b1e112a 498d542420      lea     rdx,[r12+20h]
00007ffe`7b1e112f 452bcf          sub     r9d,r15d
00007ffe`7b1e1132 41b808000000    mov     r8d,8
00007ffe`7b1e1138 0f1f840000000000 nop     dword ptr [rax+rax]
00007ffe`7b1e1140 418d40fc        lea     eax,[r8-4]
00007ffe`7b1e1144 660f6ec1        movd    xmm0,ecx
00007ffe`7b1e1148 660f70c000      pshufd  xmm0,xmm0,0
00007ffe`7b1e114d 488d5240        lea     rdx,[rdx+40h]
00007ffe`7b1e1151 660ffec2        paddd   xmm0,xmm2
00007ffe`7b1e1155 660f6ec8        movd    xmm1,eax
00007ffe`7b1e1159 660f70c900      pshufd  xmm1,xmm1,0
00007ffe`7b1e115e 418d4004        lea     eax,[r8+4]
00007ffe`7b1e1162 660ffeca        paddd   xmm1,xmm2
00007ffe`7b1e1166 83c110          add     ecx,10h
00007ffe`7b1e1169 660f3840c6      pmulld  xmm0,xmm6
00007ffe`7b1e116e f30f7f42a0      movdqu  xmmword ptr [rdx-60h],xmm0
00007ffe`7b1e1173 660f3840ce      pmulld  xmm1,xmm6
00007ffe`7b1e1178 f30f7f4ab0      movdqu  xmmword ptr [rdx-50h],xmm1
00007ffe`7b1e117d 66410f6ec0      movd    xmm0,r8d
00007ffe`7b1e1182 4183c010        add     r8d,10h
00007ffe`7b1e1186 660f70c000      pshufd  xmm0,xmm0,0
00007ffe`7b1e118b 660f6ec8        movd    xmm1,eax
00007ffe`7b1e118f 660ffec2        paddd   xmm0,xmm2
00007ffe`7b1e1193 660f70c900      pshufd  xmm1,xmm1,0
00007ffe`7b1e1198 660ffeca        paddd   xmm1,xmm2
00007ffe`7b1e119c 660f3840c6      pmulld  xmm0,xmm6
00007ffe`7b1e11a1 f30f7f42c0      movdqu  xmmword ptr [rdx-40h],xmm0
00007ffe`7b1e11a6 660f3840ce      pmulld  xmm1,xmm6
00007ffe`7b1e11ab f30f7f4ad0      movdqu  xmmword ptr [rdx-30h],xmm1
00007ffe`7b1e11b0 413bc9          cmp     ecx,r9d
00007ffe`7b1e11b3 7e8b            jle     levenshtein_C!levenshtein_C+0x110 (00007ffe`7b1e1140)
00007ffe`7b1e11b5 488b542430      mov     rdx,qword ptr [rsp+30h]
00007ffe`7b1e11ba 4863c1          movsxd  rax,ecx
00007ffe`7b1e11bd 4863de          movsxd  rbx,esi
00007ffe`7b1e11c0 483bc3          cmp     rax,rbx
00007ffe`7b1e11c3 7f1a            jg      levenshtein_C!levenshtein_C+0x1af (00007ffe`7b1e11df)
00007ffe`7b1e11c5 410fafcd        imul    ecx,r13d
00007ffe`7b1e11c9 0f1f8000000000  nop     dword ptr [rax]
00007ffe`7b1e11d0 41890c84        mov     dword ptr [r12+rax*4],ecx
00007ffe`7b1e11d4 4103cd          add     ecx,r13d
00007ffe`7b1e11d7 48ffc0          inc     rax
00007ffe`7b1e11da 483bc3          cmp     rax,rbx
00007ffe`7b1e11dd 7ef1            jle     levenshtein_C!levenshtein_C+0x1a0 (00007ffe`7b1e11d0)
00007ffe`7b1e11df 4c8b442428      mov     r8,qword ptr [rsp+28h]
00007ffe`7b1e11e4 4963c6          movsxd  rax,r14d
00007ffe`7b1e11e7 4889442440      mov     qword ptr [rsp+40h],rax
00007ffe`7b1e11ec 4585f6          test    r14d,r14d
00007ffe`7b1e11ef 0f8e16010000    jle     levenshtein_C!levenshtein_C+0x2db (00007ffe`7b1e130b)
00007ffe`7b1e11f5 8bb424c8000000  mov     esi,dword ptr [rsp+0C8h]
00007ffe`7b1e11fc 4c8bf7          mov     r14,rdi
00007ffe`7b1e11ff 8bce            mov     ecx,esi
00007ffe`7b1e1201 49f7de          neg     r14
00007ffe`7b1e1204 894c2420        mov     dword ptr [rsp+20h],ecx
00007ffe`7b1e1208 0f1f840000000000 nop     dword ptr [rax+rax]
00007ffe`7b1e1210 4533d2          xor     r10d,r10d
00007ffe`7b1e1213 890a            mov     dword ptr [rdx],ecx
00007ffe`7b1e1215 4533c9          xor     r9d,r9d
00007ffe`7b1e1218 4885db          test    rbx,rbx
00007ffe`7b1e121b 0f8eb7000000    jle     levenshtein_C!levenshtein_C+0x2a8 (00007ffe`7b1e12d8)
00007ffe`7b1e1221 4d8bdc          mov     r11,r12
00007ffe`7b1e1224 488d4204        lea     rax,[rdx+4]
00007ffe`7b1e1228 4d8bf8          mov     r15,r8
00007ffe`7b1e122b 4d2bfc          sub     r15,r12
00007ffe`7b1e122e 448ba424b0000000 mov     r12d,dword ptr [rsp+0B0h]
00007ffe`7b1e1236 4983c7f8        add     r15,0FFFFFFFFFFFFFFF8h
00007ffe`7b1e123a 4c2bda          sub     r11,rdx
00007ffe`7b1e123d 0f1f00          nop     dword ptr [rax]
00007ffe`7b1e1240 410fb60c29      movzx   ecx,byte ptr [r9+rbp]
00007ffe`7b1e1245 33d2            xor     edx,edx
00007ffe`7b1e1247 380f            cmp     byte ptr [rdi],cl
00007ffe`7b1e1249 498d0c3e        lea     rcx,[r14+rdi]
00007ffe`7b1e124d 458b4403fc      mov     r8d,dword ptr [r11+rax-4]
00007ffe`7b1e1252 0f459424b8000000 cmovne  edx,dword ptr [rsp+0B8h]
00007ffe`7b1e125a 4403c2          add     r8d,edx
00007ffe`7b1e125d 448900          mov     dword ptr [rax],r8d
00007ffe`7b1e1260 4885c9          test    rcx,rcx
00007ffe`7b1e1263 7e2d            jle     levenshtein_C!levenshtein_C+0x262 (00007ffe`7b1e1292)
00007ffe`7b1e1265 4585d2          test    r10d,r10d
00007ffe`7b1e1268 7e28            jle     levenshtein_C!levenshtein_C+0x262 (00007ffe`7b1e1292)
00007ffe`7b1e126a 410fb60c29      movzx   ecx,byte ptr [r9+rbp]
00007ffe`7b1e126f 384fff          cmp     byte ptr [rdi-1],cl
00007ffe`7b1e1272 751e            jne     levenshtein_C!levenshtein_C+0x262 (00007ffe`7b1e1292)
00007ffe`7b1e1274 410fb64c29ff    movzx   ecx,byte ptr [r9+rbp-1]
00007ffe`7b1e127a 380f            cmp     byte ptr [rdi],cl
00007ffe`7b1e127c 7514            jne     levenshtein_C!levenshtein_C+0x262 (00007ffe`7b1e1292)
00007ffe`7b1e127e 4b8d0c3b        lea     rcx,[r11+r15]
00007ffe`7b1e1282 8b0c01          mov     ecx,dword ptr [rcx+rax]
00007ffe`7b1e1285 4103cc          add     ecx,r12d
00007ffe`7b1e1288 443bc1          cmp     r8d,ecx
00007ffe`7b1e128b 7e05            jle     levenshtein_C!levenshtein_C+0x262 (00007ffe`7b1e1292)
00007ffe`7b1e128d 448bc1          mov     r8d,ecx
00007ffe`7b1e1290 8908            mov     dword ptr [rax],ecx
00007ffe`7b1e1292 418b1403        mov     edx,dword ptr [r11+rax]
00007ffe`7b1e1296 03d6            add     edx,esi
00007ffe`7b1e1298 443bc2          cmp     r8d,edx
00007ffe`7b1e129b 7e05            jle     levenshtein_C!levenshtein_C+0x272 (00007ffe`7b1e12a2)
00007ffe`7b1e129d 448bc2          mov     r8d,edx
00007ffe`7b1e12a0 8910            mov     dword ptr [rax],edx
00007ffe`7b1e12a2 8b08            mov     ecx,dword ptr [rax]
00007ffe`7b1e12a4 8b50fc          mov     edx,dword ptr [rax-4]
00007ffe`7b1e12a7 4103d5          add     edx,r13d
00007ffe`7b1e12aa 443bc2          cmp     r8d,edx
00007ffe`7b1e12ad 0f4fca          cmovg   ecx,edx
00007ffe`7b1e12b0 41ffc2          inc     r10d
00007ffe`7b1e12b3 8908            mov     dword ptr [rax],ecx
00007ffe`7b1e12b5 49ffc1          inc     r9
00007ffe`7b1e12b8 4883c004        add     rax,4
00007ffe`7b1e12bc 4c3bcb          cmp     r9,rbx
00007ffe`7b1e12bf 0f8c7bffffff    jl      levenshtein_C!levenshtein_C+0x210 (00007ffe`7b1e1240)
00007ffe`7b1e12c5 4c8b642438      mov     r12,qword ptr [rsp+38h]
00007ffe`7b1e12ca 488b542430      mov     rdx,qword ptr [rsp+30h]
00007ffe`7b1e12cf 8b4c2420        mov     ecx,dword ptr [rsp+20h]
00007ffe`7b1e12d3 4c8b442428      mov     r8,qword ptr [rsp+28h]
00007ffe`7b1e12d8 498bc0          mov     rax,r8
00007ffe`7b1e12db 4c89642428      mov     qword ptr [rsp+28h],r12
00007ffe`7b1e12e0 48ffc7          inc     rdi
00007ffe`7b1e12e3 4889542438      mov     qword ptr [rsp+38h],rdx
00007ffe`7b1e12e8 03ce            add     ecx,esi
00007ffe`7b1e12ea 4889442430      mov     qword ptr [rsp+30h],rax
00007ffe`7b1e12ef 4d8bc4          mov     r8,r12
00007ffe`7b1e12f2 894c2420        mov     dword ptr [rsp+20h],ecx
00007ffe`7b1e12f6 4c8be2          mov     r12,rdx
00007ffe`7b1e12f9 488bd0          mov     rdx,rax
00007ffe`7b1e12fc 498d043e        lea     rax,[r14+rdi]
00007ffe`7b1e1300 483b442440      cmp     rax,qword ptr [rsp+40h]
00007ffe`7b1e1305 0f8c05ffffff    jl      levenshtein_C!levenshtein_C+0x1e0 (00007ffe`7b1e1210)
00007ffe`7b1e130b 418b1c9c        mov     ebx,dword ptr [r12+rbx*4]
00007ffe`7b1e130f 498bc8          mov     rcx,r8
00007ffe`7b1e1312 ff15901d0000    call    qword ptr [levenshtein_C!_imp_free (00007ffe`7b1e30a8)]
00007ffe`7b1e1318 498bcc          mov     rcx,r12
00007ffe`7b1e131b ff15871d0000    call    qword ptr [levenshtein_C!_imp_free (00007ffe`7b1e30a8)]
00007ffe`7b1e1321 488b4c2430      mov     rcx,qword ptr [rsp+30h]
00007ffe`7b1e1326 ff157c1d0000    call    qword ptr [levenshtein_C!_imp_free (00007ffe`7b1e30a8)]
00007ffe`7b1e132c 0f28742450      movaps  xmm6,xmmword ptr [rsp+50h]
00007ffe`7b1e1331 8bc3            mov     eax,ebx
00007ffe`7b1e1333 488b9c24a0000000 mov     rbx,qword ptr [rsp+0A0h]
00007ffe`7b1e133b 4883c460        add     rsp,60h
00007ffe`7b1e133f 415f            pop     r15
00007ffe`7b1e1341 415e            pop     r14
00007ffe`7b1e1343 415d            pop     r13
00007ffe`7b1e1345 415c            pop     r12
00007ffe`7b1e1347 5f              pop     rdi
00007ffe`7b1e1348 5e              pop     rsi
00007ffe`7b1e1349 5d              pop     rbp
00007ffe`7b1e134a c3              ret
00007ffe`7b1e134b cc              int     3
