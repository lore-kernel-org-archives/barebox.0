Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gDTyP-0006kL-Oy
 for barebox@lists.infradead.org; Fri, 19 Oct 2018 12:33:58 +0000
Date: Fri, 19 Oct 2018 14:33:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181019123337.ec5eimdomqqoj32f@pengutronix.de>
References: <20181019120750.809-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181019120750.809-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: ehci: call platform init before ehci reset
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 19, 2018 at 02:07:50PM +0200, Uwe Kleine-K=F6nig wrote:
> On i.MX25 platform init sets up things like the polarity of the
> overcurrent pin. If the reset default value is still wrong at ehci_reset
> time, this results in an overcurrent event being pending in the hardware
> even if the pin is actually in it's inactive level. To prevent this call
> platform init before ehci_reset().
> =

> Without this change barebox fails to correctly handle the imagined
> overcurrent event resulting in the inability to access the contents of
> an USB thumb drive. So there must be another problem somewhere, but I
> didn't debug that. The change introduced in this patch works around this
> problem but is correct on its own anyhow.
> =

> Note there is a chance that other platforms rely on the previous order,
> I'm not aware of actual problems though.
> =

> The problem was debugged with Michael Grzeschik, thanks to him for his
> valuable aid.
> =

> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/usb/host/ehci-hcd.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 9bbdda365c01..18ff6b589773 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -801,16 +801,16 @@ static int ehci_init(struct usb_host *host)
>  =

>  	ehci_halt(ehci);
>  =

> -	/* EHCI spec section 4.1 */
> -	if (ehci_reset(ehci) !=3D 0)
> -		return -1;
> -
>  	if (ehci->init) {
>  		ret =3D ehci->init(ehci->drvdata);
>  		if (ret)
>  			return ret;
>  	}
>  =

> +	/* EHCI spec section 4.1 */
> +	if (ehci_reset(ehci) !=3D 0)
> +		return -1;
> +

This will lead to problems, see imx_chipidea_port_init():

> static int imx_chipidea_port_init(void *drvdata)
> {
> 	struct imx_chipidea *ci =3D drvdata;
> 	uint32_t portsc;
> 	int ret;
> =

> 	if ((ci->flags & MXC_EHCI_PORTSC_MASK) =3D=3D MXC_EHCI_MODE_ULPI) {
> 		dev_dbg(ci->dev, "using ULPI phy\n");
> 		if (IS_ENABLED(CONFIG_USB_ULPI)) {
> 			ret =3D ulpi_setup(ci->base + 0x170, 1);
> 			if (ret)
> 				dev_err(ci->dev, "ULPI setup failed with %s\n",
> 						strerror(-ret));
> 			mdelay(20);
> 		} else {
> 			dev_err(ci->dev, "no ULPI support available\n");
> 			ret =3D -ENODEV;
> 		}
> =

> 		if (ret)
> 			return ret;
> 	}

Not sure about ULPI support, but I wouldn't be surprised if this needs a
controller in a known, i.e. resetted state.

> =

> 	ret =3D imx_usbmisc_port_init(ci->usbmisc, ci->portno, ci->flags);
> 	if (ret)
> 		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
> =

> 	/* PFSC bit is reset by ehci_reset(), thus have to set it not in
> 	 * probe but here, after ehci_reset() is already called */
> 	if (ci->flags & MXC_EHCI_PFSC) {
> 		portsc =3D readl(ci->base + 0x184);
> 		portsc |=3D MXC_EHCI_PFSC;
> 		writel(portsc, ci->base + 0x184);
> 	}

The comment here explicitly states that the code should be executed
after ehci_reset().

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
