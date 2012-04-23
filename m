Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMEP6-0003dm-Fv
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 08:13:50 +0000
Date: Mon, 23 Apr 2012 10:13:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120423081335.GD3852@pengutronix.de>
References: <20120415145953.GK3852@pengutronix.de>
 <1334913691-13315-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334913691-13315-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V3 2/3] Minimal support of the MPC85xx architecture
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 20, 2012 at 10:21:30AM +0100, Renaud Barbier wrote:
> The directories cpu-85xx and mach-mpc85xx contain a minimal CPU support
> suitable for the P2020RDB board. This includes startup code for the CPU,
> peripherals and clock source initialization as well as header files
> and updates to configuration and build files.
> 
> Also the introduction of the new CPU architecture and board support
> leads to the update of existing header files. Are added:
>  - functions and macros to manipulate bits of registers field values.
>  - external declaration of cache handling functions to prevent
>    compilation warnings.
>  - new processor definitions.
>  - macros (in replacement of existing definitions) to set 85xx TLB
>    registers.

Could you seperate the update of the existing header files to some extra
patches? This would ease the review.
Generally smaller patches would be much easier to swallow.

>  arch/ppc/lib/Makefile                             |    2 +
>  arch/ppc/lib/board.c                              |   11 +-
>  arch/ppc/lib/reloc.S                              |   47 +
>  arch/ppc/lib/time-mpc85xx.c                       |   54 +

As suggested in 1/3 this should also be in arch/ppc/mach-mpc85xx.

>  arch/ppc/mach-mpc85xx/Kconfig                     |   45 +
>  arch/ppc/mach-mpc85xx/Makefile                    |    5 +
>  arch/ppc/mach-mpc85xx/cpuid.c                     |   69 ++
>  arch/ppc/mach-mpc85xx/fsl_law.c                   |  156 +++
>  arch/ppc/mach-mpc85xx/fsl_lbc.c                   |   17 +
>  arch/ppc/mach-mpc85xx/include/mach/clocks.h       |   11 +
>  arch/ppc/mach-mpc85xx/include/mach/early_udelay.h |   33 +
>  arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h   |  132 +++
>  arch/ppc/mach-mpc85xx/include/mach/mp.h           |   15 +
>  arch/ppc/mach-mpc85xx/include/mach/mpc85xx.h      |   17 +
>  arch/ppc/mach-mpc85xx/include/mach/ppc_asm.tmpl   |  208 ++++

U-Boot only has one ppc_asm.tmpl. Can we share this aswell?

>  arch/ppc/mach-mpc85xx/mp.c                        |  156 +++
>  arch/ppc/mach-mpc85xx/speed.c                     |   97 ++
>  include/linux/types.h                             |    2 +
> +
> +#include <config.h>
> +#include <asm/config_mpc85xx.h>
> +#include <mach/mpc85xx.h>
> +
> +#define _LINUX_CONFIG_H 1	/* avoid reading Linux autoconf.h file	*/

This seems unnecessary.

> diff --git a/arch/ppc/include/asm/global_data.h b/arch/ppc/include/asm/global_data.h
> new file mode 100644
> index 0000000..8c1a975
> --- /dev/null
> +++ b/arch/ppc/include/asm/global_data.h
> @@ -0,0 +1,56 @@
> +/*
> + * Copyright 2012 GE Intelligent Platforms, Inc.
> + * (C) Copyright 2002-2010
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
> +#ifndef	__ASM_GBL_DATA_H
> +#define __ASM_GBL_DATA_H
> +
> +#include "config.h"
> +#include "asm/types.h"
> +
> +/*
> + * The following data structure is placed in some memory wich is
> + * available very early after boot (some locked parts of the data cache)
> + * to allow for a minimum set of global variables during system initialization
> + * (until we have set * up the memory controller so that we can use RAM).
> + */
> +
> +struct	global_data {
> +	unsigned long	flags;
> +	unsigned long	baudrate;
> +	unsigned long	cpu_clk;	/* CPU clock in Hz! */
> +	unsigned long	bus_clk;
> +	unsigned long	mem_clk;
> +	u32 lbc_clk;
> +	void *cpu;
> +	u32 i2c1_clk;
> +	u32 i2c2_clk;
> +	u32 used_laws;
> +	u32 used_tlb_cams[(NUM_TLBCAMS+31)/32];
> +	phys_size_t	ram_size;
> +	unsigned long	board_type;
> +};

This struct should not exist. Most fields are unused anyway, only
used_laws and used_tlb_cams are used. These two fields are used in a
single file only, so no need to put them somewhere globally.

> +
> +#define DECLARE_GLOBAL_DATA_PTR		register struct global_data \
> +					*gd asm ("r2")

With the above struct removed you can also remove this one and with it
the -ffixed-r2 compiler option to help gcc to generate a slightly more
efficient code.


> +++ b/arch/ppc/mach-mpc85xx/include/mach/early_udelay.h
> @@ -0,0 +1,33 @@
> +/*
> + * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
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
> +#include <common.h>
> +
> +/* delay execution before timers are initialized */
> +static inline void early_udelay(uint32_t usecs)
> +{
> +	/* loop takes 4 cycles. */
> +	 uint32_t loops = usecs * (1000 / 4); /* CPU freq = 1Ghz */
> +
> +	while (loops)
> +		loops--;
> +}

Are you sure this works? without loops being volatile gcc can optimize
the whole loop away.

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
