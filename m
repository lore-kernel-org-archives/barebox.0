Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV4j1-0001GM-35
 for barebox@lists.infradead.org; Thu, 17 May 2012 17:42:55 +0000
Date: Thu, 17 May 2012 19:42:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120517174253.GF30400@pengutronix.de>
References: <1337269578-20570-1-git-send-email-eric@eukrea.com>
 <1337269578-20570-14-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337269578-20570-14-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 14/16] eukrea_cpuimx35: fix PHY address
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 17, 2012 at 05:46:16PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   90 ++++++++++-----=
-----
>  1 files changed, 45 insertions(+), 45 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm=
/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index bfdd9de..1869e9d 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -58,7 +58,7 @@
>  =

>  static struct fec_platform_data fec_info =3D {
>  	.xcv_type	=3D MII100,
> -	.phy_addr	=3D 0x1F,
> +	.phy_addr	=3D 0,
>  };

This patch seems to do more than what the subject suggests. What's the
stuff below?

Sascha

>  =

>  struct imx_nand_platform_data nand_info =3D {
> @@ -143,49 +143,6 @@ static int eukrea_cpuimx35_mmu_init(void)
>  }
>  postmmu_initcall(eukrea_cpuimx35_mmu_init);
>  =

> -static int eukrea_cpuimx35_devices_init(void)
> -{
> -#ifdef CONFIG_USB_GADGET
> -	unsigned int tmp;
> -#endif
> -	imx35_add_nand(&nand_info);
> -
> -	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_r=
aw");
> -	dev_add_bb_dev("self_raw", "self0");
> -	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_ra=
w");
> -	dev_add_bb_dev("env_raw", "env0");
> -
> -	imx35_add_fec(&fec_info);
> -	imx35_add_fb(&ipu_fb_data);
> -
> -	imx35_add_i2c0(NULL);
> -	imx35_add_mmc0(NULL);
> -
> -	/* led default off */
> -	gpio_direction_output(32 * 2 + 29, 1);
> -
> -	/* Switch : input */
> -	gpio_direction_input(32 * 2 + 25);
> -
> -#ifdef CONFIG_USB
> -	imx35_usb_init();
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> -#endif
> -#ifdef CONFIG_USB_GADGET
> -	/* Workaround ENGcm09152 */
> -	tmp =3D readl(IMX_OTG_BASE + 0x608);
> -	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
> -	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
> -			   IORESOURCE_MEM, &usb_pdata);
> -#endif
> -	armlinux_set_bootparams((void *)0x80000100);
> -	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
> -
> -	return 0;
> -}
> -
> -device_initcall(eukrea_cpuimx35_devices_init);
> -
>  static struct pad_desc eukrea_cpuimx35_pads[] =3D {
>  	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
>  	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
> @@ -230,11 +187,54 @@ static struct pad_desc eukrea_cpuimx35_pads[] =3D {
>  	MX35_PAD_LD19__GPIO3_25,
>  };
>  =

> -static int eukrea_cpuimx35_console_init(void)
> +static int eukrea_cpuimx35_devices_init(void)
>  {
> +#ifdef CONFIG_USB_GADGET
> +	unsigned int tmp;
> +#endif
>  	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx35_pads,
>  		ARRAY_SIZE(eukrea_cpuimx35_pads));
>  =

> +	imx35_add_nand(&nand_info);
> +
> +	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_r=
aw");
> +	dev_add_bb_dev("self_raw", "self0");
> +	devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_ra=
w");
> +	dev_add_bb_dev("env_raw", "env0");
> +
> +	imx35_add_fec(&fec_info);
> +	imx35_add_fb(&ipu_fb_data);
> +
> +	imx35_add_i2c0(NULL);
> +	imx35_add_mmc0(NULL);
> +
> +	/* led default off */
> +	gpio_direction_output(32 * 2 + 29, 1);
> +
> +	/* Switch : input */
> +	gpio_direction_input(32 * 2 + 25);
> +
> +#ifdef CONFIG_USB
> +	imx35_usb_init();
> +	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +#endif
> +#ifdef CONFIG_USB_GADGET
> +	/* Workaround ENGcm09152 */
> +	tmp =3D readl(IMX_OTG_BASE + 0x608);
> +	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
> +	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
> +			   IORESOURCE_MEM, &usb_pdata);
> +#endif
> +	armlinux_set_bootparams((void *)0x80000100);
> +	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
> +
> +	return 0;
> +}
> +
> +device_initcall(eukrea_cpuimx35_devices_init);
> +
> +static int eukrea_cpuimx35_console_init(void)
> +{
>  	/* screen default on to prevent flicker */
>  	gpio_direction_output(4, 0);
>  	/* backlight default off */
> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
