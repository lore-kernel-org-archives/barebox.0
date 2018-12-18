Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZAom-0005uP-1g
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 08:33:33 +0000
References: <20181218071943.2560-1-antonynpavlov@gmail.com>
 <20181218071943.2560-4-antonynpavlov@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <1379a992-3f9b-8189-419b-564e744c48a0@pengutronix.de>
Date: Tue, 18 Dec 2018 09:33:19 +0100
MIME-Version: 1.0
In-Reply-To: <20181218071943.2560-4-antonynpavlov@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 03/10] RISC-V: add low-level debug macros for ns16550
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org



On 18.12.18 08:19, Antony Pavlov wrote:
> This patch adds macros for ns16550 port initialization
> and single char output. The macros can be used in
> MIPS asm pbl code.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>   arch/riscv/include/asm/debug_ll_ns16550.h | 182 ++++++++++++++++++++++
>   1 file changed, 182 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
> new file mode 100644
> index 0000000000..e891cbda25
> --- /dev/null
> +++ b/arch/riscv/include/asm/debug_ll_ns16550.h
> @@ -0,0 +1,182 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */

Just SPDX-License-Identifier and Copyright should be enough

> +/** @file
> + *  This file contains declaration for early output support
> + */
> +#ifndef __INCLUDE_RISCV_ASM_DEBUG_LL_NS16550_H__
> +#define __INCLUDE_RISCV_ASM_DEBUG_LL_NS16550_H__
> +
> +#include <linux/kconfig.h>
> +
> +#ifdef CONFIG_DEBUG_LL
> +
> +#ifndef DEBUG_LL_UART_ADDR
> +#error DEBUG_LL_UART_ADDR is undefined!
> +#endif
> +
> +#ifndef DEBUG_LL_UART_SHIFT
> +#error DEBUG_LL_UART_SHIFT is undefined!
> +#endif
> +
> +#ifndef DEBUG_LL_UART_DIVISOR
> +#error DEBUG_LL_UART_DIVISOR is undefined!
> +#endif
> +
> +#endif /* CONFIG_DEBUG_LL */
> +
> +#define UART_THR	(0x0 << DEBUG_LL_UART_SHIFT)
> +#define UART_RBR	(0x0 << DEBUG_LL_UART_SHIFT)
> +#define UART_DLL	(0x0 << DEBUG_LL_UART_SHIFT)
> +#define UART_DLM	(0x1 << DEBUG_LL_UART_SHIFT)
> +#define UART_LCR	(0x3 << DEBUG_LL_UART_SHIFT)
> +#define UART_LSR	(0x5 << DEBUG_LL_UART_SHIFT)
> +
> +#define UART_LCR_W	0x07	/* Set UART to 8,N,2 & DLAB = 0 */
> +#define UART_LCR_DLAB	0x87	/* Set UART to 8,N,2 & DLAB = 1 */
> +
> +#define UART_LSR_DR	0x01    /* UART received data present */
> +#define UART_LSR_THRE	0x20	/* Xmit holding register empty */
> +
> +#if defined(DEBUG_LL_UART_IOSIZE32)
> +#define UART_REG_L	lw
> +#define UART_REG_S	sw
> +#elif defined(DEBUG_LL_UART_IOSIZE8)
> +#define UART_REG_L	lbu
> +#define UART_REG_S	sb
> +#else
> +#error "Please define DEBUG_LL_UART_IOSIZE{8,32}"
> +#endif
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * C macros
> + */
> +
> +#include <asm/io.h>
> +
> +static inline void PUTC_LL(char ch)
> +{
> +#ifdef CONFIG_DEBUG_LL
> +	while (!(__raw_readl((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
> +		;
> +	__raw_writel(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
> +#endif /* CONFIG_DEBUG_LL */
> +}
> +
> +static inline void debug_ll_ns16550_init(void)
> +{
> +#ifdef CONFIG_DEBUG_LL
> +	__raw_writel(UART_LCR_DLAB, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
> +	__raw_writel(DEBUG_LL_UART_DIVISOR & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLL);
> +	__raw_writel((DEBUG_LL_UART_DIVISOR >> 8) & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLM);
> +	__raw_writel(UART_LCR_W, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
> +#endif /* CONFIG_DEBUG_LL */
> +}
> +#else /* __ASSEMBLY__ */
> +/*
> + * Macros for use in assembly language code
> + */
> +
> +.macro	debug_ll_ns16550_init
> +#ifdef CONFIG_DEBUG_LL
> +	li	t0, DEBUG_LL_UART_ADDR
> +
> +	li	t1, UART_LCR_DLAB		/* DLAB on */
> +	UART_REG_S	t1, UART_LCR(t0)		/* Write it out */
> +
> +	li	t1, DEBUG_LL_UART_DIVISOR
> +	UART_REG_S	t1, UART_DLL(t0)		/* write low order byte */
> +	srl	t1, t1, 8
> +	UART_REG_S	t1, UART_DLM(t0)		/* write high order byte */
> +
> +	li	t1, UART_LCR_W			/* DLAB off */
> +	UART_REG_S	t1, UART_LCR(t0)		/* Write it out */
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * output a character in a0
> + */
> +.macro	debug_ll_outc_a0
> +#ifdef CONFIG_DEBUG_LL
> +
> +	li	t0, DEBUG_LL_UART_ADDR
> +
> +201:
> +	UART_REG_L	t1, UART_LSR(t0)	/* get line status */
> +	andi	t1, t1, UART_LSR_THRE	/* check for transmitter empty */
> +	beqz	t1, 201b			/* try again */
> +
> +	UART_REG_S	a0, UART_THR(t0)	/* write the character */
> +
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * output a character
> + */
> +.macro	debug_ll_outc chr
> +#ifdef CONFIG_DEBUG_LL
> +	li	a0, \chr
> +	debug_ll_outc_a0
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * output CR + NL
> + */
> +.macro	debug_ll_ns16550_outnl
> +#ifdef CONFIG_DEBUG_LL
> +	debug_ll_outc '\r'
> +	debug_ll_outc '\n'
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * check character in input buffer
> + * return value:
> + *  v0 = 0   no character in input buffer
> + *  v0 != 0  character in input buffer
> + */
> +.macro	debug_ll_tstc
> +#ifdef CONFIG_DEBUG_LL
> +	li      t0, DEBUG_LL_UART_ADDR
> +
> +	/* get line status and check for data present */
> +	UART_REG_L	s0, UART_LSR(t0)
> +	andi	s0, s0, UART_LSR_DR
> +
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +
> +/*
> + * get character to v0
> + */
> +.macro	debug_ll_getc
> +#ifdef CONFIG_DEBUG_LL
> +
> +204:
> +	debug_ll_tstc
> +
> +	/* try again */
> +	beqz	s0, 204b
> +
> +	/* read a character */
> +	UART_REG_L	s0, UART_RBR(t0)
> +
> +#endif /* CONFIG_DEBUG_LL */
> +.endm
> +#endif /* __ASSEMBLY__ */
> +
> +#endif /* __INCLUDE_RISCV_ASM_DEBUG_LL_NS16550_H__ */
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
