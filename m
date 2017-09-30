Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyGby-0006Du-Tc
 for barebox@lists.infradead.org; Sat, 30 Sep 2017 12:11:17 +0000
Received: by mail-lf0-x231.google.com with SMTP id d4so1905414lfj.7
 for <barebox@lists.infradead.org>; Sat, 30 Sep 2017 05:10:54 -0700 (PDT)
Date: Sat, 30 Sep 2017 15:22:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170930152248.e776e9dcc0fb96b7cc26e854@gmail.com>
In-Reply-To: <1af67755-749c-41b0-1c53-64a070771b81@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-5-antonynpavlov@gmail.com>
 <1af67755-749c-41b0-1c53-64a070771b81@rempel-privat.de>
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
Subject: Re: [RFC v4 04/10] RISC-V: add nmon nano-monitor
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Sep 2017 14:26:34 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Same as for MIPS
> =


Yes, I have based arch/riscv on arch/mips.

> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:

...

> > diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/a=
sm/riscv_nmon.h
> > new file mode 100644
> > index 000000000..717f61334
> > --- /dev/null
> > +++ b/arch/riscv/include/asm/riscv_nmon.h
> =

> may be arch/riscv/include/asm/pbl_nmon.h instead?
> to use same naming shema as for existing arch:
> arch/mips/include/asm/pbl_nmon.h

Contrariwise! I have a plan to sync mips naming schema with riscv.

> every thing else seems to be nearly identical with MIPS, except some
> instruction differences.

Little wonder, since RISC-V ISA looks like reduced MIPS ISA.

I can recomend the notable paper on ISA ideas behind RISC-V

  Design of the RISC-V Instruction Set Architecture by Andrew Waterman
  http://escholarship.org/uc/item/7zj0b3m7#page-14

 =

