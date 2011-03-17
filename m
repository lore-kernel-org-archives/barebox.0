Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q0GOq-00007b-5Y
	for barebox@lists.infradead.org; Thu, 17 Mar 2011 16:50:15 +0000
Received: by eyh6 with SMTP id 6so764897eyh.36
	for <barebox@lists.infradead.org>; Thu, 17 Mar 2011 09:50:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110316093457.GO29521@pengutronix.de>
References: <1299710787-11990-2-git-send-email-franck.jullien@gmail.com>
	<20110316093457.GO29521@pengutronix.de>
Date: Thu, 17 Mar 2011 17:50:09 +0100
Message-ID: <AANLkTikaZD-w__D-nnjMT7nbTRgodryGLqXzBFb58B49@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0766741494=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Add Altera Nios2 arch support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox <barebox@lists.infradead.org>

--===============0766741494==
Content-Type: multipart/alternative; boundary=000e0cd1e2a04c6e1e049eb07430

--000e0cd1e2a04c6e1e049eb07430
Content-Type: text/plain; charset=ISO-8859-1

Hi Sascha,

2011/3/16 Sascha Hauer <s.hauer@pengutronix.de>

> Hi Julien,
>
>
Well....it's Franck ;) I know that's a bit confusing......


> The patch looks mostly ok. Only a few comments inline and some coding
> style nitpicks:
>
> - several trailing whitespaces
> - return is not a function (should be return 0 instead of return (0)
> - there should be no braces between a function and its arguments
>
> I think the included checkpatch script should catch most of them.
>
>
> > +
> > diff --git a/nios2/configs/generic_defconfig
> b/nios2/configs/generic_defconfig
> > new file mode 100644
> > index 0000000..76b69da
> > --- /dev/null
> > +++ b/nios2/configs/generic_defconfig
>
> Please generate the config with make savedefconfig
>
> > diff --git a/nios2/include/asm/barebox.h b/nios2/include/asm/barebox.h
> > new file mode 100644
> > index 0000000..2fcf31c
> > --- /dev/null
> > +++ b/nios2/include/asm/barebox.h
> > @@ -0,0 +1,47 @@
> > +/*
> > + * barebox - barebox.h Structure declarations for board specific data
> > + *
> > + * Copyright (c) 2005 blackfin.uclinux.org
> > + *
> > + * (C) Copyright 2000-2004
> > + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
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
> > +#ifndef _BAREBOX_H_
> > +#define _BAREBOX_H_  1
> > +
> > +typedef struct bd_info {
> > +     int bi_baudrate;                /* serial console baudrate */
> > +     unsigned long bi_ip_addr;       /* IP Address */
> > +     unsigned char bi_enetaddr[6];   /* Ethernet adress */
> > +     unsigned long bi_arch_number;   /* unique id for this board */
> > +     unsigned long bi_boot_params;   /* where this board expects params
> */
> > +     unsigned long bi_memstart;      /* start of DRAM memory */
> > +     unsigned long bi_memsize;       /* size  of DRAM memory in bytes */
> > +     unsigned long bi_flashstart;    /* start of FLASH memory */
> > +     unsigned long bi_flashsize;     /* size  of FLASH memory */
> > +     unsigned long bi_flashoffset;   /* reserved area for startup
> monitor */
> > +} bd_t;
>
> This isn't used anywhere in this patch. Is it needed for passing data to
> Linux? If yes, ok, otherwise please remove it.
>

This file is included bu include/common.h
Should I provide an empty file ?


