Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkEgt-0005wB-Gd
 for barebox@lists.infradead.org; Sat, 23 Nov 2013 15:00:14 +0000
Received: from mail173.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E6069FF9D61
 for <barebox@lists.infradead.org>; Sat, 23 Nov 2013 16:02:08 +0100 (CET)
Date: Sat, 23 Nov 2013 16:02:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131123150213.GA29652@ns203013.ovh.net>
References: <20131121071216.GE7965@ns203013.ovh.net>
 <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
 <20131122074245.GJ24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131122074245.GJ24559@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:42 Fri 22 Nov     , Sascha Hauer wrote:
> On Thu, Nov 21, 2013 at 08:13:53AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +static int arm_mach_early_init(void)
> > +{
> > +	arm_mach_only_one_machine();
> > +
> > +	if (machine_desc && machine_desc->init_early)
> > +		machine_desc->init_early();
> > +	
> > +	return 0;
> > +}
> > +pure_initcall(arm_mach_early_init);
> 
> Can we call of_arm_init() from here instead of a separate initcall?

I do not have dt board to test as I've moving for few days

if you can test the v2 on this it will be nice

I've test it on vexpress and at91 (I switch them all)

I was also thinking also to pass the archid to barebox via r1 as done on the
kernel

as on at91bootstrap we are already passing it

we could also use r2 to give dtb add if the first stage handle

so barebox could boot as a linux kernel too
> 
> > +
> > +static int arm_mach_console_init(void)
> > +{
> > +	if (!machine_desc)
> > +		return 0;
> > +
> > +	if (machine_desc->name)
> > +		barebox_set_model(machine_desc->name);
> > +
> > +	if (machine_desc->init_console)
> > +		machine_desc->init_console();
> > +
> > +	return 0;
> > +}
> > +console_initcall(arm_mach_console_init);
> > +
> > +static int arm_mach_machine_init(void)
> > +{
> > +	if (machine_desc && machine_desc->init_machine)
> > +		machine_desc->init_machine();
> > +
> > +	return 0;
> > +}
> > +device_initcall(arm_mach_machine_init);
> > +
> > +static int arm_mach_late_init(void)
> > +{
> > +	if (machine_desc && machine_desc->init_late)
> > +		machine_desc->init_late();
> 
> I think all these should return int. This way we could see if something
> goes wrong.
ok
> 
> > +
> > +	return 0;
> > +}
> > +late_initcall(arm_mach_late_init);
> > diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
> > new file mode 100644
> > index 0000000..4e0e771
> > --- /dev/null
> > +++ b/arch/arm/include/asm/mach/arch.h
> > @@ -0,0 +1,66 @@
> > +/*
> > + *  arch/arm/include/asm/mach/arch.h
> > + *
> > + *  Copyright (C) 2000 Russell King
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2 as
> > + * published by the Free Software Foundation.
> > + */
> > +
> > +#include <linux/types.h>
> > +#include <linux/stringify.h>
> > +
> > +#ifndef __ASM_MACH_ARCH_H__
> > +#define __ASM_MACH_ARCH_H__
> > +
> > +struct machine_desc {
> > +	unsigned int		nr;		/* architecture number	*/
> > +	const char		*name;		/* architecture name	*/
> > +	const char *const	*dt_compat;	/* array of device tree
> > +						 * 'compatible' strings	*/
> > +
> > +	void			(*init_early)(void);
> > +	void			(*init_console)(void);
> > +	void			(*init_time)(void);
> 
> I think init_time doesn't make sense in the context of barebox. What I'd
> like to have though is a init_soc which the boards set to some SoC
> specific function so that later code knows which SoC we're on.

here I've an issue some SoC need late_init and other init

so I was thinking to have soc_desc too
> 
> Can we stick the naming more to the existing barebox initcall levels
> instead of the Linux machine desc names? Something like:
> 
> soc_init
> pure_init
> core_init
> postcore_init
> console_init
> coredevice_init
> device_init
> late_init
with mmu_init and mem_init yes
> 
> (Where soc_init would be called on pure_initcall level, but after the
> of/machine desc has been parsed)
> 
> > +
> > +/*
> > + * Current machine - only accessible during boot.
> > + */
> 
> Can you drop the comments that don't make sense for barebox?
yeah

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
