Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.98.mail-out.ovh.net ([46.105.36.74] helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDcj-0006zD-M7
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:33:27 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id 28F8A4B2D64
	for <barebox@lists.infradead.org>;
	Thu, 30 Jun 2011 11:33:00 +0200 (CEST)
Date: Thu, 30 Jun 2011 11:18:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110630091816.GP17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<20110630025251.GJ17355@game.jcrosoft.org>
	<BANLkTi=tJbuM6UOyni2VPoHzzqqcKnD0Yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BANLkTi=tJbuM6UOyni2VPoHzzqqcKnD0Yg@mail.gmail.com>
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
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

HI,

	Could you stop to post in HTML please

	this ML is plain/TEXT only

Best Regards,
J.
On 09:12 Thu 30 Jun     , Franck JULLIEN wrote:
>    2011/6/30 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
>      > @@ -0,0 +1,32 @@
>      > +/*
>      > + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
>      > + *
>      > + * This program is free software; you can redistribute it and/or
>      > + * modify it under the terms of the GNU General Public License as
>      > + * published by the Free Software Foundation; either version 2 of
>      > + * the License, or (at your option) any later version.
>      > + *
>      > + * This program is distributed in the hope that it will be useful,
>      > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>      > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>      > + * GNU General Public License for more details.
>      > + *
>      > + * You should have received a copy of the GNU General Public License
>      > + * along with this program; if not, write to the Free Software
>      > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>      > + * MA 02111-1307 USA
>      > + *
>      > + */
>      > +
>      > +/**
>      > + * @file
>      > + * @brief Resetting an CPU
>      > + */
>      > +
>      > +#include <common.h>
>      > +
>      > +void __noreturn reset_cpu(ulong addr)
>      > +{
>      > +     mips_machine_restart();
>      > +}
>      > +EXPORT_SYMBOL(reset_cpu);
>      no need of this manage it at machine level
>      > diff --git a/arch/mips/include/asm/types.h
>      b/arch/mips/include/asm/types.h
>      > new file mode 100644
>      > index 0000000..5c1e2de
>      > --- /dev/null
>      > +++ b/arch/mips/include/asm/types.h
>      > @@ -0,0 +1,44 @@
>      > +/*
>      > + * This program is free software; you can redistribute it and/or
>      > + * modify it under the terms of the GNU General Public License as
>      > + * published by the Free Software Foundation; either version 2 of
>      > + * the License, or (at your option) any later version.
>      > + *
>      > + * This program is distributed in the hope that it will be useful,
>      > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>      > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>      > + * GNU General Public License for more details.
>      > + *
>      > + * You should have received a copy of the GNU General Public License
>      > + * along with this program; if not, write to the Free Software
>      > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>      > + * MA 02111-1307 USA
>      > + *
>      > + */
>      > +
>      > +#ifndef __ASM_MIPS_TYPES_H
>      > +#define __ASM_MIPS_TYPES_H
>      > +
>      > +#ifndef __ASSEMBLY__
>      > +
>      > +typedef __signed__ char __s8;
>      > +typedef unsigned char __u8;
>      > +
>      > +typedef __signed__ short __s16;
>      > +typedef unsigned short __u16;
>      > +
>      > +typedef __signed__ int __s32;
>      > +typedef unsigned int __u32;
>      > +
>      > +typedef __signed__ long long __s64;
>      > +typedef unsigned long long __u64;
>      > +
>      > +typedef unsigned char u8;
>      > +
>      can we factorize
>      it's copy across arch
>      > +typedef unsigned short u16;
>      > +
>      > +typedef unsigned int u32;
>      > +
>      > +#endif /* __ASSEMBLY__ */
>      > +
>      > +#endif /* __ASM_MIPS_TYPES_H */
>      > diff --git a/arch/mips/include/mach/debug_ll.h
>      b/arch/mips/include/mach/debug_ll.h
>      > new file mode 100644
>      > index 0000000..9fff7be
>      > --- /dev/null
>      > +++ b/arch/mips/lib/memory.c
>      > @@ -0,0 +1,34 @@
>      > +/*
>      > + * Copyright (c) 2011 Antony Pavlov <antonynpavlov@gmail.com>
>      > + * See file CREDITS for list of people who contributed to this
>      project.
>      > + *
>      > + * This file is part of barebox.
>      > + *
>      > + * This program is free software; you can redistribute it and/or
>      > + * modify it under the terms of the GNU General Public License as
>      > + * published by the Free Software Foundation; either version 2 of
>      > + * the License, or (at your option) any later version.
>      > + *
>      > + * This program is distributed in the hope that it will be useful,
>      > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>      > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>      > + * GNU General Public License for more details.
>      > + *
>      > + * You should have received a copy of the GNU General Public License
>      > + * along with this program; if not, write to the Free Software
>      > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>      > + * MA 02111-1307 USA
>      > + */
>      > +
>      > +#include <common.h>
>      > +#include <init.h>
>      > +#include <mem_malloc.h>
>      > +#include <asm-generic/memory_layout.h>
>      > +
>      > +static int mips_mem_malloc_init(void)
>      > +{
>      > +     mem_malloc_init((void *)MALLOC_BASE,
>      > +                     (void *)(MALLOC_BASE + MALLOC_SIZE));
>      > +     return 0;
>      > +}
>      > +core_initcall(mips_mem_malloc_init);
>      can we factorise this code this is the same on arm, m68k, blackfin too
> 
>    ...and nios2 :)
>     
> 
>      Best Regards,
>      J.
> 
>      _______________________________________________
>      barebox mailing list
>      barebox@lists.infradead.org
>      http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
