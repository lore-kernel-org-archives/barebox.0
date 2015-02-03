Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YIYht-0002zj-1w
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 08:19:37 +0000
Date: Tue, 3 Feb 2015 09:19:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150203081914.GG12209@pengutronix.de>
References: <1422499032-30353-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150129085431.GW12209@pengutronix.de>
 <20150203151440.4536.AA925319@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150203151440.4536.AA925319@jp.panasonic.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Import missing linkage.h from Linux 3.19-rc6
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 03, 2015 at 03:14:41PM +0900, Masahiro Yamada wrote:
> Hi Sascha,
> 
> 
> On Thu, 29 Jan 2015 09:54:31 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > > +
> > > diff --git a/arch/mips/include/asm/linkage.h b/arch/mips/include/asm/linkage.h
> > > new file mode 100644
> > > index 0000000..2767dda
> > > --- /dev/null
> > > +++ b/arch/mips/include/asm/linkage.h
> > > @@ -0,0 +1,13 @@
> > > +#ifndef __ASM_LINKAGE_H
> > > +#define __ASM_LINKAGE_H
> > > +
> > > +#ifdef __ASSEMBLY__
> > > +#include <asm/asm.h>
> > > +#endif
> > > +
> > > +#define __weak __attribute__((weak))
> > > +#define cond_syscall(x) asm(".weak\t" #x "\n" #x "\t=\tsys_ni_syscall")
> > > +#define SYSCALL_ALIAS(alias, name)					\
> > > +	asm ( #alias " = " #name "\n\t.globl " #alias)
> > 
> > __weak is already defined in compiler-gcc.h and should probably be taken
> > from there. The syscall things are unused in barebox, so better make
> > this file just empty?
> 
> 
> OK, will do.
> 
> 
> 
> > > +
> > > +#endif
> > > diff --git a/arch/nios2/include/asm/linkage.h b/arch/nios2/include/asm/linkage.h
> > > new file mode 100644
> > > index 0000000..e0c6dec
> > > --- /dev/null
> > > +++ b/arch/nios2/include/asm/linkage.h
> > > @@ -0,0 +1,25 @@
> > > +/*
> > > + * Copyright (C) 2009 Thomas Chou <thomas@wytron.com.tw>
> > > + *
> > > + * All rights reserved.
> > > + *
> > > + * This program is free software; you can redistribute it and/or modify
> > > + * it under the terms of the GNU General Public License as published by
> > > + * the Free Software Foundation; either version 2 of the License, or
> > > + * (at your option) any later version.
> > > + *
> > > + * This program is distributed in the hope that it will be useful, but
> > > + * WITHOUT ANY WARRANTY; without even the implied warranty of
> > > + * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
> > > + * NON INFRINGEMENT.  See the GNU General Public License for more
> > > + * details.
> > > + */
> > > +
> > > +#ifndef _ASM_NIOS2_LINKAGE_H
> > > +#define _ASM_NIOS2_LINKAGE_H
> > > +
> > > +/* This file is required by include/linux/linkage.h */
> > > +#define __ALIGN .align 4
> > > +#define __ALIGN_STR ".align 4"
> > 
> > Use default instead? The nios2 kernel file doesn't give a clue why this
> > should be different from the default.
> 
> I have no idea.
> If the reason is not clear, why don't we keep it as is for safety?

This __ALIGN_STR and __ALIGN macros seem to be a leftover from acient
times. In the Kernel there are only a few users of __ALIGN_STR:

./drivers/pnp/pnpbios/bioscalls.c:43:   __ALIGN_STR "\n"
./arch/m68k/kernel/vectors.c:43:    __ALIGN_STR "\n"
./arch/m68k/amiga/config.c:583:         "       " __ALIGN_STR "\n"
./arch/m68k/atari/ataints.c:79:__ALIGN_STR "\n\t"

The second argument to the .align directive is the padding value. The
standard architecture independent value in include/linux/linkage.h is
0x90:

./include/linux/linkage.h:45:#define __ALIGN            .align 4,0x90

0x90 is the x86 assembly for the nop instruction. I doubt that this
makes sense on any other architecture.

All this is unused in barebox, so I think we should drop this rather
than blindly copying from Linux.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
