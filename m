Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QJSVX-0003ZT-Hm
	for barebox@lists.infradead.org; Mon, 09 May 2011 15:36:28 +0000
Date: Mon, 9 May 2011 17:36:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110509153623.GD30963@pengutronix.de>
References: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
	<20110509142507.GB30963@pengutronix.de>
	<20110509144838.GF18791@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110509144838.GF18791@game.jcrosoft.org>
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
Subject: Re: [PATCH] at91: Support for at91rm9200: core chip & board support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On Mon, May 09, 2011 at 04:48:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:25 Mon 09 May     , Sascha Hauer wrote:
> > > +
> > > +static struct device_d sdram_dev = {
> > > +	.id = -1,
> > > +	.name = "mem",
> > > +	.map_base = AT91_CHIPSELECT_1,
> > > +	.platform_data = &ram_pdata,
> > > +};
> > > +
> > > +void at91_add_device_sdram(u32 size)
> > > +{
> > > +	sdram_dev.size = size;
> > > +	register_device(&sdram_dev);
> > > +	armlinux_add_dram(&sdram_dev);
> > > +}
> > 
> > We already have this function in the tree four times and there is
> > nothing at91 specific in it. Please stop duplicating it.
> yes but the structure is local and can not be shared between SOC

Just move both the function and the structure to a common place.
Arguably this is not even at91 specific. It should be usable by other
architectures aswell (this would need dynamic allocation of the data
structure and id counting).

> > > +
> > > +void __init at91_add_device_eth(struct at91_ether_platform_data *data)
> > > +{
> > > +	if (!data)
> > > +		return;
> > 
> > Why this check here? I'd rather see a crash when someone calls this
> > function without data than just nothing happening.
> i prefer to keep the code running and do not register the ethernet device

It does not make sense. No board calls this function without valid data,
because it's not working.

> > 
> > > +
> > > +void __init at91_register_uart(unsigned id, unsigned pins)
> > > +{
> > > +	switch (id) {
> > 
> > This id dispatching does not make much sense. You should export
> > the functions for the individual uarts instead. This makes this funcion
> > disappear completely and gives the linker a chance to throw away the
> > code for unused uarts.
> It's the same API as in the kernel I do want to keep then sync
> I do not want to have to maintain 2 implemetations for few bytes

Honestly this can't be the excuse for everything. Then go out and fix
the kernel aswell. Arm folks have great interest in shrinking the code
footprint lately.

> > 
> > Please do not put clearly driver related header files to include/mach.
> > Also, code for the emac driver should already be in the tree, right?
> no it's not it's old crap implemetation this one is taken from the kernel
> I keep the header at the same place between barebox on linux

Sorry, barebox is not the kernel. Sharing things is good but not at the
price of copying bad (and actually obsoleted) ideas from the
kernel.

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
