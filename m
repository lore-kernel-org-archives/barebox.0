Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QcRpR-0000f2-9d
	for barebox@lists.infradead.org; Fri, 01 Jul 2011 00:43:31 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id E5FB14B22A3
	for <barebox@lists.infradead.org>;
	Fri,  1 Jul 2011 02:43:01 +0200 (CEST)
Date: Fri, 1 Jul 2011 02:28:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110701002815.GC14408@game.jcrosoft.org>
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/3 v3] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> + *
> + * Copyright (c) 2003	Wolfgang Denk <wd@denx.de>
no need if u use the relocate and stack setup of Shinya-san
> + * Further modifications by Antony Pavlov
> + * Used code written by Shinya Kuribayashi <skuribay@pobox.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <asm/regdef.h>
> +#include <asm/mipsregs.h>
> +#include <asm-generic/memory_layout.h>
> +
> +	.set noreorder
> +        .text
> +	.section ".text_bare_init"
> +        .globl _start
> +	.align 4
> +
> +_start:
here the EXPORT

IIRC we will need to preserve ra for NMI case

please use the comment of Shinya-san they are realy good
> +	/* Clear watch registers */
> +	mtc0	zero, CP0_WATCHLO
> +	mtc0	zero, CP0_WATCHHI
> +
> +	/* STATUS register: disable interrupts */
> +	mfc0	k0, CP0_STATUS
> +	li	k1, ~ST0_IE
> +	and	k0, k1
> +	mtc0	k0, CP0_STATUS
> +
> +	/* CAUSE register */
> +	mtc0	zero, CP0_CAUSE
> +
> +	/* Init Timer */
> +	mtc0	zero, CP0_COUNT
> +	mtc0	zero, CP0_COMPARE
> +
> +	/* Compute _start load address */
> +	bal	compute_load_address
> +	 nop
> +
> +compute_load_address:
why don't you use the relocate from Shinya-san?
> +	move	a0, ra
> +	and	a0, 0xffff0000		/* Mask off lower bits: a0 <- load address (souce start) */
> +
> +	la	a1, _start		/* RAM start address */
> +
> +	la	t0, _start
> +	la	t1, __bss_start
> +	subu	t2, t1, t0			# t2 <- size of barebox
> +	addu	a2, a0, t2			# a2 <- source end address
> +
> +copy_to_link_address:
> +	b	2f
> +	sltu	v0, a0, a2
> +1:	addiu	a0, a0, 4
> +	sw	v0, (a1)
> +	addiu	a1, a1, 4
> +	sltu	v0, a0, a2
> +2:	bnezl	v0, 1b
> +	lw	v0, (a0)
> +
> +clear_bss:
> +	la	t0, __bss_start
> +	sw	zero, (t0)
> +	la	t1, _end - 4
> +1:
> +	addiu	t0, 4
> +	sw	zero, (t0)
> +	bne	t0, t1, 1b
> +	 nop
> +
> +stack_setup:
his stack setup is more clean
> +	la	sp, STACK_BASE + STACK_SIZE
> +	addiu	sp, -32			# init stack pointer
> +
> +	la	v0, start_barebox
> +        jal     v0
> +	 nop
> +
> +	/* No return */
> +
> +__error:
> +	b __error
> +	 nop

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
