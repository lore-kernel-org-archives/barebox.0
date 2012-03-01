Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S39hm-0001RS-QV
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 17:22:15 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 1784DDC30F7
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2012 18:25:04 +0100 (CET)
Date: Thu, 1 Mar 2012 18:12:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120301171243.GU12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330618889-11482-3-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330618889-11482-3-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH 3/3] pm9g45: enable USB OHCI host and USB mass storage
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:21 Thu 01 Mar     , Asen Chavdarov Dimov wrote:
> FIXME: execute the "usb" command twice to create the /dev/disk0 device.
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
>  arch/arm/boards/pm9g45/init.c     |   21 ++++++++++++++++++++-
>  arch/arm/configs/pm9g45_defconfig |   31 +++++++++++++++----------------
>  2 files changed, 35 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
> index 257e5e2..b26038e 100644
> --- a/arch/arm/boards/pm9g45/init.c
> +++ b/arch/arm/boards/pm9g45/init.c
> @@ -92,6 +92,23 @@ static void add_device_mci(void)
>  static void add_device_mci(void) {}
>  #endif
>  
> +/*
> + * USB OHCI Host port
> + */
> +#ifdef CONFIG_USB_OHCI_AT91
> +static struct at91_usbh_data  __initdata usbh_data = {
> +	.ports		= 2,
> +	.vbus_pin	= { AT91_PIN_PD0,  0x0 },
> +};
> +
> +static void __init add_device_usbh(void)
> +{
> +	at91_add_device_usbh_ohci(&usbh_data);
> +}
> +#else
> +static void __init add_device_usbh(void) {}
> +#endif
> +
>  static struct at91_ether_platform_data macb_pdata = {
>  	.flags = AT91SAM_ETHER_RMII,
>  	.phy_addr = 0,
> @@ -123,7 +140,8 @@ static const char *periph_clocks[] __initdata = {
>  	"pioB_clk",
>  	"pioC_clk",
>  	"pioDE_clk",
> -	"macb_clk"
> +	"macb_clk",
> +	"uhphs_clk"
no this is done automaticaly


>  };
>  
>  static int pm9g45_devices_init(void)
> @@ -140,6 +158,7 @@ static int pm9g45_devices_init(void)
>  	add_device_mci();
>  	pm_add_device_nand();
>  	at91_add_device_eth(&macb_pdata);
> +	add_device_usbh();
>  
>  	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
>  	dev_add_bb_dev("self_raw", "self0");
> diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
> index 5132ea4..1f3c780 100644
> --- a/arch/arm/configs/pm9g45_defconfig
> +++ b/arch/arm/configs/pm9g45_defconfig
> @@ -197,7 +197,7 @@ CONFIG_CMD_CRC_CMP=y
>  #
>  # flash                         
>  #
> -CONFIG_CMD_FLASH=y
> +# CONFIG_CMD_FLASH is not set
why this?


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
