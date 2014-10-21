Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgXA7-0002C4-3Y
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 10:59:35 +0000
Date: Tue, 21 Oct 2014 12:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141021105910.GM14443@pengutronix.de>
References: <1413463940-9651-1-git-send-email-voytikd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413463940-9651-1-git-send-email-voytikd@gmail.com>
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
Subject: Re: [PATCH] usb: ehci-hcd: Correct CLEAR_FEATURE code
To: Dmitry Voytik <voytikd@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 16, 2014 at 04:52:20PM +0400, Dmitry Voytik wrote:
> This commit broke USB on olinuxino board:
> 
>   87b9bea USB: host: hub: Use usb_hub_power_on from U-Boot
> 
> This patch was ported from U-Boot with small changes. See discussion:
> http://lists.denx.de/pipermail/u-boot/2013-May/153920.html
> 
> The root cause seems to be a missing mask and missing 'break' in
> ehci-hcd.c. Fix both.
> 
> Signed-off-by: Dmitry Voytik <voytikd@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/usb/host/ehci-hcd.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 5624552..d2e1296 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -675,21 +675,23 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
>  		break;
>  	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
>  		reg = ehci_readl(status_reg);
> +		reg &= ~EHCI_PS_CLEAR;
>  		switch (le16_to_cpu(req->value)) {
>  		case USB_PORT_FEAT_ENABLE:
>  			reg &= ~EHCI_PS_PE;
>  			break;
>  		case USB_PORT_FEAT_C_ENABLE:
> -			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_PE;
> +			reg |= EHCI_PS_PEC;
>  			break;
>  		case USB_PORT_FEAT_POWER:
>  			if (HCS_PPC(ehci_readl(&ehci->hccr->cr_hcsparams)))
> -				reg = reg & ~(EHCI_PS_CLEAR | EHCI_PS_PP);
> +				reg &= ~ EHCI_PS_PP;
> +			break;
>  		case USB_PORT_FEAT_C_CONNECTION:
> -			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_CSC;
> +			reg |= EHCI_PS_CSC;
>  			break;
>  		case USB_PORT_FEAT_OVER_CURRENT:
> -			reg = (reg & ~EHCI_PS_CLEAR) | EHCI_PS_OCC;
> +			reg |= EHCI_PS_OCC;
>  			break;
>  		case USB_PORT_FEAT_C_RESET:
>  			ehci->portreset &= ~(1 << le16_to_cpu(req->index));
> -- 
> 1.9.1
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
