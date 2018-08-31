Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvd0R-0001Ls-TN
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:34:09 +0000
Date: Fri, 31 Aug 2018 08:33:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831063355.yc2ahroax5sjc7uz@pengutronix.de>
References: <20180829131834.12563-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829131834.12563-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: i.MX: Reset OTG controller during startup
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 03:18:34PM +0200, Michael Grzeschik wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> When booting from USB it's sometimes observed that the USB stack on
> the remote host gets confused. This happens when we adjust the PLLs
> the USB controller is hanging on. The ROM just leaves the USB controller
> enabled when it passes control to the bootloader, so in case the usb
> clks are enabled make sure we reset the otg  before doing any critical
> clock operations.
> 
> This is currently done for i.MX50, i.MX51, i.MX53 and i.MX6, but a
> similar thing can happen on other i.MXes aswell.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
> index 85528d77e6..ab827e9fab 100644
> --- a/arch/arm/mach-imx/include/mach/usb.h
> +++ b/arch/arm/mach-imx/include/mach/usb.h
> @@ -14,4 +14,27 @@
>  int imx6_usb_phy2_disable_oc(void);
>  int imx6_usb_phy2_enable(void);
>  
> +#define USBCMD	0x140
> +#define USB_CMD_RESET	0x00000002
> +
> +/*
> + * imx_disable_otg_controller - disable the USB OTG controller
> + * @base: The base address of the controller

It's imx_reset_otg_controller now. Fixed up while applying.

Sascha

> + *
> + * When booting from USB the ROM just leaves the controller enabled. This can
> + * have bad side effects when for example we change PLL frequencies. In this
> + * case it is seen that the hub the board is connected to gets confused and USB
> + * is no longer working properly on the remote host. This function disables the
> + * OTG controller. It should be called before the clocks the controller hangs on
> + * is fiddled with.
> + */
> +static inline void imx_reset_otg_controller(void __iomem *base)
> +{
> +	u32 r;
> +
> +	r = readl(base + USBCMD);
> +	r |= USB_CMD_RESET;
> +	writel(r, base + USBCMD);
> +}
> +
>  #endif /* __MACH_USB_H_*/
> -- 
> 2.18.0
> 
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