> > @@ -0,0 +1,234 @@
> > +/*
> > + * nano-monitor for RISC-V CPU
> > + *
> > + * Copyright (C) 2016, 2017 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#ifndef __ASM_RISCV_NMON_H
> > +#define __ASM_RISCV_NMON_H
> > +
> > +#define CODE_ESC	0x1b
> > +
> > +.macro nmon_outs msg
> > +
> > +	la	a1, \msg
> > +
> > +	jal	_nmon_outs
> > +
> > +.endm
> > +
> > +/*
> > + * output a 32-bit value in hex
> > + */
> > +.macro debug_ll_outhexw
> > +#ifdef CONFIG_DEBUG_LL
> > +	move	t6, a0
> > +	li	t5, 32
> > +
> > +202:
> > +	addi	t5, t5, -4
> > +	srl	a0, t6, t5
> > +
> > +	/* output one hex digit */
> > +	andi	a0, a0, 15
> > +	li	t4, 10
> > +	blt	a0, t4, 203f
> > +
> > +	addi	a0, a0, ('a' - '9' - 1)
> > +
> > +203:
> > +	addi	a0, a0, '0'
> > +
> > +	debug_ll_outc_a0
> > +
> > +	li	t4, 1
> > +	bge	t5, t4, 202b
> > +
> > +#endif /* CONFIG_DEBUG_LL */
> > +.endm
> > +
> > +.macro riscv_nmon
> > +
> > +nmon_main_help:
> > +#ifdef CONFIG_NMON_HELP
> > +	nmon_outs	msg_nmon_help
> > +#endif /* CONFIG_NMON_HELP */
> > +
> > +nmon_main:
> > +	nmon_outs	msg_prompt
> > +
> > +	debug_ll_getc
> > +
> > +	li	a0, 'q'
> > +	bne	s0, a0, 3f
> > +
> > +	jal	_nmon_outc_a0
> > +
> > +	j	nmon_exit
> > +
> > +3:
> > +	li	a0, 'd'
> > +	beq	s0, a0, nmon_cmd_d
> > +
> > +	li	a0, 'w'
> > +	beq	s0, a0, nmon_cmd_w
> > +
> > +	li	a0, 'g'
> > +	beq	s0, a0, nmon_cmd_g
> > +
> > +	j	nmon_main_help
> > +
> > +nmon_cmd_d:
> > +	jal	_nmon_outc_a0
> > +
> > +	li	a0, ' '
> > +	jal	_nmon_outc_a0
> > +
> > +	jal	_nmon_gethexw
> > +
> > +	nmon_outs	msg_nl
> > +
> > +	lw	a0, (s0)
> > +	debug_ll_outhexw
> > +
> > +	j	nmon_main
> > +
> > +nmon_cmd_w:
> > +	jal	_nmon_outc_a0
> > +
> > +	li	a0, ' '
> > +	jal	_nmon_outc_a0
> > +
> > +	jal	_nmon_gethexw
> > +	move	s2, s0
> > +
> > +	li	a0, ' '
> > +	jal	_nmon_outc_a0
> > +	jal	_nmon_gethexw
> > +
> > +	sw	s0, 0(s2)
> > +	j	nmon_main
> > +
> > +nmon_cmd_g:
> > +	jal	_nmon_outc_a0
> > +
> > +	li	a0, ' '
> > +	jal	_nmon_outc_a0
> > +
> > +	jal	_nmon_gethexw
> > +	move	s2, s0
> > +
> > +	nmon_outs	msg_nl
> > +
> > +	jalr	s2
> > +	j	nmon_main
> > +
> > +_nmon_outc_a0:
> > +	debug_ll_outc_a0
> > +	jr	ra
> > +
> > +_nmon_outs:
> > +
> > +	lb	a0, 0(a1)
> > +	addi	a1, a1, 1
> > +	beqz	a0, _nmon_jr_ra_exit
> > +
> > +	debug_ll_outc_a0
> > +
> > +	j	_nmon_outs
> > +
> > +_nmon_gethexw:
> > +
> > +	li	t3, 8
> > +	li	t2, 0
> > +
> > +_get_hex_digit:
> > +	debug_ll_getc
> > +
> > +	li	s1, CODE_ESC
> > +	beq	s0, s1, nmon_main
> > +
> > +	li	s1, '0'
> > +	bge	s0, s1, 0f
> > +	j	_get_hex_digit
> > +
> > +0:
> > +	li	s1, '9'
> > +	ble	s0, s1, 9f
> > +
> > +	li	s1, 'f'
> > +	ble	s0, s1, 1f
> > +	j	_get_hex_digit
> > +
> > +1:
> > +	li	s1, 'a'
> > +	bge	s0, s1, 8f
> > +
> > +	j	_get_hex_digit
> > +
> > +8: /* s0 \in {'a', 'b' ... 'f'} */
> > +	sub	a3, s0, s1
> > +	addi	a3, a3, 0xa
> > +	j	0f
> > +
> > +9: /* s0 \in {'0', '1' ... '9'} */
> > +	li	a3, '0'
> > +	sub	a3, s0, a3
> > +
> > +0:	move	a0, s0
> > +	debug_ll_outc_a0
> > +
> > +	sll	t2, t2, 4
> > +	or	t2, t2, a3
> > +	li	t0, 1
> > +	sub	t3, t3, t0
> > +
> > +	beqz	t3, 0f
> > +
> > +	j	_get_hex_digit
> > +
> > +0:
> > +	move	s0, t2
> > +
> > +_nmon_jr_ra_exit:
> > +	jr	ra
> > +
> > +msg_prompt:
> > +	.asciz "\r\nnmon> "
> > +
> > +msg_nl:
> > +	.asciz "\r\n"
> > +
> > +msg_bsp:
> > +	.asciz "\b \b"
> > +
> > +#ifdef CONFIG_NMON_HELP
> > +msg_nmon_help:
> > +	.ascii "\r\n\r\nnmon commands:\r\n"
> > +	.ascii " q - quit\r\n"
> > +	.ascii " d <addr> - read 32-bit word from <addr>\r\n"
> > +	.ascii " w <addr> <val> - write 32-bit word to <addr>\r\n"
> > +	.ascii " g <addr> - jump to <addr>\r\n"
> > +	.asciz "   use <ESC> key to interrupt current command\r\n"
> > +#endif /* CONFIG_NMON_HELP */
> > +
> > +	.align 2
> > +nmon_exit:
> > +	nmon_outs	msg_nl
> > +
> > +.endm
> > +
> > +#endif /* __ASM_RISCV_NMON_H */
> > =

> =

> =

> -- =

> Regards,
> Oleksij
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
