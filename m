Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pzn88-0002st-7v
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 09:35:02 +0000
Date: Wed, 16 Mar 2011 10:34:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110316093457.GO29521@pengutronix.de>
References: <n>
 <1299710787-11990-2-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1299710787-11990-2-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 1/2] Add Altera Nios2 arch support
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

Hi Julien,

The patch looks mostly ok. Only a few comments inline and some coding
style nitpicks:

- several trailing whitespaces
- return is not a function (should be return 0 instead of return (0)
- there should be no braces between a function and its arguments

I think the included checkpatch script should catch most of them.


> +
> diff --git a/nios2/configs/generic_defconfig b/nios2/configs/generic_defconfig
> new file mode 100644
> index 0000000..76b69da
> --- /dev/null
> +++ b/nios2/configs/generic_defconfig

Please generate the config with make savedefconfig

> diff --git a/nios2/include/asm/barebox.h b/nios2/include/asm/barebox.h
> new file mode 100644
> index 0000000..2fcf31c
> --- /dev/null
> +++ b/nios2/include/asm/barebox.h
> @@ -0,0 +1,47 @@
> +/*
> + * barebox - barebox.h Structure declarations for board specific data
> + *
> + * Copyright (c) 2005 blackfin.uclinux.org
> + *
> + * (C) Copyright 2000-2004
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
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
> +#ifndef _BAREBOX_H_
> +#define _BAREBOX_H_	1
> +
> +typedef struct bd_info {
> +	int bi_baudrate;		/* serial console baudrate */
> +	unsigned long bi_ip_addr;	/* IP Address */
> +	unsigned char bi_enetaddr[6];	/* Ethernet adress */
> +	unsigned long bi_arch_number;	/* unique id for this board */
> +	unsigned long bi_boot_params;	/* where this board expects params */
> +	unsigned long bi_memstart;	/* start of DRAM memory */
> +	unsigned long bi_memsize;	/* size  of DRAM memory in bytes */
> +	unsigned long bi_flashstart;	/* start of FLASH memory */
> +	unsigned long bi_flashsize;	/* size  of FLASH memory */
> +	unsigned long bi_flashoffset;	/* reserved area for startup monitor */
> +} bd_t;

This isn't used anywhere in this patch. Is it needed for passing data to
Linux? If yes, ok, otherwise please remove it.

> diff --git a/nios2/include/asm/io.h b/nios2/include/asm/io.h
> new file mode 100644
> index 0000000..121405c
> --- /dev/null
> +++ b/nios2/include/asm/io.h
> @@ -0,0 +1,130 @@
> +/*
> + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> + * Scott McNutt <smcnutt@psyent.com>
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
> +#ifndef __ASM_NIOS2_IO_H_
> +#define __ASM_NIOS2_IO_H_
> +
> +static inline void sync(void)
> +{
> +	__asm__ __volatile__ ("sync" : : : "memory");
> +}
> +
> +/*
> + * Given a physical address and a length, return a virtual address
> + * that can be used to access the memory range with the caching
> + * properties specified by "flags".
> + */
> +#define MAP_NOCACHE	(0)
> +#define MAP_WRCOMBINE	(0)
> +#define MAP_WRBACK	(0)
> +#define MAP_WRTHROUGH	(0)
> +
> +static inline void *
> +map_physmem(phys_addr_t paddr, unsigned long len, unsigned long flags)
> +{
> +	return (void *)paddr;
> +}
> +
> +/*
> + * Take down a mapping set up by map_physmem().
> + */
> +static inline void unmap_physmem(void *vaddr, unsigned long flags)
> +{
> +
> +}
> +
> +static inline phys_addr_t virt_to_phys(void * vaddr)
> +{
> +	return (phys_addr_t)(vaddr);
> +}
> +
> +extern unsigned char inb (unsigned char *port);
> +extern unsigned short inw (unsigned short *port);
> +extern unsigned inl (unsigned port);
> +
> +#define __raw_writeb(v,a)       (*(volatile unsigned char  *)(a) = (v))
> +#define __raw_writew(v,a)       (*(volatile unsigned short *)(a) = (v))
> +#define __raw_writel(v,a)       (*(volatile unsigned int   *)(a) = (v))
> +
> +#define __raw_readb(a)          (*(volatile unsigned char  *)(a))
> +#define __raw_readw(a)          (*(volatile unsigned short *)(a))
> +#define __raw_readl(a)          (*(volatile unsigned int   *)(a))
> +
> +#define readb(addr)\
> +	({unsigned char val;\
> +	 asm volatile( "ldbio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> +#define readw(addr)\
> +	({unsigned short val;\
> +	 asm volatile( "ldhio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> +#define readl(addr)\
> +	({unsigned long val;\
> +	 asm volatile( "ldwio %0, 0(%1)" :"=r"(val) : "r" (addr)); val;})
> +
> +#define writeb(val,addr)\
> +	asm volatile ("stbio %0, 0(%1)" : : "r" (val), "r" (addr))
> +#define writew(val,addr)\
> +	asm volatile ("sthio %0, 0(%1)" : : "r" (val), "r" (addr))
> +#define writel(val,addr)\
> +	asm volatile ("stwio %0, 0(%1)" : : "r" (val), "r" (addr))
> +
> +#define inb(addr)	readb(addr)
> +#define inw(addr)	readw(addr)
> +#define inl(addr)	readl(addr)
> +#define outb(val, addr)	writeb(val,addr)
> +#define outw(val, addr)	writew(val,addr)
> +#define outl(val, addr)	writel(val,addr)

We won't need this in barebox environment. We should just stick to
read*/write*

> diff --git a/nios2/include/asm/nios2-io.h b/nios2/include/asm/nios2-io.h
> new file mode 100644
> index 0000000..c20885b
> --- /dev/null
> +++ b/nios2/include/asm/nios2-io.h
> @@ -0,0 +1,182 @@
> +/*
> + * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
> + * Scott McNutt <smcnutt@psyent.com>
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
> +/*************************************************************************
> + * Altera Nios2 Standard Peripherals
> + ************************************************************************/
> +
> +#ifndef __NIOS2IO_H__
> +#define __NIOS2IO_H__
> +
> +/*------------------------------------------------------------------------
> + * UART (http://www.altera.com/literature/ds/ds_nios_uart.pdf)
> + *----------------------------------------------------------------------*/
> +typedef volatile struct nios_uart_t {
> +	unsigned	rxdata;		/* Rx data reg */
> +	unsigned	txdata;		/* Tx data reg */
> +	unsigned	status;		/* Status reg */
> +	unsigned	control;	/* Control reg */
> +	unsigned	divisor;	/* Baud rate divisor reg */
> +	unsigned	endofpacket;	/* End-of-packet reg */
> +}nios_uart_t;

Please do not typedef struct types. Also, the volatile is unnecessary.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
