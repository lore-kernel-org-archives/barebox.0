Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTop-0004lL-08
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:37:00 +0000
Date: Tue, 24 Nov 2020 09:36:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124083657.GB14718@pengutronix.de>
References: <20201123152931.4480-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201123152931.4480-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] usb: imx: add support for setting power pin polarity
 on i.MX6/7
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 23, 2020 at 04:29:30PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/usb/imx/imx-usb-misc.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
> index 3a5ec236e532..b663d073aa88 100644
> --- a/drivers/usb/imx/imx-usb-misc.c
> +++ b/drivers/usb/imx/imx-usb-misc.c
> @@ -354,6 +354,7 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
>  #define MX6_USB_CTRL(n)			((n) * 4)
>  #define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
>  #define MX6_USB_CTRL_OVER_CUR_ACT_HIGH	(1 << 8)
> +#define MX6_USB_CTRL_PWR_POLARITY	(1 << 9)
>  
>  static void mx6_hsic_pullup(unsigned long reg, int on)
>  {
> @@ -380,6 +381,8 @@ static __maybe_unused int mx6_initialize_usb_hw(void __iomem *base, int port,
>  		val = readl(base + MX6_USB_CTRL(port));
>  		if (flags & MXC_EHCI_DISABLE_OVERCURRENT)
>  			val |= MX6_USB_CTRL_OVER_CUR_DIS;
> +		if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
> +			val |= MX6_USB_CTRL_PWR_POLARITY;
>  		writel(val, base + MX6_USB_CTRL(port));
>  		break;
>  	case 2: /* HSIC port */
> @@ -454,6 +457,8 @@ static int usbmisc_imx7d_init(void __iomem *base, int port,
>  		else
>  			reg |= MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
>  	}
> +	if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
> +		reg |= MX6_USB_CTRL_PWR_POLARITY;
>  	writel(reg, base);
>  
>  	reg = readl(base + MX7D_USBNC_USB_CTRL2);
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
