Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by casper.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlJ7S-0002Xo-WD
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 10:10:14 +0000
Received: by ywi6 with SMTP id 6so1585991ywi.36
	for <barebox@lists.infradead.org>; Tue, 17 Aug 2010 03:09:19 -0700 (PDT)
Message-ID: <4C6A5FBF.5040102@gmail.com>
Date: Tue, 17 Aug 2010 05:09:03 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1280915957-2910-13-git-send-email-m.grzeschik@pengutronix.de>
	<1282034451-18154-1-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1282034451-18154-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] beagle: fix usb dependencies
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/17/2010 03:40 AM, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik<m.grzeschik@pengutronix.de>
Acked-by: Nishanth Menon <nm@ti.com>
> ---
>   arch/arm/boards/omap/Kconfig        |    2 --
>   arch/arm/boards/omap/board-beagle.c |    4 ++++
>   2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boards/omap/Kconfig b/arch/arm/boards/omap/Kconfig
> index 6012227..d612064 100644
> --- a/arch/arm/boards/omap/Kconfig
> +++ b/arch/arm/boards/omap/Kconfig
> @@ -48,8 +48,6 @@ config MACH_BEAGLE
>   	select MACH_HAS_LOWLEVEL_INIT
>   	select OMAP_CLOCK_ALL
>   	select HAS_OMAP_NAND
> -	select USB_EHCI_OMAP
> -	select USB_TWL4030
>   	  help
>   	  Say Y here if you are using Beagle Board
>
> diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
> index c0b6b43..e9d3072 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -273,6 +273,7 @@ static struct device_d sdram_dev = {
>   	.platform_data =&sram_pdata,
>   };
>
> +#ifdef CONFIG_USB_EHCI_OMAP
>   static struct omap_hcd omap_ehci_pdata = {
>   	.port_mode[0] = EHCI_HCD_OMAP_MODE_PHY,
>   	.port_mode[1] = EHCI_HCD_OMAP_MODE_PHY,
> @@ -295,6 +296,7 @@ static struct device_d usbh_dev = {
>   	.size     = 4 * 1024,
>   	.platform_data =&ehci_pdata,
>   };
> +#endif /* CONFIG_USB_EHCI_OMAP */
>
>   static struct device_d i2c_dev = {
>   	.name		= "i2c-omap",
> @@ -318,8 +320,10 @@ static int beagle_devices_init(void)
>   	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
>   	register_device(&i2c_dev);
>
> +#ifdef CONFIG_USB_EHCI_OMAP
>   	if (ehci_omap_init(&omap_ehci_pdata)>= 0)
>   		register_device(&usbh_dev);
> +#endif /* CONFIG_USB_EHCI_OMAP */
>   #ifdef CONFIG_GPMC
>   	/* WP is made high and WAIT1 active Low */
>   	gpmc_generic_init(0x10);


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
