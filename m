Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3NVc-0004mo-KW
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 07:34:21 +0000
Date: Tue, 13 Sep 2011 09:34:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110913073419.GX31404@pengutronix.de>
References: <1315823160-11664-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1315823160-11664-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] ehci-hcd.c: handle EHCI_HAS_TT in ehci_reset() during
	startup
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 12, 2011 at 02:26:00PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c |    9 ++-------
>  1 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 60fc181..883dc07 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -921,15 +921,10 @@ static int ehci_probe(struct device_d *dev)
>  	host->submit_control_msg = submit_control_msg;
>  	host->submit_bulk_msg = submit_bulk_msg;
>  
> -	if (ehci->flags & EHCI_HAS_TT) {
> -		/* Set to host mode */
> -		reg = ehci_readl(ehci->hcor + USBMODE);
> -		reg |= USBMODE_CM_HC;
> -		writel(reg, ehci->hcor + USBMODE);
> -	}
> -
>  	usb_register_host(host);
>  
> +	ehci_reset(ehci);
> +

ehci_reset is called from ehci_init. Isn't that enough or do we have to
call it explicitely here?

Sascha

>  	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
>  	dev_info(dev, "USB EHCI %x.%02x\n", reg >> 8, reg & 0xff);
>  
> -- 
> 1.7.5.4
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
