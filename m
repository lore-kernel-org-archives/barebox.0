Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbXZy-00040T-R4
 for barebox@lists.infradead.org; Sun, 12 May 2013 14:48:51 +0000
Date: Sun, 12 May 2013 16:48:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512144828.GA32299@pengutronix.de>
References: <1367847339-28363-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367847339-28363-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: pcm038: Add support for USB OTG device
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 05:35:39PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/pcm038/pcm038.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 4b2fa6c..3aec320 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -48,6 +48,7 @@
>  
>  #define PCM038_GPIO_FEC_RST	(GPIO_PORTC + 30)
>  #define PCM038_GPIO_SPI_CS0	(GPIO_PORTD + 28)
> +#define PCM038_GPIO_OTG_STP	(GPIO_PORTE + 1)
>  
>  static struct fec_platform_data fec_info = {
>  	.xcv_type = PHY_INTERFACE_MODE_MII,
> @@ -186,6 +187,11 @@ static int pcm038_power_init(void)
>  	return 0;
>  }
>  
> +struct imxusb_platformdata pcm038_otg_pdata = {
> +	.mode	= IMX_USB_MODE_DEVICE,
> +	.flags	= MXC_EHCI_MODE_ULPI | MXC_EHCI_INTERFACE_DIFF_UNI,
> +};
> +
>  static int pcm038_devices_init(void)
>  {
>  	int i;
> @@ -253,7 +259,7 @@ static int pcm038_devices_init(void)
>  		PA29_PF_VSYNC,
>  		PA30_PF_CONTRAST,
>  		PA31_PF_OE_ACD,
> -		/* OTG host */
> +		/* USB OTG */
>  		PC7_PF_USBOTG_DATA5,
>  		PC8_PF_USBOTG_DATA6,
>  		PC9_PF_USBOTG_DATA0,
> @@ -262,7 +268,7 @@ static int pcm038_devices_init(void)
>  		PC12_PF_USBOTG_DATA4,
>  		PC13_PF_USBOTG_DATA3,
>  		PE0_PF_USBOTG_NXT,
> -		PE1_PF_USBOTG_STP,
> +		PCM038_GPIO_OTG_STP | GPIO_GPIO | GPIO_OUT,
>  		PE2_PF_USBOTG_DIR,
>  		PE24_PF_USBOTG_CLK,
>  		PE25_PF_USBOTG_DATA7,
> @@ -308,6 +314,13 @@ static int pcm038_devices_init(void)
>  	gpio_set_value(PCM038_GPIO_FEC_RST, 1);
>  	imx27_add_fec(&fec_info);
>  
> +	/* Apply delay for STP line to stop ULPI */
> +	gpio_direction_output(PCM038_GPIO_OTG_STP, 1);
> +	mdelay(1);
> +	imx_gpio_mode(PE1_PF_USBOTG_STP);
> +
> +	imx27_add_usbotg(&pcm038_otg_pdata);
> +
>  	switch (bootsource_get()) {
>  	case BOOTSOURCE_NAND:
>  		devfs_add_partition("nand0", 0x00000, 0x80000,
> -- 
> 1.8.1.5
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
