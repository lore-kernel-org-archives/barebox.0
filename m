Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYpqq-0000JX-Gh
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 10:10:18 +0000
Date: Mon, 17 Dec 2018 11:10:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217101004.7hyrr2mhlxloxqhm@pengutronix.de>
References: <20181217055149.15355-1-shc_work@mail.ru>
 <20181217055149.15355-2-shc_work@mail.ru>
 <20181217070016.setzeqh762wohwhq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181217070016.setzeqh762wohwhq@pengutronix.de>
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

On Mon, Dec 17, 2018 at 08:00:16AM +0100, Oleksij Rempel wrote:
> Hi Alexander,
> 
> please, use pr_info, or better dev_info() if you wont to print some
> thing from the driver.
> 
> >  }
> 
> Hm, I assume, PMIC code should be moved to drivers/regulator/..

We do not have any code to configure PMICs to sane defaults or to
defaults from the devicetree. I would surely appreciate if we would
get that code, but I am perfectly fine to put it into board code until
we are there.

> 
> > +static int ccxmx51_board_fixup(struct device_node *root, void *unused)
> > +{
> > +	char *serial;
> > +
> > +	if (!ccxmx_id->accel)
> > +		ccxmx51_disable_device(root, "mma7455l@1d");
> > +
> > +	if (!ccxmx_id->eth0)
> > +		ccxmx51_disable_device(root, "ethernet@83fec000");
> > +
> > +	if (!ccxmx_id->eth1)
> > +		ccxmx51_disable_device(root, "lan9221@5,0");
> > +
> > +	if (!ccxmx_id->wless)
> > +		ccxmx51_disable_device(root, "esdhc@70008000");
> > +
> > +	serial = basprintf("%08x%08x", 0, boardserial);
> > +	of_set_property(root, "serial-number", serial, strlen(serial) + 1, 1);
> > +	free(serial);
> 
> should it be done by devicetree?

How should runtime specific patching of the devicetree be done by the
devicetree?

> > +	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
> > +						BBU_HANDLER_FLAG_DEFAULT);
> 
> this can be done in separate patch.

Could be done, I am fine with leaving it in this patch.

> 
> > -	imx51_add_uart0();
> > +	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
> > +		defaultenv_append_directory(defaultenv_ccxmx51);
> 
> do we really need extra defaultenv_append_directory() for this board?

> > -late_initcall(ccxmx51js_init);
> > diff --git a/arch/arm/boards/ccxmx51/env/boot/nand b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/boot/nand
> > similarity index 100%
> > rename from arch/arm/boards/ccxmx51/env/boot/nand
> > rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/boot/nand
> > diff --git a/arch/arm/boards/ccxmx51/env/nv/autoboot_timeout b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/autoboot_timeout
> > similarity index 100%
> > rename from arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
> > rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/autoboot_timeout
> > diff --git a/arch/arm/boards/ccxmx51/env/nv/boot.default b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/boot.default
> > similarity index 100%
> > rename from arch/arm/boards/ccxmx51/env/nv/boot.default
> > rename to arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/boot.default
> > diff --git a/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.bootargs.base b/arch/arm/boards/ccxmx51/defaultenv-ccxmx51/nv/linux.bootargs.base
> 
> I would really prefer to remove board specific env if possible, it is
> hard to keep it in sync with real default env.

For 'autoboot_timeout' I agree since there is no real point in putting
personal preference in there. 2s vs. 3s doesn't really justify putting
board specifics in. 'linux.bootargs.base' contains 'earlyprintk' which
should really be in a default environment as this can make a kernel non
bootable.

For 'nand' and 'boot.default' I would say that this is exactly the way
how a different default boot should be done, so I am fine with leaving
it in.

> > @@ -41,7 +42,6 @@ CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
> >  CONFIG_MACH_FREESCALE_MX7_SABRESD=y
> >  CONFIG_MACH_NXP_IMX6ULL_EVK=y
> >  CONFIG_MACH_GRINN_LITEBOARD=y
> > -CONFIG_IMX_IIM=y
> 
> Why this was silently changed by this patch?

It's not silently changed, this goes down to a make savedefconfig which
removes all options which are set to default (or are selected by other
options).

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
