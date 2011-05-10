Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QJhC0-0007tS-20
	for barebox@lists.infradead.org; Tue, 10 May 2011 07:17:17 +0000
Date: Tue, 10 May 2011 09:17:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110510071713.GE30963@pengutronix.de>
References: <1304852976-8236-1-git-send-email-plagnioj@jcrosoft.com>
	<20110509142507.GB30963@pengutronix.de>
	<20110509144838.GF18791@game.jcrosoft.org>
	<20110509153623.GD30963@pengutronix.de>
	<20110509165359.GG18791@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110509165359.GG18791@game.jcrosoft.org>
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

On Mon, May 09, 2011 at 06:53:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:36 Mon 09 May     , Sascha Hauer wrote:
> > On Mon, May 09, 2011 at 04:48:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 16:25 Mon 09 May     , Sascha Hauer wrote:
> > > > > +
> > > > > +static struct device_d sdram_dev = {
> > > > > +	.id = -1,
> > > > > +	.name = "mem",
> > > > > +	.map_base = AT91_CHIPSELECT_1,
> > > > > +	.platform_data = &ram_pdata,
> > > > > +};
> > > > > +
> > > > > +void at91_add_device_sdram(u32 size)
> > > > > +{
> > > > > +	sdram_dev.size = size;
> > > > > +	register_device(&sdram_dev);
> > > > > +	armlinux_add_dram(&sdram_dev);
> > > > > +}
> > > > 
> > > > We already have this function in the tree four times and there is
> > > > nothing at91 specific in it. Please stop duplicating it.
> > > yes but the structure is local and can not be shared between SOC
> > 
> > Just move both the function and the structure to a common place.
> > Arguably this is not even at91 specific. It should be usable by other
> > architectures aswell (this would need dynamic allocation of the data
> > structure and id counting).
> I'm not really a fan of dynamic resources allocation but this is not the scope
> of this patch
> This shoulb be done in a second time
> > 
> > > > > +
> > > > > +void __init at91_add_device_eth(struct at91_ether_platform_data *data)
> > > > > +{
> > > > > +	if (!data)
> > > > > +		return;
> > > > 
> > > > Why this check here? I'd rather see a crash when someone calls this
> > > > function without data than just nothing happening.
> > > i prefer to keep the code running and do not register the ethernet device
> > 
> > It does not make sense. No board calls this function without valid data,
> > because it's not working.
> bug hanging is a bad habit
> print something ok but not hanging
> > 
> > > > 
> > > > > +
> > > > > +void __init at91_register_uart(unsigned id, unsigned pins)
> > > > > +{
> > > > > +	switch (id) {
> > > > 
> > > > This id dispatching does not make much sense. You should export
> > > > the functions for the individual uarts instead. This makes this funcion
> > > > disappear completely and gives the linker a chance to throw away the
> > > > code for unused uarts.
> > > It's the same API as in the kernel I do want to keep then sync
> > > I do not want to have to maintain 2 implemetations for few bytes
> > 
> > Honestly this can't be the excuse for everything. Then go out and fix
> > the kernel aswell. Arm folks have great interest in shrinking the code
> > footprint lately.
> sorry here I do not think of any improvment even in the kernel to have one
> function per uart resources it will not reduce the footprint so much but just
> increase the number of API.

I don't buy this. Where's the problem of having three functions instead
of one when the end result is shorter and easier to read?

> 
> At kernel level I will not accept again on at91 to have 1000 of functions to
> register each resources. On contrary I'll try to recude it.

Then do it in a way which does not add code just to dispatch the input
and is otherwise useless and shorter without.

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
