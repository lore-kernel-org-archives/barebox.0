Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo6.mail-out.ovh.net ([46.105.59.196]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnRJX-0001VG-Q1
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 11:05:21 +0000
Received: from mail640.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 568ABFFA1B5
 for <barebox@lists.infradead.org>; Mon,  2 Dec 2013 12:06:35 +0100 (CET)
Date: Mon, 2 Dec 2013 12:04:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131202110452.GC27628@ns203013.ovh.net>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
 <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
 <20131202090135.GE24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131202090135.GE24559@pengutronix.de>
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
Subject: Re: [PATCH 2/6] ARM: introduce machine description
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:01 Mon 02 Dec     , Sascha Hauer wrote:
> On Thu, Nov 28, 2013 at 07:06:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to do not check in each board which machine we are running
> > from. This work on DT & non-DT board.
> > 
> > If only one board is enable autoselect it
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/cpu/Makefile              |   2 +-
> >  arch/arm/cpu/dtb.c                 |   8 +-
> >  arch/arm/cpu/machine.c             | 188 +++++++++++++++++++++++++++++++++++++
> >  arch/arm/include/asm/barebox-arm.h |   8 ++
> >  arch/arm/include/asm/mach/arch.h   |  68 ++++++++++++++
> >  arch/arm/lib/barebox.lds.S         |   6 ++
> >  6 files changed, 277 insertions(+), 3 deletions(-)
> >  create mode 100644 arch/arm/cpu/machine.c
> >  create mode 100644 arch/arm/include/asm/mach/arch.h
> > 
> > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > index aba201b..78532da 100644
> > --- a/arch/arm/cpu/Makefile
> > +++ b/arch/arm/cpu/Makefile
> > @@ -1,7 +1,7 @@
> >  obj-y += cpu.o
> >  obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
> >  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> > -obj-y += start.o setupc.o
> > +obj-y += machine.o start.o setupc.o
> >  
> >  #
> >  # Any variants can be called as start-armxyz.S
> > diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
> > index a5881dd..ee7006e 100644
> > --- a/arch/arm/cpu/dtb.c
> > +++ b/arch/arm/cpu/dtb.c
> > @@ -18,10 +18,11 @@
> >  #include <init.h>
> >  #include <of.h>
> >  #include <asm/barebox-arm.h>
> > +#include <asm/mach/arch.h>
> >  
> >  extern char __dtb_start[];
> >  
> > -static int of_arm_init(void)
> > +int of_arm_init(void)
> >  {
> >  	struct device_node *root;
> >  	void *fdt;
> > @@ -48,6 +49,10 @@ static int of_arm_init(void)
> >  	}
> >  
> >  	root = of_unflatten_dtb(NULL, fdt);
> > +
> > +	if (arm_set_dt_machine(NULL))
> > +		pr_debug("No compatible machine found\n");
> 
> Why call this with NULL and not the compatible string found in the just
> unflattened dt?

if NULL the code check for the compatible node

otherwise for a specific compatible passs as arg
> 
> > +
> >  	if (root) {
> >  		of_set_root_node(root);
> >  		if (IS_ENABLED(CONFIG_OFDEVICE))
> > @@ -56,4 +61,3 @@ static int of_arm_init(void)
> >  
> >  	return 0;
> >  }
> > -core_initcall(of_arm_init);
> > diff --git a/arch/arm/cpu/machine.c b/arch/arm/cpu/machine.c
> > new file mode 100644
> > index 0000000..ad0d8cb
> > --- /dev/null
> > +++ b/arch/arm/cpu/machine.c
> > @@ -0,0 +1,188 @@
> > +/*
> > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > + *
> > + * Under GPLv2 Only
> > + */
> > +
> > +#include <common.h>
> > +#include <asm/mach/arch.h>
> > +#include <asm/barebox-arm.h>
> > +#include <asm/armlinux.h>
> > +#include <generated/mach-types.h>
> > +#include <init.h>
> > +#include <string.h>
> > +#include <debug_ll.h>
> > +
> > +const struct machine_desc *machine_desc;
> > +unsigned int __machine_arch_type = ~0;
> > +
> > +int arm_set_machine(const unsigned int type)
> > +{
> > +	const struct machine_desc *m;
> > +
> > +	puts_ll("type ");
> > +	puthex_ll(type);
> > +	puts_ll("\n");
> > +
> > +	if (type == ~0)
> > +		return -ENOENT;
> > +
> > +	for_each_machine_desc(m) {
> > +		puts_ll("machine ");
> > +		if (m->name)
> > +			puts_ll(m->name);
> > +		puts_ll("\n");
> > +		if (m->nr == type) {
> > +			machine_desc = (const struct machine_desc *)m;
> > +			__machine_arch_type = type;
> > +			armlinux_set_architecture(__machine_arch_type);
> > +			return 0;
> > +		}
> > +	}
> > +
> > +	return -ENOENT;
> > +}
> > +
> > +int is_dt_compatible(const struct machine_desc *m, const char* dt_compat)
> > +{
> > +	const char *const *dtc = m->dt_compat;
> > +
> > +	while (dtc) {
> > +		const char *s = *dtc;
> > +		if (dt_compat && !of_compat_cmp(s, dt_compat, strlen(dt_compat)))
> > +			return 1;
> > +		else if (of_machine_is_compatible(s))
> > +			return 1;
> > +		dtc++;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +int arm_set_dt_machine(const char* dt_compat)
> 
> I don't really understand how this function behaves. It should set the
> machine desc based on dt_compat, but seems to fall back to some other
> mechanism when dt_compat is NULL. Looking at it this function is only

simple 2 case

1 check the compatible node

1 check a specific comp if pas as arg

> called with NULL argument in your code, so it seems like it depends on
> of_machine_is_compatible(), but this can only return something valid
> when the root_node has been set. You call arm_set_dt_machine() before
> of_set_root_node() so this can't work.
> 
> Matching a machine_desc to a devicetree is more complicated. You can't
> return the first match, but instead have to find the best match. If you
> have multiple i.MX6 machines, then all will match to fsl,imx6. You have
> to find the correct board though.

no they will have their own compatible in the DT_MACHINE_DESC

so fsl,imx6 execpt if all the board use the same c board file
as we have on the kernel for at91

> 
> If you don't have a dt machine to test this on atm I think it's better
> if you just drop dt support from this patchset.

I test the function and use it on some at91 board

and it does work


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
