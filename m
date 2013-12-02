Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnS59-0002pG-6L
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 11:54:31 +0000
Date: Mon, 2 Dec 2013 12:54:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131202115409.GG24559@pengutronix.de>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
 <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
 <20131202090135.GE24559@pengutronix.de>
 <20131202110452.GC27628@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131202110452.GC27628@ns203013.ovh.net>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 02, 2013 at 12:04:52PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:01 Mon 02 Dec     , Sascha Hauer wrote:
> > >  	struct device_node *root;
> > >  	void *fdt;
> > > @@ -48,6 +49,10 @@ static int of_arm_init(void)
> > >  	}
> > >  
> > >  	root = of_unflatten_dtb(NULL, fdt);
> > > +
> > > +	if (arm_set_dt_machine(NULL))
> > > +		pr_debug("No compatible machine found\n");
> > 
> > Why call this with NULL and not the compatible string found in the just
> > unflattened dt?
> 
> if NULL the code check for the compatible node
> 
> otherwise for a specific compatible passs as arg

As said, it can't work when you call arm_set_dt_machine() before
of_set_root_node() as you do here.

> > > +int is_dt_compatible(const struct machine_desc *m, const char* dt_compat)
> > > +{
> > > +	const char *const *dtc = m->dt_compat;
> > > +
> > > +	while (dtc) {

*dtc btw. dtc will always be true, at least until it wraps around 32bit.

> > > +		const char *s = *dtc;
> > > +		if (dt_compat && !of_compat_cmp(s, dt_compat, strlen(dt_compat)))
> > > +			return 1;
> > > +		else if (of_machine_is_compatible(s))
> > > +			return 1;
> > > +		dtc++;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +int arm_set_dt_machine(const char* dt_compat)
> > 
> > I don't really understand how this function behaves. It should set the
> > machine desc based on dt_compat, but seems to fall back to some other
> > mechanism when dt_compat is NULL. Looking at it this function is only
> 
> simple 2 case
> 
> 1 check the compatible node
> 
> 1 check a specific comp if pas as arg
> 
> > called with NULL argument in your code, so it seems like it depends on
> > of_machine_is_compatible(), but this can only return something valid
> > when the root_node has been set. You call arm_set_dt_machine() before
> > of_set_root_node() so this can't work.
> > 
> > Matching a machine_desc to a devicetree is more complicated. You can't
> > return the first match, but instead have to find the best match. If you
> > have multiple i.MX6 machines, then all will match to fsl,imx6. You have
> > to find the correct board though.
> 
> no they will have their own compatible in the DT_MACHINE_DESC

Look for example in a current kernel. The SH Mobile koelsch board has:

	compatible = "renesas,koelsch", "renesas,r8a7791";

The kernel has a specific koelsch machine descriptor:

> static const char * const koelsch_boards_compat_dt[] __initconst = {
> 	"renesas,koelsch",
> 	NULL,
> };
> 
> DT_MACHINE_START(KOELSCH_DT, "koelsch")
> 	.smp		= smp_ops(r8a7791_smp_ops),
> 	.init_early	= r8a7791_init_early,
> 	.init_machine	= koelsch_add_standard_devices,
> 	.init_time	= rcar_gen2_timer_init,
> 	.dt_compat	= koelsch_boards_compat_dt,
> MACHINE_END

Additionally there is a generic SoC machine descriptor:

> static const char *r8a7791_boards_compat_dt[] __initdata = {
> 	"renesas,r8a7791",
> 	NULL,
> };
> 
> DT_MACHINE_START(R8A7791_DT, "Generic R8A7791 (Flattened Device Tree)")
> 	.smp		= smp_ops(r8a7791_smp_ops),
> 	.init_early	= r8a7791_init_early,
> 	.init_time	= rcar_gen2_timer_init,
> 	.dt_compat	= r8a7791_boards_compat_dt,
> MACHINE_END

Now of course when you have a koelsch board and koelsch support compiled
in you want to match the renesas,koelsch machine entry and not the
renesas,r8a7791 entry.

The kernel does this with of_flat_dt_match_machine().

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
