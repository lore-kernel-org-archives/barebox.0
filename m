Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7btz-0006IG-QH
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:30:20 +0000
Date: Thu, 4 Feb 2021 11:28:07 +0100
Message-ID: <20210204102807.GA19583@pengutronix.de>
References: <20210202185413.18332-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210202185413.18332-1-m.grzeschik@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] usb: imx: fix overcurrent polarity handling on i.MX7
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 02, 2021 at 07:54:12PM +0100, Michael Grzeschik wrote:
> The reference manual says the overcurrent polarity is changed to low
> with the bit set. We fix that according to the description.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/usb/imx/imx-usb-misc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
> index b663d073aa..660ebecd78 100644
> --- a/drivers/usb/imx/imx-usb-misc.c
> +++ b/drivers/usb/imx/imx-usb-misc.c
> @@ -353,7 +353,7 @@ static __maybe_unused struct imx_usb_misc_data mx5_data = {
>  
>  #define MX6_USB_CTRL(n)			((n) * 4)
>  #define MX6_USB_CTRL_OVER_CUR_DIS	(1 << 7)
> -#define MX6_USB_CTRL_OVER_CUR_ACT_HIGH	(1 << 8)
> +#define MX6_USB_CTRL_OVER_CUR_ACT_LOW	(1 << 8)
>  #define MX6_USB_CTRL_PWR_POLARITY	(1 << 9)
>  
>  static void mx6_hsic_pullup(unsigned long reg, int on)
> @@ -453,9 +453,9 @@ static int usbmisc_imx7d_init(void __iomem *base, int port,
>  	} else {
>  		reg &= ~MX6_USB_CTRL_OVER_CUR_DIS;
>  		if (flags & MXC_EHCI_OC_PIN_ACTIVE_LOW)
> -			reg &= ~MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
> +			reg |= MX6_USB_CTRL_OVER_CUR_ACT_LOW;
>  		else
> -			reg |= MX6_USB_CTRL_OVER_CUR_ACT_HIGH;
> +			reg &= ~MX6_USB_CTRL_OVER_CUR_ACT_LOW;
>  	}
>  	if (flags & MXC_EHCI_PWR_PIN_ACTIVE_HIGH)
>  		reg |= MX6_USB_CTRL_PWR_POLARITY;
> -- 
> 2.30.0
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