>
> > diff --git a/nios2/include/asm/io.h b/nios2/include/asm/io.h
> > new file mode 100644
> > index 0000000..121405c
> > --- /dev/null
> > +++ b/nios2/include/asm/io.h
> > @@ -0,0 +1,130 @@
> > +/*
> > + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> > + * Scott McNutt <smcnutt@psyent.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
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
> > +#ifndef __ASM_NIOS2_IO_H_
> > +#define __ASM_NIOS2_IO_H_
> > +
> > +static inline void sync(void)
> > +{
> > +     __asm__ __volatile__ ("sync" : : : "memory");
> > +}
> > +
> > +/*
> > + * Given a physical address and a length, return a virtual address
> > + * that can be used to access the memory range with the caching
> > + * properties specified by "flags".
> > + */
> > +#define MAP_NOCACHE  (0)
> > +#define MAP_WRCOMBINE        (0)
> > +#define MAP_WRBACK   (0)
> > +#define MAP_WRTHROUGH        (0)
> > +
> > +static inline void *
> > +map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
> > +{
> > +     return (void *)paddr;
> > +}
> > +
> > +/*
> > + * Take down a mapping set up by map_physmem().
> > + */
> > +static inline void unmap_physmem(void *vaddr, unsigned long flags)
> > +{
> > +
> > +}
> > +
> > +static inline phys_addr_t virt_to_phys(void * vaddr)
> > +{
> > +     return (phys_addr_t)(vaddr);
> > +}
> > +
> > +extern unsigned char inb (unsigned char *port);
> > +extern unsigned short inw (unsigned short *port);
> > +extern unsigned inl (unsigned port);
> > +
> > +#define __raw_writeb(v,a)       (*(volatile unsigned char  *)(a) = (v))
> > +#define __raw_writew(v,a)       (*(volatile unsigned short *)(a) = (v))
> > +#define __raw_writel(v,a)       (*(volatile unsigned int   *)(a) = (v))
> > +
> > +#define __raw_readb(a)          (*(volatile unsigned char  *)(a))
> > +#define __raw_readw(a)          (*(volatile unsigned short *)(a))
> > +#define __raw_readl(a)          (*(volatile unsigned int   *)(a))
> > +
> > +#define readb(addr)\
> > +     ({unsigned char val;\
> > +      asm volatile( "ldbio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> > +#define readw(addr)\
> > +     ({unsigned short val;\
> > +      asm volatile( "ldhio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> > +#define readl(addr)\
> > +     ({unsigned long val;\
> > +      asm volatile( "ldwio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> > +
> > +#define writeb(val,addr)\
> > +     asm volatile ("stbio %0, 0(%1)" : : "r" (val), "r" (addr))
> > +#define writew(val,addr)\
> > +     asm volatile ("sthio %0, 0(%1)" : : "r" (val), "r" (addr))
> > +#define writel(val,addr)\
> > +     asm volatile ("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
> > +
> > +#define inb(addr)    readb(addr)
> > +#define inw(addr)    readw(addr)
> > +#define inl(addr)    readl(addr)
> > +#define outb(val, addr)      writeb(val,addr)
> > +#define outw(val, addr)      writew(val,addr)
> > +#define outl(val, addr)      writel(val,addr)
>
> We won't need this in barebox environment. We should just stick to
> read*/write*
>

done.


>
> > diff --git a/nios2/include/asm/nios2-io.h b/nios2/include/asm/nios2-io.h
> > new file mode 100644
> > index 0000000..c20885b
> > --- /dev/null
> > +++ b/nios2/include/asm/nios2-io.h
> > @@ -0,0 +1,182 @@
> > +/*
> > + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> > + * Scott McNutt <smcnutt@psyent.com>
> > + *
> > + * See file CREDITS for list of people who contributed to this
> > + * project.
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
> >
> +/*************************************************************************
> > + * Altera Nios2 Standard Peripherals
> > +
> ************************************************************************/
> > +
> > +#ifndef __NIOS2IO_H__
> > +#define __NIOS2IO_H__
> > +
> >
> +/*------------------------------------------------------------------------
> > + * UART (http://www.altera.com/literature/ds/ds_nios_uart.pdf)
> > +
> *----------------------------------------------------------------------*/
> > +typedef volatile struct nios_uart_t {
> > +     unsigned        rxdata;         /* Rx data reg */
> > +     unsigned        txdata;         /* Tx data reg */
> > +     unsigned        status;         /* Status reg */
> > +     unsigned        control;        /* Control reg */
> > +     unsigned        divisor;        /* Baud rate divisor reg */
> > +     unsigned        endofpacket;    /* End-of-packet reg */
> > +}nios_uart_t;
>
> Please do not typedef struct types. Also, the volatile is unnecessary.
>
>
done.


> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

Franck.

--000e0cd1e2a04c6e1e049eb07430
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi Sascha,</div><div><br></div><div>2011/3/16 Sascha Hauer <span dir=
=3D"ltr">&lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pengutronix.=
de</a>&gt;</span></div><div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex;">
Hi Julien,<br>
<br></blockquote><div><br></div><div>Well....it&#39;s Franck ;) I know that=
&#39;s a bit confusing......</div><div>=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex;">

The patch looks mostly ok. Only a few comments inline and some coding<br>
style nitpicks:<br>
<br>
- several trailing whitespaces<br>
- return is not a function (should be return 0 instead of return (0)<br>
- there should be no braces between a function and its arguments<br>
<br>
I think the included checkpatch script should catch most of them.<br>
<div class=3D"im"><br>
<br>
&gt; +<br>
&gt; diff --git a/nios2/configs/generic_defconfig b/nios2/configs/generic_d=
efconfig<br>
&gt; new file mode 100644<br>
&gt; index 0000000..76b69da<br>
&gt; --- /dev/null<br>
&gt; +++ b/nios2/configs/generic_defconfig<br>
<br>
</div>Please generate the config with make savedefconfig<br>
<div><div></div><div class=3D"h5"><br>
&gt; diff --git a/nios2/include/asm/barebox.h b/nios2/include/asm/barebox.h=
<br>
&gt; new file mode 100644<br>
&gt; index 0000000..2fcf31c<br>
&gt; --- /dev/null<br>
&gt; +++ b/nios2/include/asm/barebox.h<br>
&gt; @@ -0,0 +1,47 @@<br>
&gt; +/*<br>
&gt; + * barebox - barebox.h Structure declarations for board specific data=
<br>
&gt; + *<br>
&gt; + * Copyright (c) 2005 <a href=3D"http://blackfin.uclinux.org" target=
=3D"_blank">blackfin.uclinux.org</a><br>
&gt; + *<br>
&gt; + * (C) Copyright 2000-2004<br>
&gt; + * Wolfgang Denk, DENX Software Engineering, <a href=3D"mailto:wd@den=
x.de">wd@denx.de</a>.<br>
&gt; + *<br>
&gt; + * See file CREDITS for list of people who contributed to this<br>
&gt; + * project.<br>
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
&gt; +#ifndef _BAREBOX_H_<br>
&gt; +#define _BAREBOX_H_ =A01<br>
&gt; +<br>
&gt; +typedef struct bd_info {<br>
&gt; + =A0 =A0 int bi_baudrate; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* serial co=
nsole baudrate */<br>
&gt; + =A0 =A0 unsigned long bi_ip_addr; =A0 =A0 =A0 /* IP Address */<br>
&gt; + =A0 =A0 unsigned char bi_enetaddr[6]; =A0 /* Ethernet adress */<br>
&gt; + =A0 =A0 unsigned long bi_arch_number; =A0 /* unique id for this boar=
d */<br>
&gt; + =A0 =A0 unsigned long bi_boot_params; =A0 /* where this board expect=
s params */<br>
&gt; + =A0 =A0 unsigned long bi_memstart; =A0 =A0 =A0/* start of DRAM memor=
y */<br>
&gt; + =A0 =A0 unsigned long bi_memsize; =A0 =A0 =A0 /* size =A0of DRAM mem=
ory in bytes */<br>
&gt; + =A0 =A0 unsigned long bi_flashstart; =A0 =A0/* start of FLASH memory=
 */<br>
&gt; + =A0 =A0 unsigned long bi_flashsize; =A0 =A0 /* size =A0of FLASH memo=
ry */<br>
&gt; + =A0 =A0 unsigned long bi_flashoffset; =A0 /* reserved area for start=
up monitor */<br>
&gt; +} bd_t;<br>
<br>
</div></div>This isn&#39;t used anywhere in this patch. Is it needed for pa=
ssing data to<br>
Linux? If yes, ok, otherwise please remove it.<br></blockquote><div><br></d=
iv><div>This file is included bu include/common.h</div><div>Should I provid=
e an empty file ?</div><div>=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

<div><div></div><div class=3D"h5"><br>
&gt; diff --git a/nios2/include/asm/io.h b/nios2/include/asm/io.h<br>
&gt; new file mode 100644<br>
&gt; index 0000000..121405c<br>
&gt; --- /dev/null<br>
&gt; +++ b/nios2/include/asm/io.h<br>
&gt; @@ -0,0 +1,130 @@<br>
&gt; +/*<br>
&gt; + * (C) Copyright 2004, Psyent Corporation &lt;<a href=3D"http://www.p=
syent.com" target=3D"_blank">www.psyent.com</a>&gt;<br>
&gt; + * Scott McNutt &lt;<a href=3D"mailto:smcnutt@psyent.com">smcnutt@psy=
ent.com</a>&gt;<br>
&gt; + *<br>
&gt; + * See file CREDITS for list of people who contributed to this<br>
&gt; + * project.<br>
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
&gt; +#ifndef __ASM_NIOS2_IO_H_<br>
&gt; +#define __ASM_NIOS2_IO_H_<br>
&gt; +<br>
&gt; +static inline void sync(void)<br>
&gt; +{<br>
&gt; + =A0 =A0 __asm__ __volatile__ (&quot;sync&quot; : : : &quot;memory&qu=
ot;);<br>
&gt; +}<br>
&gt; +<br>
&gt; +/*<br>
&gt; + * Given a physical address and a length, return a virtual address<br=
>
&gt; + * that can be used to access the memory range with the caching<br>
&gt; + * properties specified by &quot;flags&quot;.<br>
&gt; + */<br>
&gt; +#define MAP_NOCACHE =A0(0)<br>
&gt; +#define MAP_WRCOMBINE =A0 =A0 =A0 =A0(0)<br>
&gt; +#define MAP_WRBACK =A0 (0)<br>
&gt; +#define MAP_WRTHROUGH =A0 =A0 =A0 =A0(0)<br>
&gt; +<br>
&gt; +static inline void *<br>
&gt; +map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags=
)<br>
&gt; +{<br>
&gt; + =A0 =A0 return (void *)paddr;<br>
&gt; +}<br>
&gt; +<br>
&gt; +/*<br>
&gt; + * Take down a mapping set up by map_physmem().<br>
&gt; + */<br>
&gt; +static inline void unmap_physmem(void *vaddr, unsigned long flags)<br=
>
&gt; +{<br>
&gt; +<br>
&gt; +}<br>
&gt; +<br>
&gt; +static inline phys_addr_t virt_to_phys(void * vaddr)<br>
&gt; +{<br>
&gt; + =A0 =A0 return (phys_addr_t)(vaddr);<br>
&gt; +}<br>
&gt; +<br>
&gt; +extern unsigned char inb (unsigned char *port);<br>
&gt; +extern unsigned short inw (unsigned short *port);<br>
&gt; +extern unsigned inl (unsigned port);<br>
&gt; +<br>
&gt; +#define __raw_writeb(v,a) =A0 =A0 =A0 (*(volatile unsigned char =A0*)=
(a) =3D (v))<br>
&gt; +#define __raw_writew(v,a) =A0 =A0 =A0 (*(volatile unsigned short *)(a=
) =3D (v))<br>
&gt; +#define __raw_writel(v,a) =A0 =A0 =A0 (*(volatile unsigned int =A0 *)=
(a) =3D (v))<br>
&gt; +<br>
&gt; +#define __raw_readb(a) =A0 =A0 =A0 =A0 =A0(*(volatile unsigned char =
=A0*)(a))<br>
&gt; +#define __raw_readw(a) =A0 =A0 =A0 =A0 =A0(*(volatile unsigned short =
*)(a))<br>
&gt; +#define __raw_readl(a) =A0 =A0 =A0 =A0 =A0(*(volatile unsigned int =
=A0 *)(a))<br>
&gt; +<br>
&gt; +#define readb(addr)\<br>
&gt; + =A0 =A0 ({unsigned char val;\<br>
&gt; + =A0 =A0 =A0asm volatile( &quot;ldbio %0, 0(%1)&quot; :&quot;=3Dr&quo=
t;(val) : &quot;r&quot; (addr)); val;})<br>
&gt; +#define readw(addr)\<br>
&gt; + =A0 =A0 ({unsigned short val;\<br>
&gt; + =A0 =A0 =A0asm volatile( &quot;ldhio %0, 0(%1)&quot; :&quot;=3Dr&quo=
t;(val) : &quot;r&quot; (addr)); val;})<br>
&gt; +#define readl(addr)\<br>
&gt; + =A0 =A0 ({unsigned long val;\<br>
&gt; + =A0 =A0 =A0asm volatile( &quot;ldwio %0, 0(%1)&quot; :&quot;=3Dr&quo=
t;(val) : &quot;r&quot; (addr)); val;})<br>
&gt; +<br>
&gt; +#define writeb(val,addr)\<br>
&gt; + =A0 =A0 asm volatile (&quot;stbio %0, 0(%1)&quot; : : &quot;r&quot; =
(val), &quot;r&quot; (addr))<br>
&gt; +#define writew(val,addr)\<br>
&gt; + =A0 =A0 asm volatile (&quot;sthio %0, 0(%1)&quot; : : &quot;r&quot; =
(val), &quot;r&quot; (addr))<br>
&gt; +#define writel(val,addr)\<br>
&gt; + =A0 =A0 asm volatile (&quot;stwio %0, 0(%1)&quot; : : &quot;r&quot; =
(val), &quot;r&quot; (addr))<br>
&gt; +<br>
&gt; +#define inb(addr) =A0 =A0readb(addr)<br>
&gt; +#define inw(addr) =A0 =A0readw(addr)<br>
&gt; +#define inl(addr) =A0 =A0readl(addr)<br>
&gt; +#define outb(val, addr) =A0 =A0 =A0writeb(val,addr)<br>
&gt; +#define outw(val, addr) =A0 =A0 =A0writew(val,addr)<br>
&gt; +#define outl(val, addr) =A0 =A0 =A0writel(val,addr)<br>
<br>
</div></div>We won&#39;t need this in barebox environment. We should just s=
tick to<br>
read*/write*<br></blockquote><div><br></div><div>done.</div><div>=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5"><br>
&gt; diff --git a/nios2/include/asm/nios2-io.h b/nios2/include/asm/nios2-io=
.h<br>
&gt; new file mode 100644<br>
&gt; index 0000000..c20885b<br>
&gt; --- /dev/null<br>
&gt; +++ b/nios2/include/asm/nios2-io.h<br>
&gt; @@ -0,0 +1,182 @@<br>
&gt; +/*<br>
&gt; + * (C) Copyright 2004, Psyent Corporation &lt;<a href=3D"http://www.p=
syent.com" target=3D"_blank">www.psyent.com</a>&gt;<br>
&gt; + * Scott McNutt &lt;<a href=3D"mailto:smcnutt@psyent.com">smcnutt@psy=
ent.com</a>&gt;<br>
&gt; + *<br>
&gt; + * See file CREDITS for list of people who contributed to this<br>
&gt; + * project.<br>
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
&gt; +/********************************************************************=
*****<br>
&gt; + * Altera Nios2 Standard Peripherals<br>
&gt; + ********************************************************************=
****/<br>
&gt; +<br>
&gt; +#ifndef __NIOS2IO_H__<br>
&gt; +#define __NIOS2IO_H__<br>
&gt; +<br>
&gt; +/*-------------------------------------------------------------------=
-----<br>
&gt; + * UART (<a href=3D"http://www.altera.com/literature/ds/ds_nios_uart.=
pdf" target=3D"_blank">http://www.altera.com/literature/ds/ds_nios_uart.pdf=
</a>)<br>
&gt; + *-------------------------------------------------------------------=
---*/<br>
&gt; +typedef volatile struct nios_uart_t {<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0rxdata; =A0 =A0 =A0 =A0 /* Rx data r=
eg */<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0txdata; =A0 =A0 =A0 =A0 /* Tx data r=
eg */<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0status; =A0 =A0 =A0 =A0 /* Status re=
g */<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0control; =A0 =A0 =A0 =A0/* Control r=
eg */<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0divisor; =A0 =A0 =A0 =A0/* Baud rate=
 divisor reg */<br>
&gt; + =A0 =A0 unsigned =A0 =A0 =A0 =A0endofpacket; =A0 =A0/* End-of-packet=
 reg */<br>
&gt; +}nios_uart_t;<br>
<br>
</div></div>Please do not typedef struct types. Also, the volatile is unnec=
essary.<br>
<font color=3D"#888888"><br></font></blockquote><div><br></div><div>done.</=
div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex;"><font color=3D"#888888">
--<br>
Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |<br>
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | <a href=3D"htt=
p://www.pengutronix.de/" target=3D"_blank">http://www.pengutronix.de/</a> =
=A0|<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0 =
=A0|<br>
Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-20=
6917-5555 |<br></font></blockquote><div><br></div><div>Franck.</div></div><=
br></div>

--000e0cd1e2a04c6e1e049eb07430--


--===============0766741494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0766741494==--
