.pos 0x100
                 ld   $a, r0              # r0 = a address
                 ld   $p, r1              # r1 = p address
                 ld   $b, r2              # r2 = b address
                 ld   $0x3, r3            # r3 = 3
                 st   r3, 0x0(r0)         # a = 3
                 st   r0, 0x0(r1)         # p = &a
                 dec  r3                  # r3 = 2
                 st   r3, 0x0(r0)         # a = a - 1 = 2
                 st   r2, 0x0(r1)         # p = &b[0]
                 ld   $b, r4              # r4 = & b = p
                 inca r4                  # r4 = & b + 4 = p++
                 st   r4, 0x0(r1)         # p = & p++
                 mov  r4, r7              # r7 = r4
                 mov  r3, r6              # r6 = r3 = a
                 shl  $2, r3              # r3 = r3 * 4
                 add  r3, r4              # r4 = r3 + r4 = & p[a]
                 ld   (r2, r6, 4), r5     # r5 = b[a]
                 st   r5, 0x0(r4)         # p[a] = b[a]
                 ld   $0x3, r6            # r6 = 3
                 shl  $2, r6              # r6 = 3 * 4
                 add  r6, r7              # r7 = & p + 3
                 ld   0x0(r2), r5         # r5 = b[0]
                 st   r5, 0x0(r7)         # *(p+3) = b[0]
                 halt                     # halt
.pos 0x1000
a:               .long 0x2                # a
p:               .long 0x2000             # p
.pos 0x2000
b:               .long 0x1                # b[0]
                 .long 0x2                # b[1]
                 .long 0x3                # b[2]
                 .long 0x3                # b[3]
                 .long 0x1                # b[4]
