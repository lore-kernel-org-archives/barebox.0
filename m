Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjlON-0008Uh-Ix
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 07:43:08 +0000
Date: Fri, 22 Nov 2013 08:42:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131122074245.GJ24559@pengutronix.de>
References: <20131121071216.GE7965@ns203013.ovh.net>
 <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] ARM: introduce machine description
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 21, 2013 at 08:13:53AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +static int arm_mach_early_init(void)
> +{
> +	arm_mach_only_one_machine();
> +
> +	if (machine_desc && machine_desc->init_early)
> +		machine_desc->init_early();
> +	
> +	return 0;
> +}
> +pure_initcall(arm_mach_early_init);

Can we call of_arm_init() from here instead of a separate initcall?

> +
> +static int arm_mach_console_init(void)
> +{
> +	if (!machine_desc)
> +		return 0;
> +
> +	if (machine_desc->name)
> +		barebox_set_model(machine_desc->name);
> +
> +	if (machine_desc->init_console)
> +		machine_desc->init_console();
> +
> +	return 0;
> +}
> +console_initcall(arm_mach_console_init);
> +
> +static int arm_mach_machine_init(void)
> +{
> +	if (machine_desc && machine_desc->init_machine)
> +		machine_desc->init_machine();
> +
> +	return 0;
> +}
> +device_initcall(arm_mach_machine_init);
> +
> +static int arm_mach_late_init(void)
> +{
> +	if (machine_desc && machine_desc->init_late)
> +		machine_desc->init_late();

I think all these should return int. This way we could see if something
goes wrong.

> +
> +	return 0;
> +}
> +late_initcall(arm_mach_late_init);
> diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
> new file mode 100644
> index 0000000..4e0e771
> --- /dev/null
> +++ b/arch/arm/include/asm/mach/arch.h
> @@ -0,0 +1,66 @@
> +/*
> + *  arch/arm/include/asm/mach/arch.h
> + *
> + *  Copyright (C) 2000 Russell King
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +
> +#include <linux/types.h>
> +#include <linux/stringify.h>
> +
> +#ifndef __ASM_MACH_ARCH_H__
> +#define __ASM_MACH_ARCH_H__
> +
> +struct machine_desc {
> +	unsigned int		nr;		/* architecture number	*/
> +	const char		*name;		/* architecture name	*/
> +	const char *const	*dt_compat;	/* array of device tree
> +						 * 'compatible' strings	*/
> +
> +	void			(*init_early)(void);
> +	void			(*init_console)(void);
> +	void			(*init_time)(void);

I think init_time doesn't make sense in the context of barebox. What I'd
like to have though is a init_soc which the boards set to some SoC
specific function so that later code knows which SoC we're on.

Can we stick the naming more to the existing barebox initcall levels
instead of the Linux machine desc names? Something like:

soc_init
pure_init
core_init
postcore_init
console_init
coredevice_init
device_init
late_init

(Where soc_init would be called on pure_initcall level, but after the
of/machine desc has been parsed)

> +
> +/*
> + * Current machine - only accessible during boot.
> + */

Can you drop the comments that don't make sense for barebox?

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
