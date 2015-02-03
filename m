Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIWlN-0007q4-Th
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 06:15:07 +0000
Date: Tue, 03 Feb 2015 15:14:41 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150129085431.GW12209@pengutronix.de>
References: <1422499032-30353-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150129085431.GW12209@pengutronix.de>
Message-Id: <20150203151440.4536.AA925319@jp.panasonic.com>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,


On Thu, 29 Jan 2015 09:54:31 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> > +
> > diff --git a/arch/mips/include/asm/linkage.h b/arch/mips/include/asm/linkage.h
> > new file mode 100644
> > index 0000000..2767dda
> > --- /dev/null
> > +++ b/arch/mips/include/asm/linkage.h
> > @@ -0,0 +1,13 @@
> > +#ifndef __ASM_LINKAGE_H
> > +#define __ASM_LINKAGE_H
> > +
> > +#ifdef __ASSEMBLY__
> > +#include <asm/asm.h>
> > +#endif
> > +
> > +#define __weak __attribute__((weak))
> > +#define cond_syscall(x) asm(".weak\t" #x "\n" #x "\t=\tsys_ni_syscall")
> > +#define SYSCALL_ALIAS(alias, name)					\
> > +	asm ( #alias " = " #name "\n\t.globl " #alias)
> 
> __weak is already defined in compiler-gcc.h and should probably be taken
> from there. The syscall things are unused in barebox, so better make
> this file just empty?


OK, will do.



> > +
> > +#endif
> > diff --git a/arch/nios2/include/asm/linkage.h b/arch/nios2/include/asm/linkage.h
> > new file mode 100644
> > index 0000000..e0c6dec
> > --- /dev/null
> > +++ b/arch/nios2/include/asm/linkage.h
> > @@ -0,0 +1,25 @@
> > +/*
> > + * Copyright (C) 2009 Thomas Chou <thomas@wytron.com.tw>
> > + *
> > + * All rights reserved.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License as published by
> > + * the Free Software Foundation; either version 2 of the License, or
> > + * (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful, but
> > + * WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, GOOD TITLE or
> > + * NON INFRINGEMENT.  See the GNU General Public License for more
> > + * details.
> > + */
> > +
> > +#ifndef _ASM_NIOS2_LINKAGE_H
> > +#define _ASM_NIOS2_LINKAGE_H
> > +
> > +/* This file is required by include/linux/linkage.h */
> > +#define __ALIGN .align 4
> > +#define __ALIGN_STR ".align 4"
> 
> Use default instead? The nios2 kernel file doesn't give a clue why this
> should be different from the default.

I have no idea.
If the reason is not clear, why don't we keep it as is for safety?



> > diff --git a/arch/ppc/include/asm/linkage.h b/arch/ppc/include/asm/linkage.h
> > new file mode 100644
> > index 0000000..e3ad5c7
> > --- /dev/null
> > +++ b/arch/ppc/include/asm/linkage.h
> > @@ -0,0 +1,15 @@
> > +#ifndef _ASM_POWERPC_LINKAGE_H
> > +#define _ASM_POWERPC_LINKAGE_H
> > +
> > +#ifdef CONFIG_PPC64
> > +#if !defined(_CALL_ELF) || _CALL_ELF != 2
> > +#define cond_syscall(x) \
> > +	asm ("\t.weak " #x "\n\t.set " #x ", sys_ni_syscall\n"		\
> > +	     "\t.weak ." #x "\n\t.set ." #x ", .sys_ni_syscall\n")
> > +#define SYSCALL_ALIAS(alias, name)					\
> > +	asm ("\t.globl " #alias "\n\t.set " #alias ", " #name "\n"	\
> > +	     "\t.globl ." #alias "\n\t.set ." #alias ", ." #name)
> > +#endif
> > +#endif
> 
> Unused in barebox, should be removed.
> 

OK.  CONFIG_PPC64 is not defined in barebox.



Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
