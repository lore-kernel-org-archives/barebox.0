Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQn3p-00067J-8L
 for barebox@lists.infradead.org; Fri, 09 Oct 2020 07:43:29 +0000
Message-ID: <aae25d119986b106a1abca156a110d7425c58d83.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 09 Oct 2020 09:43:26 +0200
In-Reply-To: <20201009071432.GV11648@pengutronix.de>
References: <20201007130757.20185-1-r.czerwinski@pengutronix.de>
 <20201007130757.20185-2-r.czerwinski@pengutronix.de>
 <20201009071432.GV11648@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 2/2] ARM: imx: Add Support for Webasto ccbv2
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 2020-10-09 at 09:14 +0200, Sascha Hauer wrote:
> On Wed, Oct 07, 2020 at 03:07:58PM +0200, Rouven Czerwinski wrote:
> > +device_initcall(ccbv2_device_init);
> > +
> > +static int ccbv2_apply_overlay(void)
> > +{
> > +	struct device_node *overlay;
> > +	struct fdt_header *fdt;
> > +	int ret;
> > +
> > +	if(!IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
> > +	   || !of_machine_is_compatible("webasto,imx6ul-ccbv2"))
> > +		return 0;
> > +
> > +	fdt = (void*)OPTEE_OVERLAY_LOCATION;
> > +	overlay = of_unflatten_dtb(fdt);
> > +
> > +	if (IS_ERR(overlay))
> > +		return PTR_ERR(overlay);
> > +
> > +	ret = of_register_overlay(overlay);
> > +	if (ret) {
> > +		printf("cannot apply oftree overlay: %s\n", strerror(-
> > ret));
> > +		goto err;
> > +	}
> > +
> > +	return 0;
> > +err:
> > +	of_delete_node(overlay);
> > +	return ret;
> > +}
> > +device_initcall(ccbv2_apply_overlay);
> 
> No need for two initcalls, please combine into one. Also, you could try
> Oleksijs new way of registering board code as a driver, see 5e1fc532538.

Right, will do.

> > +static void configure_uart(void)
> > +{
> > +	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> > +
> > +	imx6_ungate_all_peripherals();
> > +
> > +	imx_setup_pad(iomuxbase, MX6_PAD_LCD_DATA16__UART7_DCE_TX);
> > +	imx_setup_pad(iomuxbase, MX6_PAD_LCD_DATA17__UART7_DCE_RX);
> > +
> > +	imx6_uart_setup((void *)MX6_UART7_BASE_ADDR);
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +		putc_ll('>');
> 
> No need to put that in a IS_ENABLED(CONFIG_DEBUG_LL), without it
> putc_ll() is a no-op anyway.

Great, will fix.

> > diff --git a/firmware/Kconfig b/firmware/Kconfig
> > index 97b7b3c2ee..c2ff51b911 100644
> > --- a/firmware/Kconfig
> > +++ b/firmware/Kconfig
> > @@ -16,4 +16,9 @@ config FIRMWARE_IMX8MP_ATF
> >  config FIRMWARE_IMX8MQ_ATF
> >          bool
> >  
> > +config FIRMWARE_CCBV2_OPTEE
> > +	bool
> > +	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
> > +	default y
> 
> This makes the firmware mandatory for compiling this board, right? Can
> we make this optional so that we can enable the board in
> imx_v7_defconfig?

The firmware is only mandatory if OP-TEE early loading is enabled,
which AFAIK isn't the case for the defconfig, so we should be fine
there.
I'll add it to the defconfig.

Regards,
Rouven


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
