Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcBS2-0002y1-MD
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 07:14:16 +0000
Received: by iyn15 with SMTP id 15so2084682iyn.36
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 00:12:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110630025251.GJ17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<20110630025251.GJ17355@game.jcrosoft.org>
Date: Thu, 30 Jun 2011 09:12:16 +0200
Message-ID: <BANLkTi=tJbuM6UOyni2VPoHzzqqcKnD0Yg@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1264619401=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============1264619401==
Content-Type: multipart/alternative; boundary=90e6ba1eff0cf1b95804a6e89e63

--90e6ba1eff0cf1b95804a6e89e63
Content-Type: text/plain; charset=ISO-8859-1

2011/6/30 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> > @@ -0,0 +1,32 @@
> > +/*
> > + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +/**
> > + * @file
> > + * @brief Resetting an CPU
> > + */
> > +
> > +#include <common.h>
> > +
> > +void __noreturn reset_cpu(ulong addr)
> > +{
> > +     mips_machine_restart();
> > +}
> > +EXPORT_SYMBOL(reset_cpu);
> no need of this manage it at machine level
> > diff --git a/arch/mips/include/asm/types.h
> b/arch/mips/include/asm/types.h
> > new file mode 100644
> > index 0000000..5c1e2de
> > --- /dev/null
> > +++ b/arch/mips/include/asm/types.h
> > @@ -0,0 +1,44 @@
> > +/*
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + *
> > + */
> > +
> > +#ifndef __ASM_MIPS_TYPES_H
> > +#define __ASM_MIPS_TYPES_H
> > +
> > +#ifndef __ASSEMBLY__
> > +
> > +typedef __signed__ char __s8;
> > +typedef unsigned char __u8;
> > +
> > +typedef __signed__ short __s16;
> > +typedef unsigned short __u16;
> > +
> > +typedef __signed__ int __s32;
> > +typedef unsigned int __u32;
> > +
> > +typedef __signed__ long long __s64;
> > +typedef unsigned long long __u64;
> > +
> > +typedef unsigned char u8;
> > +
> can we factorize
> it's copy across arch
> > +typedef unsigned short u16;
> > +
> > +typedef unsigned int u32;
> > +
> > +#endif /* __ASSEMBLY__ */
> > +
> > +#endif /* __ASM_MIPS_TYPES_H */
> > diff --git a/arch/mips/include/mach/debug_ll.h
> b/arch/mips/include/mach/debug_ll.h
> > new file mode 100644
> > index 0000000..9fff7be
> > --- /dev/null
> > +++ b/arch/mips/lib/memory.c
> > @@ -0,0 +1,34 @@
> > +/*
> > + * Copyright (c) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This file is part of barebox.
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <mem_malloc.h>
> > +#include <asm-generic/memory_layout.h>
> > +
> > +static int mips_mem_malloc_init(void)
> > +{
> > +     mem_malloc_init((void *)MALLOC_BASE,
> > +                     (void *)(MALLOC_BASE + MALLOC_SIZE));
> > +     return 0;
> > +}
> > +core_initcall(mips_mem_malloc_init);
> can we factorise this code this is the same on arm, m68k, blackfin too
>

...and nios2 :)


>
> Best Regards,
> J.
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

--90e6ba1eff0cf1b95804a6e89e63
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/6/30 Jean-Christophe PLAGNIOL-VILLA=
RD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnioj@jcrosoft.com">plagnioj@=
jcrosoft.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">&gt; @@ -0,0 +1,32 @@<br>
&gt; +/*<br>
&gt; + * Copyright (C) 2011 Antony Pavlov &lt;<a href=3D"mailto:antonynpavl=
ov@gmail.com">antonynpavlov@gmail.com</a>&gt;<br>
&gt; + *<br>
&gt; + * This program is free software; you can redistribute it and/or<br>
&gt; + * modify it under the terms of the GNU General Public License as<br>
&gt; + * published by the Free Software Foundation; either version 2 of<br>
&gt; + * the License, or (at your option) any later version.<br>
&gt; + *<br>
&gt; + * This program is distributed in the hope that it will be useful,<br=
>
&gt; + * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
&gt; + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br=
>
&gt; + * GNU General Public License for more details.<br>
&gt; + *<br>
&gt; + * You should have received a copy of the GNU General Public License<=
br>
&gt; + * along with this program; if not, write to the Free Software<br>
&gt; + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
&gt; + * MA 02111-1307 USA<br>
&gt; + *<br>
&gt; + */<br>
&gt; +<br>
&gt; +/**<br>
&gt; + * @file<br>
&gt; + * @brief Resetting an CPU<br>
&gt; + */<br>
&gt; +<br>
&gt; +#include &lt;common.h&gt;<br>
&gt; +<br>
&gt; +void __noreturn reset_cpu(ulong addr)<br>
&gt; +{<br>
&gt; + =A0 =A0 mips_machine_restart();<br>
&gt; +}<br>
&gt; +EXPORT_SYMBOL(reset_cpu);<br>
</div>no need of this manage it at machine level<br>
<div><div></div><div class=3D"h5">&gt; diff --git a/arch/mips/include/asm/t=
ypes.h b/arch/mips/include/asm/types.h<br>
&gt; new file mode 100644<br>
&gt; index 0000000..5c1e2de<br>
&gt; --- /dev/null<br>
&gt; +++ b/arch/mips/include/asm/types.h<br>
&gt; @@ -0,0 +1,44 @@<br>
&gt; +/*<br>
&gt; + * This program is free software; you can redistribute it and/or<br>
&gt; + * modify it under the terms of the GNU General Public License as<br>
&gt; + * published by the Free Software Foundation; either version 2 of<br>
&gt; + * the License, or (at your option) any later version.<br>
&gt; + *<br>
&gt; + * This program is distributed in the hope that it will be useful,<br=
>
&gt; + * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
&gt; + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br=
>
&gt; + * GNU General Public License for more details.<br>
&gt; + *<br>
&gt; + * You should have received a copy of the GNU General Public License<=
br>
&gt; + * along with this program; if not, write to the Free Software<br>
&gt; + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
&gt; + * MA 02111-1307 USA<br>
&gt; + *<br>
&gt; + */<br>
&gt; +<br>
&gt; +#ifndef __ASM_MIPS_TYPES_H<br>
&gt; +#define __ASM_MIPS_TYPES_H<br>
&gt; +<br>
&gt; +#ifndef __ASSEMBLY__<br>
&gt; +<br>
&gt; +typedef __signed__ char __s8;<br>
&gt; +typedef unsigned char __u8;<br>
&gt; +<br>
&gt; +typedef __signed__ short __s16;<br>
&gt; +typedef unsigned short __u16;<br>
&gt; +<br>
&gt; +typedef __signed__ int __s32;<br>
&gt; +typedef unsigned int __u32;<br>
&gt; +<br>
&gt; +typedef __signed__ long long __s64;<br>
&gt; +typedef unsigned long long __u64;<br>
&gt; +<br>
&gt; +typedef unsigned char u8;<br>
&gt; +<br>
</div></div>can we factorize<br>
it&#39;s copy across arch<br>
<div class=3D"im">&gt; +typedef unsigned short u16;<br>
&gt; +<br>
&gt; +typedef unsigned int u32;<br>
&gt; +<br>
&gt; +#endif /* __ASSEMBLY__ */<br>
&gt; +<br>
&gt; +#endif /* __ASM_MIPS_TYPES_H */<br>
&gt; diff --git a/arch/mips/include/mach/debug_ll.h b/arch/mips/include/mac=
h/debug_ll.h<br>
&gt; new file mode 100644<br>
&gt; index 0000000..9fff7be<br>
&gt; --- /dev/null<br>
</div><div><div></div><div class=3D"h5">&gt; +++ b/arch/mips/lib/memory.c<b=
r>
&gt; @@ -0,0 +1,34 @@<br>
&gt; +/*<br>
&gt; + * Copyright (c) 2011 Antony Pavlov &lt;<a href=3D"mailto:antonynpavl=
ov@gmail.com">antonynpavlov@gmail.com</a>&gt;<br>
&gt; + * See file CREDITS for list of people who contributed to this projec=
t.<br>
&gt; + *<br>
&gt; + * This file is part of barebox.<br>
&gt; + *<br>
&gt; + * This program is free software; you can redistribute it and/or<br>
&gt; + * modify it under the terms of the GNU General Public License as<br>
&gt; + * published by the Free Software Foundation; either version 2 of<br>
&gt; + * the License, or (at your option) any later version.<br>
&gt; + *<br>
&gt; + * This program is distributed in the hope that it will be useful,<br=
>
&gt; + * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
&gt; + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br=
>
&gt; + * GNU General Public License for more details.<br>
&gt; + *<br>
&gt; + * You should have received a copy of the GNU General Public License<=
br>
&gt; + * along with this program; if not, write to the Free Software<br>
&gt; + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
&gt; + * MA 02111-1307 USA<br>
&gt; + */<br>
&gt; +<br>
&gt; +#include &lt;common.h&gt;<br>
&gt; +#include &lt;init.h&gt;<br>
&gt; +#include &lt;mem_malloc.h&gt;<br>
&gt; +#include &lt;asm-generic/memory_layout.h&gt;<br>
&gt; +<br>
&gt; +static int mips_mem_malloc_init(void)<br>
&gt; +{<br>
&gt; + =A0 =A0 mem_malloc_init((void *)MALLOC_BASE,<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (void *)(MALLOC_BASE + MALLO=
C_SIZE));<br>
&gt; + =A0 =A0 return 0;<br>
&gt; +}<br>
&gt; +core_initcall(mips_mem_malloc_init);<br>
</div></div>can we factorise this code this is the same on arm, m68k, black=
fin too<br></blockquote><div><br></div><div>...and nios2 :)</div><div>=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex;">

<br>
Best Regards,<br>
J.<br>
<br>
_______________________________________________<br>
<div><div></div><div class=3D"h5">barebox mailing list<br>
<a href=3D"mailto:barebox@lists.infradead.org">barebox@lists.infradead.org<=
/a><br>
<a href=3D"http://lists.infradead.org/mailman/listinfo/barebox" target=3D"_=
blank">http://lists.infradead.org/mailman/listinfo/barebox</a><br>
</div></div></blockquote></div><br>

--90e6ba1eff0cf1b95804a6e89e63--


--===============1264619401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1264619401==--
