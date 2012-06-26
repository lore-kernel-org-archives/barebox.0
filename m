Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjayr-00051u-QJ
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 18:59:19 +0000
Date: Tue, 26 Jun 2012 20:59:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626185915.GN14321@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <1340704314-12593-4-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340704314-12593-4-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 03/12] mach-davinci: add pin mux support
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 26, 2012 at 11:51:45AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
> +++ b/arch/arm/mach-davinci/mux.c
> @@ -0,0 +1,78 @@
> +/*
> + * Utility to set the DAVINCI MUX register from a table in mux.h
> + *
> + * Author: Vladimir Barinov, MontaVista Software, Inc. <source@mvista.com>
> + *
> + * Based on linux/arch/arm/plat-omap/mux.c:
> + * Copyright (C) 2003 - 2005 Nokia Corporation
> + *
> + * Written by Tony Lindgren
> + *
> + * 2007 (c) MontaVista Software, Inc. This file is licensed under
> + * the terms of the GNU General Public License version 2. This program
> + * is licensed "as is" without any warranty of any kind, whether express
> + * or implied.
> + *
> + * Copyright (C) 2008 Texas Instruments.
> + */
> +
> +#include <config.h>
> +#include <common.h>
> +#include <errno.h>
> +#include <io.h>
> +
> +#include <mach/da8xx.h>
> +#include <mach/mux.h>
> +
> +static void *pinmux_base = (void*)DA8XX_SYSCFG0_BASE + 0x120;
> +
> +/*
> + * Sets the DAVINCI MUX register
> + */
> +int davinci_cfg_reg(const struct mux_config *cfg)
> +{
> +	unsigned int reg_orig = 0, reg = 0;
> +	unsigned int mask, warn = 0;
> +
> +	/* Update the mux register in question */
> +	if (cfg->mask) {
> +		unsigned	tmp1, tmp2;
> +
> +		reg_orig = readl(pinmux_base + cfg->mux_reg);
> +
> +		mask = (cfg->mask << cfg->mask_offset);
> +		tmp1 = reg_orig & mask;
> +		reg = reg_orig & ~mask;
> +
> +		tmp2 = (cfg->mode << cfg->mask_offset);
> +		reg |= tmp2;
> +
> +		if (tmp1 != tmp2)
> +			warn = 1;

Does this 'warn' mean that this function actually changes something? If
yes, the variable should better be named 'changed'.

> +
> +		writel(reg, pinmux_base + cfg->mux_reg);
> +	}
> +
> +	if (warn) {
> +#ifdef DEBUG
> +		printk("MUX: setting register %s in %s (0x%08x) = 0x%08x -> 0x%08x\n", cfg->name,
> +		       cfg->mux_reg_name, (unsigned int)pinmux_base + cfg->mux_reg, reg_orig, reg);
> +#endif

You can just use the debug() function without ifdefs.

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
