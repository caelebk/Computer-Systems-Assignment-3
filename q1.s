.pos 0x100
                 ld   $a, r0              # r0 = a address
                 ld   $i, r1              # r1 = i address
                 ld   $j, r2              # r2 = j address
                 ld   $p, r3              # r3 = p address
                 ld   0xc(r0), r4         # r4 = a[3] value
                 st   r4, 0x0(r1)         # i = a[3]
                 ld   (r0, r4, 4), r5     # r5 = i value
                 st   r5, 0x0(r1)         # i = a[i]
                 st   r2, 0x0(r3)         # p = & j
                 ld   $0x4, r4            # r4 = 4
                 st   r4, 0x0(r2)         # *p = 4
                 ld   $0x2, r5            # r5 = 2
                 ld   (r0, r5, 4), r5     # r5 = a[2] = 3
                 shl  $2, r5              # r5 = r5 *4
                 add  r0, r5              # r5 = r5 + r0 = & a[3]
                 st   r5, 0x0(r3)         # p = &a[a[2]] = & a[3]
                 ld   0x0(r3), r4         # r4 = &a[3]
                 ld   0x0(r4), r4         # r4 = a[3]
                 ld   $0x4, r7            # r7 = 4
                 ld   (r0, r7, 4), r6     # r6 = a[3]
                 add  r4, r6              # r6 = r4 + r6 = a[3] + a[3]
                 st   r6, 0x0(r5)         # a[3] = r6
                 halt                     # halt
.pos 0x1000
i:               .long 0x5                # i
j:               .long 0x4                # j
p:               .long 0x200c             # p
.pos 0x2000
a:               .long 0x1                # a[0]
                 .long 0x2                # a[1]
                 .long 0x3                # a[2]
                 .long 0x4                # a[3]
                 .long 0x5                # a[4]
                 .long 0x6                # a[5]
                 .long 0x7                # a[6]
                 .long 0x8                # a[7]
                 .long 0x9                # a[8]
                 .long 0xa                # a[9]
