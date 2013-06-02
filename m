Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj4Xi-0001WN-Qc
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 09:25:40 +0000
Date: Sun, 2 Jun 2013 11:25:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130602092515.GS32299@pengutronix.de>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
 <1370073169-29009-7-git-send-email-antonynpavlov@gmail.com>
 <20130601120748.b43bc182517396a9b492736e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130601120748.b43bc182517396a9b492736e@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] MIPS: unificate ns16550 debug_ll support code
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jun 01, 2013 at 12:07:48PM +0400, antonynpavlov@gmail.com wrote:
> On Sat,  1 Jun 2013 11:52:49 +0400
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> =

> Sorry, not "unificate" but "unify".

Fixed this while applying.

Thanks
 Sascha

> =

> > This commit moves the C debug_ll code from
> > the MIPS <debug_ll_ns16550.h> header file to
> > the MIPS <asm/debug_ll_ns16550.h> header file,
> > so the C code and the asm code can use the same
> > register address macros.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/include/asm/debug_ll_ns16550.h      |   15 ++++++++++
> >  arch/mips/include/debug_ll_ns16550.h          |   37 -----------------=
--------
> >  arch/mips/mach-malta/include/mach/debug_ll.h  |    2 +-
> >  arch/mips/mach-xburst/include/mach/debug_ll.h |    2 +-
> >  4 files changed, 17 insertions(+), 39 deletions(-)
> >  delete mode 100644 arch/mips/include/debug_ll_ns16550.h
> > =

> > diff --git a/arch/mips/include/asm/debug_ll_ns16550.h b/arch/mips/inclu=
de/asm/debug_ll_ns16550.h
> > index 5dd1b39..f00f348 100644
> > --- a/arch/mips/include/asm/debug_ll_ns16550.h
> > +++ b/arch/mips/include/asm/debug_ll_ns16550.h
> > @@ -48,6 +48,20 @@
> >  =

> >  #define UART_LSR_THRE	0x20	/* Xmit holding register empty */
> >  =

> > +#ifndef __ASSEMBLY__
> > +/*
> > + * C macros
> > + */
> > +
> > +#include <asm/io.h>
> > +
> > +static __inline__ void PUTC_LL(char ch)
> > +{
> > +	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_=
THRE))
> > +		;
> > +	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
> > +}
> > +#else /* __ASSEMBLY__ */
> >  /*
> >   * Macros for use in assembly language code
> >   */
> > @@ -96,5 +110,6 @@
> >  	debug_ll_ns16550_outc '\n'
> >  #endif /* CONFIG_DEBUG_LL */
> >  .endm
> > +#endif /* __ASSEMBLY__ */
> >  =

> >  #endif /* __INCLUDE_MIPS_ASM_DEBUG_LL_NS16550_H__ */
> > diff --git a/arch/mips/include/debug_ll_ns16550.h b/arch/mips/include/d=
ebug_ll_ns16550.h
> > deleted file mode 100644
> > index e9c7ecf..0000000
> > --- a/arch/mips/include/debug_ll_ns16550.h
> > +++ /dev/null
> > @@ -1,37 +0,0 @@
> > -/*
> > - * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
> > - *
> > - * This file is part of barebox.
> > - * See file CREDITS for list of people who contributed to this project.
> > - *
> > - * This program is free software; you can redistribute it and/or modify
> > - * it under the terms of the GNU General Public License version 2
> > - * as published by the Free Software Foundation.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - */
> > -
> > -/** @file
> > - *  This file contains declaration for early output support
> > - */
> > -#ifndef __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
> > -#define __INCLUDE_ARCH_DEBUG_LL_NS16550_H__
> > -
> > -#include <asm/io.h>
> > -
> > -#define rbr		(0 << DEBUG_LL_UART_SHIFT)
> > -#define lsr		(5 << DEBUG_LL_UART_SHIFT)
> > -
> > -#define LSR_THRE	0x20	/* Xmit holding register empty */
> > -
> > -static __inline__ void PUTC_LL(char ch)
> > -{
> > -	while (!(__raw_readb((u8 *)DEBUG_LL_UART_ADDR + lsr) & LSR_THRE));
> > -	__raw_writeb(ch, (u8 *)DEBUG_LL_UART_ADDR + rbr);
> > -}
> > -
> > -#endif  /* __INCLUDE_ARCH_DEBUG_LL_NS16550_H__ */
> > diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/m=
ach-malta/include/mach/debug_ll.h
> > index 3a91c93..3e8b01b 100644
> > --- a/arch/mips/mach-malta/include/mach/debug_ll.h
> > +++ b/arch/mips/mach-malta/include/mach/debug_ll.h
> > @@ -23,6 +23,6 @@
> >  =

> >  #include <mach/hardware.h>
> >  =

> > -#include <debug_ll_ns16550.h>
> > +#include <asm/debug_ll_ns16550.h>
> >  =

> >  #endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
> > diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/=
mach-xburst/include/mach/debug_ll.h
> > index f260e65..6c3c980 100644
> > --- a/arch/mips/mach-xburst/include/mach/debug_ll.h
> > +++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
> > @@ -22,6 +22,6 @@
> >   *  This File contains declaration for early output support
> >   */
> >  #include <board/debug_ll.h>
> > -#include <debug_ll_ns16550.h>
> > +#include <asm/debug_ll_ns16550.h>
> >  =

> >  #endif  /* __MACH_XBURST_DEBUG_LL__ */
> > -- =

> > 1.7.10.4
> > =

> =

> =

> -- =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
