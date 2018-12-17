Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYqyp-0003EB-Vj
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 11:22:37 +0000
Date: Mon, 17 Dec 2018 12:22:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217112224.ijd5ncoycumpkjxo@pengutronix.de>
References: <20181217055149.15355-1-shc_work@mail.ru>
 <20181217055149.15355-2-shc_work@mail.ru>
 <20181217070016.setzeqh762wohwhq@pengutronix.de>
 <20181217101004.7hyrr2mhlxloxqhm@pengutronix.de>
 <79e80334-b83c-e392-62cf-081a4bd3570e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79e80334-b83c-e392-62cf-081a4bd3570e@pengutronix.de>
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
Subject: Re: [PATCH V2 2/2] ARM: CCMX51: Switch to multiimage support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 17, 2018 at 11:57:29AM +0100, Oleksij Rempel wrote:
> Hi,
> 
> On 17.12.18 11:10, Sascha Hauer wrote:
> > On Mon, Dec 17, 2018 at 08:00:16AM +0100, Oleksij Rempel wrote:
> > > Hi Alexander,
> > > 
> > > please, use pr_info, or better dev_info() if you wont to print some
> > > thing from the driver.
> > > 
> > > >   }
> > > 
> > > Hm, I assume, PMIC code should be moved to drivers/regulator/..
> > 
> > We do not have any code to configure PMICs to sane defaults or to
> > defaults from the devicetree. I would surely appreciate if we would
> > get that code, but I am perfectly fine to put it into board code until
> > we are there.
> > 
> > > 
> > > > +static int ccxmx51_board_fixup(struct device_node *root, void *unused)
> > > > +{
> > > > +	char *serial;
> > > > +
> > > > +	if (!ccxmx_id->accel)
> > > > +		ccxmx51_disable_device(root, "mma7455l@1d");
> > > > +
> > > > +	if (!ccxmx_id->eth0)
> > > > +		ccxmx51_disable_device(root, "ethernet@83fec000");
> > > > +
> > > > +	if (!ccxmx_id->eth1)
> > > > +		ccxmx51_disable_device(root, "lan9221@5,0");
> > > > +
> > > > +	if (!ccxmx_id->wless)
> > > > +		ccxmx51_disable_device(root, "esdhc@70008000");
> > > > +
> > > > +	serial = basprintf("%08x%08x", 0, boardserial);
> > > > +	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
> > > > +	free(serial);
> > > 
> > > should it be done by devicetree?
> > 
> > How should runtime specific patching of the devicetree be done by the
> > devicetree?
> 
> Do you mean, this board specific information is not described by devicetree?

Whether or not the board variant has ethernet support is encoded in eFuses
used in some board specific manner, see the decoding of the fuses which
is also changed in this patch.

> > > > @@ -41,7 +42,6 @@ CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
> > > >   CONFIG_MACH_FREESCALE_MX7_SABRESD=y
> > > >   CONFIG_MACH_NXP_IMX6ULL_EVK=y
> > > >   CONFIG_MACH_GRINN_LITEBOARD=y
> > > > -CONFIG_IMX_IIM=y
> > > 
> > > Why this was silently changed by this patch?
> > 
> > It's not silently changed, this goes down to a make savedefconfig which
> > removes all options which are set to default (or are selected by other
> > options).
> 
> Well, for me it looks cryptic. The patch is "CCMX51: Switch to multiimage
> support", at same time it modifies generic imx config in not obvious way.

Well, we could split out a "refresh imx_v7_defconfig" patch but I do not
think it's worth it.

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
