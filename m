Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufHN-00044W-Nd
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 07:48:10 +0000
Date: Fri, 27 Jul 2012 09:48:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727074805.GU30009@pengutronix.de>
References: <1343253627-5247-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343253627-5247-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: add initial exceptions handling
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

Looks fine from my perspective. Should I apply this one?

Sascha

On Thu, Jul 26, 2012 at 02:00:27AM +0400, Antony Pavlov wrote:
> Checking exception handling:
> 
>     $ make qemu-malta_defconfig
>     $ make
> 
>     ...
> 
>     $ qemu-system-mips -nodefaults -M malta -m 256 \
>        -nographic -serial stdio -bios ./barebox.bin
> 
>     ...
> 
>     barebox:/ md -l 0x03
> 
>     Ooops, address error on load or ifetch!
>     EPC = 0xa082783c
>     CP0_STATUS = 0x00000006
>     CP0_CAUSE = 0x00000410
>     CP0_CONFIG = 0x80008482
> 
>     ### ERROR ### Please RESET the board ###
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boot/main_entry.c       |   47 ++++++++++++++++
>  arch/mips/include/asm/addrspace.h |  109 +++++++++++++++++++++++++++++++++++++
>  arch/mips/lib/Makefile            |    2 +
>  arch/mips/lib/genex.S             |   31 +++++++++++
>  arch/mips/lib/traps.c             |  107 ++++++++++++++++++++++++++++++++++++
>  5 files changed, 296 insertions(+)
>  create mode 100644 arch/mips/include/asm/addrspace.h
>  create mode 100644 arch/mips/lib/genex.S
>  create mode 100644 arch/mips/lib/traps.c
> 
> diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
> index 8f5f6fc..a38ad31 100644
> --- a/arch/mips/boot/main_entry.c
> +++ b/arch/mips/boot/main_entry.c
> @@ -25,11 +25,56 @@
>  #include <string.h>
>  #include <asm/sections.h>
>  #include <asm/cpu-features.h>
> +#include <asm/mipsregs.h>
> +#include <asm/addrspace.h>
>  
>  extern void start_barebox(void);
> +extern void handle_reserved(void);
>  
>  void main_entry(void);
>  
> +unsigned long exception_handlers[32];
> +
> +static void set_except_vector(int n, void *addr)
> +{
> +	unsigned handler = (unsigned long) addr;
> +
> +	exception_handlers[n] = handler;
> +}
> +
> +static void trap_init(void)
> +{
> +	extern char except_vec3_generic;
> +	int i;
> +
> +	unsigned long ebase;
> +
> +	ebase = CKSEG1;
> +
> +	/*
> +	 * Copy the generic exception handlers to their final destination.
> +	 * This will be overriden later as suitable for a particular
> +	 * configuration.
> +	 */
> +	memcpy((void *)(ebase + 0x180), &except_vec3_generic, 0x80);
> +
> +	/*
> +	 * Setup default vectors
> +	 */
> +	for (i = 0; i <= 31; i++) {
> +		set_except_vector(i, &handle_reserved);
> +	}
> +
> +	if (!cpu_has_4kex)
> +		memcpy((void *)(ebase + 0x080), &except_vec3_generic, 0x80);
> +
> +	/* FIXME: handle tlb */
> +	memcpy((void *)(ebase), &except_vec3_generic, 0x80);
> +
> +	/* unset BOOT EXCEPTION VECTOR bit */
> +	write_c0_status(read_c0_status() & ~ST0_BEV);
> +}
> +
>  /**
>   * Called plainly from assembler code
>   *
> @@ -48,5 +93,7 @@ void main_entry(void)
>  		r4k_cache_init();
>  	}
>  
> +	trap_init();
> +
>  	start_barebox();
>  }
> diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
> new file mode 100644
> index 0000000..17d480d
> --- /dev/null
> +++ b/arch/mips/include/asm/addrspace.h
> @@ -0,0 +1,109 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General Public
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 1996, 99 Ralf Baechle
> + * Copyright (C) 2000, 2002  Maciej W. Rozycki
> + * Copyright (C) 1990, 1999 by Silicon Graphics, Inc.
> + */
> +#ifndef _ASM_ADDRSPACE_H
> +#define _ASM_ADDRSPACE_H
> +
> +/*
> + *  Configure language
> + */
> +#ifdef __ASSEMBLY__
> +#define _ATYPE_
> +#define _ATYPE32_
> +#define _ATYPE64_
> +#define _CONST64_(x)	x
> +#else
> +#define _ATYPE_		__PTRDIFF_TYPE__
> +#define _ATYPE32_	int
> +#define _ATYPE64_	__s64
> +#ifdef CONFIG_64BIT
> +#define _CONST64_(x)	x ## L
> +#else
> +#define _CONST64_(x)	x ## LL
> +#endif
> +#endif
> +
> +/*
> + *  32-bit MIPS address spaces
> + */
> +#ifdef __ASSEMBLY__
> +#define _ACAST32_
> +#define _ACAST64_
> +#else
> +#define _ACAST32_		(_ATYPE_)(_ATYPE32_)	/* widen if necessary */
> +#define _ACAST64_		(_ATYPE64_)		/* do _not_ narrow */
> +#endif
> +
> +/*
> + * Returns the kernel segment base of a given address
> + */
> +#define KSEGX(a)		((_ACAST32_(a)) & 0xe0000000)
> +
> +/*
> + * Returns the physical address of a CKSEGx / XKPHYS address
> + */
> +#define CPHYSADDR(a)		((_ACAST32_(a)) & 0x1fffffff)
> +#define XPHYSADDR(a)            ((_ACAST64_(a)) &			\
> +				 _CONST64_(0x000000ffffffffff))
> +
> +#ifdef CONFIG_64BIT
> +
> +/*
> + * Memory segments (64bit kernel mode addresses)
> + * The compatibility segments use the full 64-bit sign extended value.  Note
> + * the R8000 doesn't have them so don't reference these in generic MIPS code.
> + */
> +#define XKUSEG			_CONST64_(0x0000000000000000)
> +#define XKSSEG			_CONST64_(0x4000000000000000)
> +#define XKPHYS			_CONST64_(0x8000000000000000)
> +#define XKSEG			_CONST64_(0xc000000000000000)
> +#define CKSEG0			_CONST64_(0xffffffff80000000)
> +#define CKSEG1			_CONST64_(0xffffffffa0000000)
> +#define CKSSEG			_CONST64_(0xffffffffc0000000)
> +#define CKSEG3			_CONST64_(0xffffffffe0000000)
> +
> +#define CKSEG0ADDR(a)		(CPHYSADDR(a) | CKSEG0)
> +#define CKSEG1ADDR(a)		(CPHYSADDR(a) | CKSEG1)
> +#define CKSEG2ADDR(a)		(CPHYSADDR(a) | CKSEG2)
> +#define CKSEG3ADDR(a)		(CPHYSADDR(a) | CKSEG3)
> +
> +#else
> +
> +#define CKSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
> +#define CKSEG1ADDR(a)		(CPHYSADDR(a) | KSEG1)
> +#define CKSEG2ADDR(a)		(CPHYSADDR(a) | KSEG2)
> +#define CKSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
> +
> +/*
> + * Map an address to a certain kernel segment
> + */
> +#define KSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
> +#define KSEG1ADDR(a)		(CPHYSADDR(a) | KSEG1)
> +#define KSEG2ADDR(a)		(CPHYSADDR(a) | KSEG2)
> +#define KSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
> +
> +/*
> + * Memory segments (32bit kernel mode addresses)
> + * These are the traditional names used in the 32-bit universe.
> + */
> +#define KUSEG			0x00000000
> +#define KSEG0			0x80000000
> +#define KSEG1			0xa0000000
> +#define KSEG2			0xc0000000
> +#define KSEG3			0xe0000000
> +
> +#define CKUSEG			0x00000000
> +#define CKSEG0			0x80000000
> +#define CKSEG1			0xa0000000
> +#define CKSEG2			0xc0000000
> +#define CKSEG3			0xe0000000
> +
> +#endif
> +
> +#endif /* _ASM_ADDRSPACE_H */
> diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> index b99bb71..a31046b 100644
> --- a/arch/mips/lib/Makefile
> +++ b/arch/mips/lib/Makefile
> @@ -5,6 +5,8 @@ obj-y += ashldi3.o
>  obj-y += ashrdi3.o
>  obj-y += memory.o
>  obj-y += cpu-probe.o
> +obj-y += traps.o
> +obj-y += genex.o
>  
>  obj-$(CONFIG_CPU_MIPS32) += c-r4k.o
>  obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
> diff --git a/arch/mips/lib/genex.S b/arch/mips/lib/genex.S
> new file mode 100644
> index 0000000..d6f65a2
> --- /dev/null
> +++ b/arch/mips/lib/genex.S
> @@ -0,0 +1,31 @@
> +#include <asm/asm.h>
> +#include <asm/regdef.h>
> +#include <asm/mipsregs.h>
> +
> +	.text
> +	.set	macro
> +	.set	noat
> +	.set	noreorder
> +	.align	5
> +
> +/* Exception vector */
> +NESTED(handle_reserved, 0, sp)
> +	la	k0, barebox_exc_handler
> +	jal	k0
> +	 move	a0, sp
> +	/* will never return here */
> +	END(handle_reserved)
> +
> +/* General exception vector */
> +NESTED(except_vec3_generic, 0, sp)
> +	.set	noat
> +	mfc0	k1, CP0_CAUSE
> +	la	k0, exception_handlers
> +	andi	k1, k1, 0x7c
> +	addu	k0, k0, k1
> +	lw	k0, (k0)
> +	nop
> +	jr	k0
> +	 nop
> +	END(except_vec3_generic)
> +	.set	at
> diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
> new file mode 100644
> index 0000000..4e167cc
> --- /dev/null
> +++ b/arch/mips/lib/traps.c
> @@ -0,0 +1,107 @@
> +#include <common.h>
> +
> +#include <asm/mipsregs.h>
> +
> +void barebox_exc_handler(void *regs);
> +
> +/*
> + * Trap codes from OpenBSD trap.h
> + */
> +#define T_INT			0	/* Interrupt pending */
> +#define T_TLB_MOD		1	/* TLB modified fault */
> +#define T_TLB_LD_MISS		2	/* TLB miss on load or ifetch */
> +#define T_TLB_ST_MISS		3	/* TLB miss on a store */
> +#define T_ADDR_ERR_LD		4	/* Address error on a load or ifetch */
> +#define T_ADDR_ERR_ST		5	/* Address error on a store */
> +#define T_BUS_ERR_IFETCH	6	/* Bus error on an ifetch */
> +#define T_BUS_ERR_LD_ST		7	/* Bus error on a load or store */
> +#define T_SYSCALL		8	/* System call */
> +#define T_BREAK			9	/* Breakpoint */
> +#define T_RES_INST		10	/* Reserved instruction exception */
> +#define T_COP_UNUSABLE		11	/* Coprocessor unusable */
> +#define T_OVFLOW		12	/* Arithmetic overflow */
> +#define T_TRAP			13	/* Trap instruction */
> +#define T_VCEI			14	/* Virtual coherency instruction */
> +#define T_FPE			15	/* Floating point exception */
> +#define T_IWATCH		16	/* Inst. Watch address reference */
> +#define T_DWATCH		23	/* Data Watch address reference */
> +#define T_VCED			31	/* Virtual coherency data */
> +
> +#define CR_EXC_CODE             0x0000007c
> +#define CR_EXC_CODE_SHIFT       2
> +
> +static char *get_exc_name(u32 cause)
> +{
> +	switch ((cause & CR_EXC_CODE) >> CR_EXC_CODE_SHIFT) {
> +
> +	case T_INT:
> +		return "interrupt pending";
> +
> +	case T_TLB_MOD:
> +		return "TLB modified";
> +
> +	case T_TLB_LD_MISS:
> +		return "TLB miss on load or ifetch";
> +
> +	case T_TLB_ST_MISS:
> +		return "TLB miss on store";
> +
> +	case T_ADDR_ERR_LD:
> +		return "address error on load or ifetch";
> +
> +	case T_ADDR_ERR_ST:
> +		return "address error on store";
> +
> +	case T_BUS_ERR_IFETCH:
> +		return "bus error on ifetch";
> +
> +	case T_BUS_ERR_LD_ST:
> +		return "bus error on load or store";
> +
> +	case T_SYSCALL:
> +		return "system call";
> +
> +	case T_BREAK:
> +		return "breakpoint";
> +
> +	case T_RES_INST:
> +		return "reserved instruction";
> +
> +	case T_COP_UNUSABLE:
> +		return "coprocessor unusable";
> +
> +	case T_OVFLOW:
> +		return "arithmetic overflow";
> +
> +	case T_TRAP:
> +		return "trap instruction";
> +
> +	case T_VCEI:
> +		return "virtual coherency instruction";
> +
> +	case T_FPE:
> +		return "floating point";
> +
> +	case T_IWATCH:
> +		return "iwatch";
> +
> +	case T_DWATCH:
> +		return "dwatch";
> +
> +	case T_VCED:
> +		return "virtual coherency data";
> +	}
> +
> +	return "unknown exception";
> +}
> +
> +void barebox_exc_handler(void *regs)
> +{
> +	printf("\nOoops, %s!\n", get_exc_name(read_c0_cause()));
> +	printf("EPC = 0x%08x\n", read_c0_epc());
> +	printf("CP0_STATUS = 0x%08x\n", read_c0_status());
> +	printf("CP0_CAUSE = 0x%08x\n", read_c0_cause());
> +	printf("CP0_CONFIG = 0x%08x\n\n", read_c0_config());
> +
> +	hang();
> +}
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
