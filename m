Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a1Wdd-0008F7-5X
 for barebox@lists.infradead.org; Wed, 25 Nov 2015 09:45:24 +0000
Received: by lfaz4 with SMTP id z4so53580852lfa.0
 for <barebox@lists.infradead.org>; Wed, 25 Nov 2015 01:44:59 -0800 (PST)
Date: Wed, 25 Nov 2015 13:08:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151125130846.3fa41b83b9a3f0deab377b38@gmail.com>
In-Reply-To: <1448454202-1133-1-git-send-email-rndfax@yandex.ru>
References: <1448454202-1133-1-git-send-email-rndfax@yandex.ru>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: import optimized string functions from Linux
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, 25 Nov 2015 15:23:22 +0300
Aleksey Kuleshov <rndfax@yandex.ru> wrote:

> 10x performance gain according to simple test on QEMU malta:
> barebox:/ time memcpy 0xa0000000 0xa0001000 0x100000

Next time please add a version tag when resending patches, see this for det=
ails:
   http://wiki.qemu.org/Contribute/SubmitAPatch#When_resending_patches_add_=
a_version_tag

I need some time to examine this patch against latest linux kernel sources.

> Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
> ---
>  arch/mips/Kconfig              |   8 ++
>  arch/mips/include/asm/string.h |   9 +-
>  arch/mips/lib/Makefile         |   3 +
>  arch/mips/lib/memcpy.S         | 276 +++++++++++++++++++++++++++++++++++=
++++++
>  arch/mips/lib/memset.S         | 146 ++++++++++++++++++++++
>  5 files changed, 441 insertions(+), 1 deletion(-)
>  create mode 100644 arch/mips/lib/memcpy.S
>  create mode 100644 arch/mips/lib/memset.S
> =

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index a2d443f..fdf62e8 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -331,6 +331,14 @@ config NMON_HELP
>  	  Say yes here to get the nmon commands message on
>  	  every nmon start.
>  =

> +config MIPS_OPTIMIZED_STRING_FUNCTIONS
> +	bool "use assembler optimized string functions"
> +	default y
> +	help
> +	  Say yes here to use assembler optimized memcpy / memset functions.
> +	  These functions work much faster than the normal versions but
> +	  increase your binary size.
> +
>  endmenu
>  =

>  source common/Kconfig
> diff --git a/arch/mips/include/asm/string.h b/arch/mips/include/asm/strin=
g.h
> index 3a32d18..a797a74 100644
> --- a/arch/mips/include/asm/string.h
> +++ b/arch/mips/include/asm/string.h
> @@ -22,6 +22,13 @@
>  #ifndef __ASM_MIPS_STRING_H
>  #define __ASM_MIPS_STRING_H
>  =

> -/* nothing special yet */
> +#ifdef CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS
> +
> +#define __HAVE_ARCH_MEMCPY
> +extern void *memcpy(void *, const void *, __kernel_size_t);
> +#define __HAVE_ARCH_MEMSET
> +extern void *memset(void *, int, __kernel_size_t);
> +
> +#endif
>  =

>  #endif
> diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> index 0145f35..02ee189 100644
> --- a/arch/mips/lib/Makefile
> +++ b/arch/mips/lib/Makefile
> @@ -7,6 +7,9 @@ obj-y +=3D cpu-probe.o
>  obj-y +=3D traps.o
>  obj-y +=3D genex.o
>  =

> +obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) +=3D memcpy.o
> +obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) +=3D memset.o
> +
>  obj-$(CONFIG_CPU_MIPS32) +=3D c-r4k.o
>  obj-$(CONFIG_CPU_MIPS64) +=3D c-r4k.o
>  =

> diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
> new file mode 100644
> index 0000000..a5af0c9
> --- /dev/null
> +++ b/arch/mips/lib/memcpy.S
> @@ -0,0 +1,276 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General P=
ublic
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 1998, 99, 2000, 01, 2002 Ralf Baechle (ralf@gnu.org)
> + * Copyright (C) 1999, 2000, 01, 2002 Silicon Graphics, Inc.
> + * Copyright (C) 2002 Broadcom, Inc.
> + *   memcpy/copy_user author: Mark Vandevoorde
> + * Copyright (C) 2007  Maciej W. Rozycki
> + * Copyright (C) 2014 Imagination Technologies Ltd.
> + *
> + * Kernel-mode memcpy function without exceptions for _some_ MIPS CPUs
> + * by Aleksey Kuleshov (rndfax@yandex.ru), 2015
> + *
> + */
> +
> +#include <asm/asm.h>
> +#include <asm/asm-offsets.h>
> +#include <asm/regdef.h>
> +
> +#define dst a0
> +#define src a1
> +#define len a2
> +
> +#define LOADK lw /* No exception */
> +#define LOAD(reg, addr)		lw reg, addr
> +#define LOADL(reg, addr)	lwl reg, addr
> +#define LOADR(reg, addr)	lwr reg, addr
> +#define STOREL(reg, addr)	swl reg, addr
> +#define STORER(reg, addr)	swr reg, addr
> +#define STORE(reg, addr)	sw reg, addr
> +#define ADD    addu
> +#define SUB    subu
> +#define SRL    srl
> +#define SLL    sll
> +#define SRA    sra
> +#define SLLV   sllv
> +#define SRLV   srlv
> +#define NBYTES 4
> +#define LOG_NBYTES 2
> +
> +#define LOADB(reg, addr)	lb reg, addr
> +#define STOREB(reg, addr)	sb reg, addr
> +
> +#ifdef CONFIG_CPU_LITTLE_ENDIAN
> +#define LDFIRST LOADR
> +#define LDREST	LOADL
> +#define STFIRST STORER
> +#define STREST	STOREL
> +#define SHIFT_DISCARD SLLV
> +#else
> +#define LDFIRST LOADL
> +#define LDREST	LOADR
> +#define STFIRST STOREL
> +#define STREST	STORER
> +#define SHIFT_DISCARD SRLV
> +#endif
> +
> +#define FIRST(unit) ((unit)*NBYTES)
> +#define REST(unit)  (FIRST(unit)+NBYTES-1)
> +#define UNIT(unit)  FIRST(unit)
> +
> +#define ADDRMASK (NBYTES-1)
> +
> +	.text
> +	.align	5
> +	.set	noreorder
> +LEAF(memcpy)					/* a0=3Ddst a1=3Dsrc a2=3Dlen */
> +	move	v0, dst				/* return value */
> +
> +	/*
> +	 * Note: dst & src may be unaligned, len may be 0
> +	 * Temps
> +	 */
> +#define rem t8
> +
> +	/*
> +	 * The "issue break"s below are very approximate.
> +	 * Issue delays for dcache fills will perturb the schedule, as will
> +	 * load queue full replay traps, etc.
> +	 *
> +	 * If len < NBYTES use byte operations.
> +	 */
> +	sltu	t2, len, NBYTES
> +	and	t1, dst, ADDRMASK
> +	bnez	t2, .Lcopy_bytes_checklen
> +	 and	t0, src, ADDRMASK
> +	bnez	t1, .Ldst_unaligned
> +	 nop
> +	bnez	t0, .Lsrc_unaligned_dst_aligned
> +	/*
> +	 * use delay slot for fall-through
> +	 * src and dst are aligned; need to compute rem
> +	 */
> +.Lboth_aligned:
> +	 SRL	t0, len, LOG_NBYTES+3	 # +3 for 8 units/iter
> +	beqz	t0, .Lcleanup_both_aligned # len < 8*NBYTES
> +	 and	rem, len, (8*NBYTES-1)	 # rem =3D len % (8*NBYTES)
> +	.align	4
> +1:
> +	LOAD(t0, UNIT(0)(src))
> +	LOAD(t1, UNIT(1)(src))
> +	LOAD(t2, UNIT(2)(src))
> +	LOAD(t3, UNIT(3)(src))
> +	SUB	len, len, 8*NBYTES
> +	LOAD(t4, UNIT(4)(src))
> +	LOAD(t7, UNIT(5)(src))
> +	STORE(t0, UNIT(0)(dst))
> +	STORE(t1, UNIT(1)(dst))
> +	LOAD(t0, UNIT(6)(src))
> +	LOAD(t1, UNIT(7)(src))
> +	ADD	src, src, 8*NBYTES
> +	ADD	dst, dst, 8*NBYTES
> +	STORE(t2, UNIT(-6)(dst))
> +	STORE(t3, UNIT(-5)(dst))
> +	STORE(t4, UNIT(-4)(dst))
> +	STORE(t7, UNIT(-3)(dst))
> +	STORE(t0, UNIT(-2)(dst))
> +	STORE(t1, UNIT(-1)(dst))
> +	bne	len, rem, 1b
> +	 nop
> +
> +	/*
> +	 * len =3D=3D rem =3D=3D the number of bytes left to copy < 8*NBYTES
> +	 */
> +.Lcleanup_both_aligned:
> +	beqz	len, .Ldone
> +	 sltu	t0, len, 4*NBYTES
> +	bnez	t0, .Lless_than_4units
> +	 and	rem, len, (NBYTES-1)	# rem =3D len % NBYTES
> +	/*
> +	 * len >=3D 4*NBYTES
> +	 */
> +	LOAD( t0, UNIT(0)(src))
> +	LOAD( t1, UNIT(1)(src))
> +	LOAD( t2, UNIT(2)(src))
> +	LOAD( t3, UNIT(3)(src))
> +	SUB	len, len, 4*NBYTES
> +	ADD	src, src, 4*NBYTES
> +	STORE(t0, UNIT(0)(dst))
> +	STORE(t1, UNIT(1)(dst))
> +	STORE(t2, UNIT(2)(dst))
> +	STORE(t3, UNIT(3)(dst))
> +	.set	reorder				/* DADDI_WAR */
> +	ADD	dst, dst, 4*NBYTES
> +	beqz	len, .Ldone
> +	.set	noreorder
> +.Lless_than_4units:
> +	/*
> +	 * rem =3D len % NBYTES
> +	 */
> +	beq	rem, len, .Lcopy_bytes
> +	 nop
> +1:
> +	LOAD(t0, 0(src))
> +	ADD	src, src, NBYTES
> +	SUB	len, len, NBYTES
> +	STORE(t0, 0(dst))
> +	.set	reorder				/* DADDI_WAR */
> +	ADD	dst, dst, NBYTES
> +	bne	rem, len, 1b
> +	.set	noreorder
> +
> +	/*
> +	 * src and dst are aligned, need to copy rem bytes (rem < NBYTES)
> +	 * A loop would do only a byte at a time with possible branch
> +	 * mispredicts.	 Can't do an explicit LOAD dst,mask,or,STORE
> +	 * because can't assume read-access to dst.  Instead, use
> +	 * STREST dst, which doesn't require read access to dst.
> +	 *
> +	 * This code should perform better than a simple loop on modern,
> +	 * wide-issue mips processors because the code has fewer branches and
> +	 * more instruction-level parallelism.
> +	 */
> +#define bits t2
> +	beqz	len, .Ldone
> +	 ADD	t1, dst, len	# t1 is just past last byte of dst
> +	li	bits, 8*NBYTES
> +	SLL	rem, len, 3	# rem =3D number of bits to keep
> +	LOAD(t0, 0(src))
> +	SUB	bits, bits, rem # bits =3D number of bits to discard
> +	SHIFT_DISCARD t0, t0, bits
> +	STREST(t0, -1(t1))
> +	jr	ra
> +	 move	len, zero
> +.Ldst_unaligned:
> +	/*
> +	 * dst is unaligned
> +	 * t0 =3D src & ADDRMASK
> +	 * t1 =3D dst & ADDRMASK; T1 > 0
> +	 * len >=3D NBYTES
> +	 *
> +	 * Copy enough bytes to align dst
> +	 * Set match =3D (src and dst have same alignment)
> +	 */
> +#define match rem
> +	LDFIRST(t3, FIRST(0)(src))
> +	ADD	t2, zero, NBYTES
> +	LDREST(t3, REST(0)(src))
> +	SUB	t2, t2, t1	# t2 =3D number of bytes copied
> +	xor	match, t0, t1
> +	STFIRST(t3, FIRST(0)(dst))
> +	beq	len, t2, .Ldone
> +	 SUB	len, len, t2
> +	ADD	dst, dst, t2
> +	beqz	match, .Lboth_aligned
> +	 ADD	src, src, t2
> +
> +.Lsrc_unaligned_dst_aligned:
> +	SRL	t0, len, LOG_NBYTES+2	 # +2 for 4 units/iter
> +	beqz	t0, .Lcleanup_src_unaligned
> +	 and	rem, len, (4*NBYTES-1)	 # rem =3D len % 4*NBYTES
> +1:
> +/*
> + * Avoid consecutive LD*'s to the same register since some mips
> + * implementations can't issue them in the same cycle.
> + * It's OK to load FIRST(N+1) before REST(N) because the two addresses
> + * are to the same unit (unless src is aligned, but it's not).
> + */
> +	LDFIRST(t0, FIRST(0)(src))
> +	LDFIRST(t1, FIRST(1)(src))
> +	SUB	len, len, 4*NBYTES
> +	LDREST(t0, REST(0)(src))
> +	LDREST(t1, REST(1)(src))
> +	LDFIRST(t2, FIRST(2)(src))
> +	LDFIRST(t3, FIRST(3)(src))
> +	LDREST(t2, REST(2)(src))
> +	LDREST(t3, REST(3)(src))
> +	ADD	src, src, 4*NBYTES
> +	STORE(t0, UNIT(0)(dst))
> +	STORE(t1, UNIT(1)(dst))
> +	STORE(t2, UNIT(2)(dst))
> +	STORE(t3, UNIT(3)(dst))
> +	.set	reorder				/* DADDI_WAR */
> +	ADD	dst, dst, 4*NBYTES
> +	bne	len, rem, 1b
> +	.set	noreorder
> +
> +.Lcleanup_src_unaligned:
> +	beqz	len, .Ldone
> +	 and	rem, len, NBYTES-1  # rem =3D len % NBYTES
> +	beq	rem, len, .Lcopy_bytes
> +	 nop
> +1:
> +	LDFIRST(t0, FIRST(0)(src))
> +	LDREST(t0, REST(0)(src))
> +	ADD	src, src, NBYTES
> +	SUB	len, len, NBYTES
> +	STORE(t0, 0(dst))
> +	.set	reorder				/* DADDI_WAR */
> +	ADD	dst, dst, NBYTES
> +	bne	len, rem, 1b
> +	.set	noreorder
> +
> +.Lcopy_bytes_checklen:
> +	beqz	len, .Ldone
> +	 nop
> +.Lcopy_bytes:
> +	/* 0 < len < NBYTES  */
> +#define COPY_BYTE(N)			\
> +	LOADB(t0, N(src));	\
> +	SUB	len, len, 1;		\
> +	beqz	len, .Ldone;		\
> +	STOREB(t0, N(dst))
> +
> +	COPY_BYTE(0)
> +	COPY_BYTE(1)
> +	LOADB(t0, NBYTES-2(src))
> +	SUB	len, len, 1
> +	jr	ra
> +	STOREB(t0, NBYTES-2(dst))
> +.Ldone:
> +	jr	ra
> +	 nop
> +	END(memcpy)
> diff --git a/arch/mips/lib/memset.S b/arch/mips/lib/memset.S
> new file mode 100644
> index 0000000..d3c1c72
> --- /dev/null
> +++ b/arch/mips/lib/memset.S
> @@ -0,0 +1,146 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General P=
ublic
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 1998, 1999, 2000 by Ralf Baechle
> + * Copyright (C) 1999, 2000 Silicon Graphics, Inc.
> + * Copyright (C) 2007 by Maciej W. Rozycki
> + * Copyright (C) 2011, 2012 MIPS Technologies, Inc.
> + *
> + * Kernel-mode memset function without exceptions
> + * by Aleksey Kuleshov (rndfax@yandex.ru), 2015
> + */
> +#include <asm/asm.h>
> +#include <asm/asm-offsets.h>
> +#include <asm/regdef.h>
> +
> +#if LONGSIZE =3D=3D 4
> +#define LONG_S_L swl
> +#define LONG_S_R swr
> +#else
> +#define LONG_S_L sdl
> +#define LONG_S_R sdr
> +#endif
> +
> +#define STORSIZE LONGSIZE
> +#define STORMASK LONGMASK
> +#define FILL64RG a1
> +#define FILLPTRG t0
> +
> +/*
> + * memset(void *s, int c, size_t n)
> + *
> + * a0: start of area to clear
> + * a1: char to fill with
> + * a2: size of area to clear
> + */
> +
> +LEAF(memset)
> +	beqz		a1, 1f
> +	move		v0, a0			/* result */
> +
> +	andi		a1, 0xff		/* spread fillword */
> +	LONG_SLL		t1, a1, 8
> +	or		a1, t1
> +	LONG_SLL		t1, a1, 16
> +#if LONGSIZE =3D=3D 8
> +	or		a1, t1
> +	LONG_SLL		t1, a1, 32
> +#endif
> +	or		a1, t1
> +
> +	.macro	f_fill64 dst, offset, val
> +	LONG_S	\val, (\offset +  0 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  1 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  2 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  3 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  4 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  5 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  6 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  7 * STORSIZE)(\dst)
> +#if (LONGSIZE =3D=3D 4)
> +	LONG_S	\val, (\offset +  8 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset +  9 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 10 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 11 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 12 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 13 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 14 * STORSIZE)(\dst)
> +	LONG_S	\val, (\offset + 15 * STORSIZE)(\dst)
> +#endif
> +	.endm
> +
> +	.set	noreorder
> +	.align	5
> +
> +1:
> +	sltiu		t0, a2, STORSIZE	/* very small region? */
> +	bnez		t0, .Lsmall_memset
> +	andi		t0, a0, STORMASK	/* aligned? */
> +
> +	beqz		t0, 1f
> +	PTR_SUBU	t0, STORSIZE		/* alignment in bytes */
> +
> +#ifdef __MIPSEB__
> +	LONG_S_L	a1, (a0)		/* make word/dword aligned */
> +#else
> +	LONG_S_R	a1, (a0)		/* make word/dword aligned */
> +#endif
> +	PTR_SUBU	a0, t0			/* long align ptr */
> +	PTR_ADDU	a2, t0			/* correct size */
> +
> +1:	ori		t1, a2, 0x3f		/* # of full blocks */
> +	xori		t1, 0x3f
> +	beqz		t1, .Lmemset_partial	/* no block to fill */
> +	andi		t0, a2, 0x40-STORSIZE
> +
> +	PTR_ADDU	t1, a0			/* end address */
> +	.set		reorder
> +1:	PTR_ADDIU	a0, 64
> +	f_fill64 a0, -64, FILL64RG
> +	bne		t1, a0, 1b
> +	.set		noreorder
> +
> +.Lmemset_partial:
> +	PTR_LA		t1, 2f			/* where to start */
> +#if LONGSIZE =3D=3D 4
> +	PTR_SUBU	t1, FILLPTRG
> +#else
> +	.set		noat
> +	LONG_SRL	AT, FILLPTRG, 1
> +	PTR_SUBU	t1, AT
> +	.set		at
> +#endif
> +	jr		t1
> +	PTR_ADDU	a0, t0			/* dest ptr */
> +
> +	.set		push
> +	.set		noreorder
> +	.set		nomacro
> +	/* ... but first do longs ... */
> +	f_fill64 a0, -64, FILL64RG
> +2:	.set		pop
> +	andi		a2, STORMASK		/* At most one long to go */
> +
> +	beqz		a2, 1f
> +	PTR_ADDU	a0, a2			/* What's left */
> +#ifdef __MIPSEB__
> +	LONG_S_R	a1, -1(a0)
> +#else
> +	LONG_S_L	a1, -1(a0)
> +#endif
> +1:	jr		ra
> +	move		a2, zero
> +
> +.Lsmall_memset:
> +	beqz		a2, 2f
> +	PTR_ADDU	t1, a0, a2
> +
> +1:	PTR_ADDIU	a0, 1			/* fill bytewise */
> +	bne		t1, a0, 1b
> +	sb		a1, -1(a0)
> +
> +2:	jr		ra			/* done */
> +	move		a2, zero
> +	END(memset)
> -- =

> 2.6.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
