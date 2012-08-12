Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ehm-0000Kl-Op
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 20:24:13 +0000
Date: Sun, 12 Aug 2012 22:24:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120812202407.GM1451@pengutronix.de>
References: <1344694760-17468-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344694760-17468-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] devices: fix missing converition to DEVICE_ID_DYNAMIC
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 11, 2012 at 04:19:19PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/beagle/board.c                    |    2 +-
>  arch/arm/boards/chumby_falconwing/falconwing.c    |    2 +-
>  arch/arm/boards/edb93xx/edb93xx.c                 |    2 +-
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    8 ++++----
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    4 ++--
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
>  arch/arm/boards/friendlyarm-tiny210/tiny210.c     |    2 +-
>  arch/arm/boards/guf-neso/board.c                  |    2 +-
>  arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
>  arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
>  arch/arm/boards/mioa701/board.c                   |    2 +-
>  arch/arm/boards/netx/netx.c                       |    2 +-
>  arch/arm/boards/omap343xdsp/board.c               |    2 +-
>  arch/arm/boards/panda/board.c                     |    2 +-
>  arch/arm/boards/pcm038/pcm038.c                   |    2 +-
>  arch/arm/boards/pcm038/pcm970.c                   |    4 ++--
>  arch/arm/boards/pcm043/pcm043.c                   |    2 +-
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c           |    2 +-
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c         |    4 ++--
>  arch/arm/boards/phycard-i.MX27/pca100.c           |    4 ++--
>  arch/arm/boards/scb9328/scb9328.c                 |    4 ++--
>  arch/arm/boards/toshiba-ac100/serial.c            |    2 +-
>  arch/arm/boards/usb-a926x/init.c                  |    2 +-
>  arch/arm/boards/versatile/versatilepb.c           |    2 +-
>  arch/mips/boards/dlink-dir-320/serial.c           |    2 +-
>  arch/mips/boards/qemu-malta/init.c                |    2 +-
>  arch/mips/boards/rzx50/serial.c                   |    2 +-
>  arch/nios2/boards/generic/generic.c               |    2 +-
>  arch/openrisc/boards/generic/generic.c            |    2 +-
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |    4 ++--
>  arch/x86/boards/x86_generic/generic_pc.c          |    2 +-
>  32 files changed, 41 insertions(+), 41 deletions(-)
> 
> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
> index 5122817..76c9be4 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -253,7 +253,7 @@ static struct NS16550_plat serial_plat = {
>  static int beagle_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
>  			   &serial_plat);
>  
>  	return 0;
> diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
> index b40713d..60d1f62 100644
> --- a/arch/arm/boards/chumby_falconwing/falconwing.c
> +++ b/arch/arm/boards/chumby_falconwing/falconwing.c
> @@ -318,7 +318,7 @@ static void falconwing_init_usb(void)
>  
>  	imx23_usb_phy_enable();
>  
> -	add_generic_usb_ehci_device(-1, IMX_USB_BASE, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_USB_BASE, NULL);
>  }
>  
>  static int falconwing_devices_init(void)
> diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
> index d32daf4..3de4d49 100644
> --- a/arch/arm/boards/edb93xx/edb93xx.c
> +++ b/arch/arm/boards/edb93xx/edb93xx.c
> @@ -57,7 +57,7 @@ mem_initcall(ep93xx_mem_init);
>  
>  static int ep93xx_devices_init(void)
>  {
> -	add_cfi_flash_device(-1, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x60000000, EDB93XX_CFI_FLASH_SIZE, 0);
>  
>  	/*
>  	 * Create partitions that should be
> diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> index 193c277..10466ba 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> +++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> @@ -191,9 +191,9 @@ static int eukrea_cpuimx27_devices_init(void)
>  	for (i = 0; i < ARRAY_SIZE(mode); i++)
>  		imx_gpio_mode(mode[i]);
>  
> -	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
>  #ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
> -	add_cfi_flash_device(-1, 0xC2000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC2000000, 32 * 1024 * 1024, 0);
>  #endif
>  	imx27_add_nand(&nand_info);
>  
> @@ -227,13 +227,13 @@ device_initcall(eukrea_cpuimx27_devices_init);
>  static int eukrea_cpuimx27_console_init(void)
>  {
>  #ifdef CONFIG_DRIVER_SERIAL_IMX
> -	imx_add_uart((void *)IMX_UART1_BASE, -1);
> +	imx_add_uart((void *)IMX_UART1_BASE, DEVICE_ID_DYNAMIC);
>  #endif
>  	/* configure 8 bit UART on cs3 */
>  	FMCR &= ~0x2;
>  	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
>  #ifdef CONFIG_DRIVER_SERIAL_NS16550
> -	add_ns16550_device(-1, IMX_CS3_BASE + QUART_OFFSET, 0xf,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, IMX_CS3_BASE + QUART_OFFSET, 0xf,
>  			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
>  #endif
>  	return 0;
> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 49dbabc..e657e77 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -220,13 +220,13 @@ static int eukrea_cpuimx35_devices_init(void)
>  
>  #ifdef CONFIG_USB
>  	imx35_usb_init();
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
>  #endif
>  #ifdef CONFIG_USB_GADGET
>  	/* Workaround ENGcm09152 */
>  	tmp = readl(IMX_OTG_BASE + 0x608);
>  	writel(tmp | (1 << 23), IMX_OTG_BASE + 0x608);
> -	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
> +	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, IMX_OTG_BASE, 0x200,
>  			   IORESOURCE_MEM, &usb_pdata);
>  #endif
>  	armlinux_set_bootparams((void *)0x80000100);
> diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> index 97c1fd9..f6162fd 100644
> --- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> @@ -213,7 +213,7 @@ static int imx25_devices_init(void)
>  	 * the CPLD has to be initialized.
>  	 */
>  	imx25_usb_init();
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
>  #endif
>  
>  	imx25_iim_register_fec_ethaddr();
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> index 9b255a5..c71e668 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -159,7 +159,7 @@ static int f3s_devices_init(void)
>  	 * This platform supports NOR and NAND
>  	 */
>  	imx35_add_nand(&nand_info);
> -	add_cfi_flash_device(-1, IMX_CS0_BASE, 64 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, 64 * 1024 * 1024, 0);
>  
>  	switch ((reg >> 25) & 0x3) {
>  	case 0x01:		/* NAND is the source */
> diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
> index 1277649..18494b0 100644
> --- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
> +++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
> @@ -86,7 +86,7 @@ static int tiny210_console_init(void)
>  	s3c_gpio_mode(GPA02_NCTS0 | ENABLE_PU);
>  	s3c_gpio_mode(GPA03_NRTS0);
>  
> -	add_generic_device("s3c_serial", -1, NULL,
> +	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL,
>  			   S3C_UART1_BASE, S3C_UART1_SIZE,
>  			   IORESOURCE_MEM, NULL);
>  	return 0;
> diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
> index fbb20c1..623dc0a 100644
> --- a/arch/arm/boards/guf-neso/board.c
> +++ b/arch/arm/boards/guf-neso/board.c
> @@ -280,7 +280,7 @@ static int neso_devices_init(void)
>  
>  #ifdef CONFIG_USB
>  	neso_usbh_init();
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
>  #endif
>  
>  	imx27_add_fec(&fec_info);
> diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
> index 2bbd5ed..58086bc 100644
> --- a/arch/arm/boards/imx21ads/imx21ads.c
> +++ b/arch/arm/boards/imx21ads/imx21ads.c
> @@ -167,7 +167,7 @@ static int mx21ads_devices_init(void)
>  	for (i = 0; i < ARRAY_SIZE(mode); i++)
>  		imx_gpio_mode(mode[i]);
>  
> -	add_cfi_flash_device(-1, 0xC8000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC8000000, 32 * 1024 * 1024, 0);
>  	imx21_add_nand(&nand_info);
>  	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL, IMX_CS1_BASE, 0x1000,
>  			IORESOURCE_MEM, NULL);
> diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
> index ff00224..6b0fc72 100644
> --- a/arch/arm/boards/imx27ads/imx27ads.c
> +++ b/arch/arm/boards/imx27ads/imx27ads.c
> @@ -108,7 +108,7 @@ static int mx27ads_devices_init(void)
>  	for (i = 0; i < ARRAY_SIZE(mode); i++)
>  		imx_gpio_mode(mode[i]);
>  
> -	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
>  
>  	imx27_add_fec(&fec_info);
>  	devfs_add_partition("nor0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "self0");
> diff --git a/arch/arm/boards/mioa701/board.c b/arch/arm/boards/mioa701/board.c
> index ab5a493..b5c05a6 100644
> --- a/arch/arm/boards/mioa701/board.c
> +++ b/arch/arm/boards/mioa701/board.c
> @@ -121,7 +121,7 @@ static int mioa701_devices_init(void)
>  
>  	pxa_add_pwm((void *)0x40b00000, 0);
>  	pxa_add_fb((void *)0x44000000, &mioa701_pxafb_info);
> -	pxa_add_mmc((void *)0x41100000, -1, &mioa701_mmc_info);
> +	pxa_add_mmc((void *)0x41100000, DEVICE_ID_DYNAMIC, &mioa701_mmc_info);
>  	docg3_iospace = map_io_sections(0x0, (void *)0xe0000000, 0x2000);
>  	add_generic_device("docg3", DEVICE_ID_DYNAMIC, NULL, (ulong) docg3_iospace,
>  			0x2000, IORESOURCE_MEM, NULL);
> diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
> index c4a8733..fde1b94 100644
> --- a/arch/arm/boards/netx/netx.c
> +++ b/arch/arm/boards/netx/netx.c
> @@ -47,7 +47,7 @@ static int netx_mem_init(void)
>  mem_initcall(netx_mem_init);
>  
>  static int netx_devices_init(void) {
> -	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
>  
>  	add_generic_device("netx-eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
>  			&eth0_data);
> diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
> index b5174f3..8d41193 100644
> --- a/arch/arm/boards/omap343xdsp/board.c
> +++ b/arch/arm/boards/omap343xdsp/board.c
> @@ -621,7 +621,7 @@ static struct NS16550_plat serial_plat = {
>  static int sdp3430_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
>  			   &serial_plat);
>  
>  	return 0;
> diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
> index 84b4ecd..98c05b2 100644
> --- a/arch/arm/boards/panda/board.c
> +++ b/arch/arm/boards/panda/board.c
> @@ -92,7 +92,7 @@ static void panda_ehci_init(void)
>  	/* enable power to hub */
>  	gpio_set_value(GPIO_HUB_POWER, 1);
>  
> -	add_usb_ehci_device(-1, 0x4a064c00,
> +	add_usb_ehci_device(DEVICE_ID_DYNAMIC, 0x4a064c00,
>  			    0x4a064c00 + 0x10, &ehci_pdata);
>  }
>  #else
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 8f1271f..912d6ea 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -292,7 +292,7 @@ static int pcm038_devices_init(void)
>  
>  	pcm038_power_init();
>  
> -	add_cfi_flash_device(-1, 0xC0000000, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
>  	imx27_add_nand(&nand_info);
>  	imx27_add_fb(&pcm038_fb_data);
>  
> diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
> index b956482..31af383 100644
> --- a/arch/arm/boards/pcm038/pcm970.c
> +++ b/arch/arm/boards/pcm038/pcm970.c
> @@ -48,7 +48,7 @@ static void pcm970_usbh2_init(void)
>  	mdelay(10);
>  
>  	if (!ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1))
> -		add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +		add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
>  }
>  #endif
>  
> @@ -73,7 +73,7 @@ static struct ide_port_info pcm970_ide_pdata = {
>  };
>  
>  static struct device_d pcm970_ide_device = {
> -	.id		= -1,
> +	.id		= DEVICE_ID_DYNAMIC,
>  	.name		= "ide_intf",
>  	.num_resources	= ARRAY_SIZE(pcm970_ide_resources),
>  	.resource	= pcm970_ide_resources,
> diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
> index 152b47c..95e12fd 100644
> --- a/arch/arm/boards/pcm043/pcm043.c
> +++ b/arch/arm/boards/pcm043/pcm043.c
> @@ -148,7 +148,7 @@ static int imx35_devices_init(void)
>  	 * Up to 32MiB NOR type flash, connected to
>  	 * CS line 0, data width is 16 bit
>  	 */
> -	add_cfi_flash_device(-1, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, 32 * 1024 * 1024, 0);
>  
>  	if ((reg & 0xc00) == 0x800) {   /* reset mode: external boot */
>  		switch ( (reg >> 25) & 0x3) {
> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> index 7823f3b..907198d 100644
> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
> @@ -327,7 +327,7 @@ static struct NS16550_plat serial_plat = {
>   */
>  static int pcaal1_init_console(void)
>  {
> -	add_ns16550_device(-1, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP_UART3_BASE, 1024, IORESOURCE_MEM_8BIT,
>  			   &serial_plat);
>  
>  	return 0;
> diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> index 220f7f4..4fec0f0 100644
> --- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> +++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
> @@ -51,7 +51,7 @@ static struct NS16550_plat serial_plat = {
>  static int pcaaxl2_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, OMAP44XX_UART3_BASE, 1024,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP44XX_UART3_BASE, 1024,
>  		IORESOURCE_MEM_8BIT, &serial_plat);
>  
>  	return 0;
> @@ -85,7 +85,7 @@ static void pcaaxl2_network_init(void)
>  {
>  	gpmc_cs_config(5, &net_cfg);
>  
> -	add_ks8851_device(-1, net_cfg.base, net_cfg.base + 2,
> +	add_ks8851_device(DEVICE_ID_DYNAMIC, net_cfg.base, net_cfg.base + 2,
>  				IORESOURCE_MEM_16BIT, NULL);
>  }
>  
> diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
> index 126f9ef..614bfc6 100644
> --- a/arch/arm/boards/phycard-i.MX27/pca100.c
> +++ b/arch/arm/boards/phycard-i.MX27/pca100.c
> @@ -141,9 +141,9 @@ static void pca100_usb_register(void)
>  	mdelay(10);
>  
>  	ulpi_setup((void *)(IMX_OTG_BASE + 0x170), 1);
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE, NULL);
>  	ulpi_setup((void *)(IMX_OTG_BASE + 0x570), 1);
> -	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
> +	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
>  }
>  #endif
>  
> diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
> index 9a342a8..671adbf 100644
> --- a/arch/arm/boards/scb9328/scb9328.c
> +++ b/arch/arm/boards/scb9328/scb9328.c
> @@ -88,8 +88,8 @@ static int scb9328_devices_init(void)
>  	CS5U = 0x00008400;
>  	CS5L = 0x00000D03;
>  
> -	add_cfi_flash_device(-1, 0x10000000, 16 * 1024 * 1024, 0);
> -	add_dm9000_device(-1, 0x16000000, 0x16000004,
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x10000000, 16 * 1024 * 1024, 0);
> +	add_dm9000_device(DEVICE_ID_DYNAMIC, 0x16000000, 0x16000004,
>  			  IORESOURCE_MEM_16BIT, &dm9000_data);
>  
>  	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
> diff --git a/arch/arm/boards/toshiba-ac100/serial.c b/arch/arm/boards/toshiba-ac100/serial.c
> index 2ed0e39..39d2658 100644
> --- a/arch/arm/boards/toshiba-ac100/serial.c
> +++ b/arch/arm/boards/toshiba-ac100/serial.c
> @@ -35,7 +35,7 @@ static struct NS16550_plat serial_plat = {
>  static int ac100_serial_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, TEGRA_UARTA_BASE, 8 << serial_plat.shift,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, TEGRA_UARTA_BASE, 8 << serial_plat.shift,
>  			IORESOURCE_MEM_8BIT, &serial_plat);
>  
>  	return 0;
> diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
> index 4d5fdca..7e63876 100644
> --- a/arch/arm/boards/usb-a926x/init.c
> +++ b/arch/arm/boards/usb-a926x/init.c
> @@ -290,7 +290,7 @@ static void usb_a9260_keyboard_device_dab_mmx(void)
>  		at91_set_deglitch(keys[i].gpio, 1);
>  	}
>  
> -	add_gpio_keys_device(-1, &gk_pdata);
> +	add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_pdata);
>  }
>  #else
>  static void usb_a9260_keyboard_device_dab_mmx(void) {}
> diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
> index b95e605..b834bbb 100644
> --- a/arch/arm/boards/versatile/versatilepb.c
> +++ b/arch/arm/boards/versatile/versatilepb.c
> @@ -50,7 +50,7 @@ mem_initcall(vpb_mem_init);
>  
>  static int vpb_devices_init(void)
>  {
> -	add_cfi_flash_device(-1, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, VERSATILE_FLASH_BASE, VERSATILE_FLASH_SIZE, 0);
>  	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self");
>  	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
>  
> diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
> index 3eaab2a..1185248 100644
> --- a/arch/mips/boards/dlink-dir-320/serial.c
> +++ b/arch/mips/boards/dlink-dir-320/serial.c
> @@ -35,7 +35,7 @@ static struct NS16550_plat serial_plat = {
>  static int dir320_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
>  			IORESOURCE_MEM_8BIT, &serial_plat);
>  
>  	return 0;
> diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
> index 0efc92a..45f66f2 100644
> --- a/arch/mips/boards/qemu-malta/init.c
> +++ b/arch/mips/boards/qemu-malta/init.c
> @@ -58,7 +58,7 @@ static struct NS16550_plat serial_plat = {
>  static int malta_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
>  			IORESOURCE_MEM_8BIT, &serial_plat);
>  
>  	return 0;
> diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
> index 308cd18..3f593c9 100644
> --- a/arch/mips/boards/rzx50/serial.c
> +++ b/arch/mips/boards/rzx50/serial.c
> @@ -58,7 +58,7 @@ static struct NS16550_plat serial_plat = {
>  static int rzx50_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, UART1_BASE, 8 << JZ4750D_UART_SHIFT,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, UART1_BASE, 8 << JZ4750D_UART_SHIFT,
>  			IORESOURCE_MEM_8BIT, &serial_plat);
>  
>  	return 0;
> diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
> index 2c998fe..cdaaa02 100644
> --- a/arch/nios2/boards/generic/generic.c
> +++ b/arch/nios2/boards/generic/generic.c
> @@ -34,7 +34,7 @@ static struct device_d mac_dev = {
>  
>  static int generic_devices_init(void)
>  {
> -	add_cfi_flash_device(-1, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
>  	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
>  		       IORESOURCE_MEM_WRITEABLE);
>  	register_device(&mac_dev);
> diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
> index 6a9ce5b..54c73a5 100644
> --- a/arch/openrisc/boards/generic/generic.c
> +++ b/arch/openrisc/boards/generic/generic.c
> @@ -12,7 +12,7 @@ static struct NS16550_plat serial_plat = {
>  static int openrisc_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
>  	return 0;
>  }
>  
> diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> index 4cebf79..734fef9 100644
> --- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> +++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
> @@ -74,7 +74,7 @@ static struct gfar_info_struct gfar_info[] = {
>  
>  static int devices_init(void)
>  {
> -	add_cfi_flash_device(-1, CFG_FLASH_BASE, 16 << 20, 0);
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
>  
>  	/* eTSEC3 */
>  	fsl_eth_init(3, &gfar_info[0]);
> @@ -95,7 +95,7 @@ static int p2020_console_init(void)
>  {
>  	serial_plat.clock = fsl_get_bus_freq(0);
>  
> -	add_ns16550_device(-1, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
>  			   &serial_plat);
>  	return 0;
>  }
> diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
> index 4be1237..046f76d 100644
> --- a/arch/x86/boards/x86_generic/generic_pc.c
> +++ b/arch/x86/boards/x86_generic/generic_pc.c
> @@ -78,7 +78,7 @@ static struct NS16550_plat serial_plat = {
>  static int pc_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(-1, 0x3f8, 8, 0, &serial_plat);
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
>  
>  	return 0;
>  }
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
