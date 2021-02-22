.pos 0x100
                 ld   $tmp, r0            # r0 = tmp address
                 ld   $tos, r1            # r1 = tos address
                 ld   $a, r2              # r2 = a address
                 ld   $s, r3              # r3 = s address
                 ld   $0x0, r4            # r4 = 0
                 st   r4, 0x0(r1)         # tos = 0
                 st   r4, 0x0(r0)         # tmp = 0
                 ld   0x0(r2), r5         # r5 = a[0]
                 st   r5, (r3, r4, 4)     # s[tos] = a[0]
                 inc  r4                  # r4 = 1
                 st   r4, 0x0(r1)         # tos++
                 ld   (r2, r4, 4), r5     # r5 = a[1]
                 st   r5, (r3, r4, 4)     # s[tos] = a[1]
                 inc  r4                  # r4 = 2
                 st   r4, 0x0(r1)         # tos++
                 ld   (r2, r4, 4), r5     # r5 = a[2]
                 st   r5, (r3, r4, 4)     # s[tos] = a[2]
                 inc  r4                  # r4 = 3
                 st   r4, 0x0(r1)         # tos++
                 dec  r4                  # r4 = 2
                 st   r4, 0x0(r1)         # tos--
                 ld   (r3, r4, 4), r6     # r6 = s[tos]
                 st   r6, 0x0(r0)         # tmp = s[tos]
                 dec  r4                  # r4 = 1
                 st   r4, 0x0(r1)         # tos--
                 ld   (r3, r4, 4), r7     # r7 = s[tos]
                 add  r7, r6              # r6 = r6 + s[tos]
                 st   r6, 0x0(r0)         # tmp = tmp + s[tos]
                 dec  r4                  # r4 = 0
                 st   r4, 0x0(r1)         # tos--
                 ld   (r3, r4, 4), r7     # r7 = s[tos]
                 add  r6, r7              # r7 = tmp + s[tos]
                 st   r7, 0x0(r0)         # tmp = r7
                 halt                     # halt
.pos 0x1000
tos:             .long 0x0                # i
tmp:             .long 0x6                # j
.pos 0x2000
a:               .long 0x1                # a[0]
                 .long 0x2                # a[1]
                 .long 0x3                # a[2]
s:               .long 0x1                # s[0]
                 .long 0x2                # s[1]
                 .long 0x3                # s[2]
                 .long 0x4                # s[3]
                 .long 0x5                # s[4]
