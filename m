Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUeBf-00045U-Qs
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 17:08:37 +0000
Received: by lbbsx3 with SMTP id sx3so124039984lbb.0
 for <barebox@lists.infradead.org>; Wed, 26 Aug 2015 10:08:12 -0700 (PDT)
Date: Wed, 26 Aug 2015 20:16:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150826201613.b4a7c289360bbb0e9eb30965@gmail.com>
In-Reply-To: <20150826122313.GU18700@pengutronix.de>
References: <1440507598-18050-1-git-send-email-pmamonov@gmail.com>
 <20150825184521.c641521adc19a5b8db9a7df2@gmail.com>
 <20150826122313.GU18700@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] usb: ehci: prevent bad PORTSC register access
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Kuo-Jung Su <dantesu@faraday-tech.com>, Peter Mamonov <pmamonov@gmail.com>

On Wed, 26 Aug 2015 14:23:13 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Aug 25, 2015 at 06:45:21PM +0300, Antony Pavlov wrote:
> > On Tue, 25 Aug 2015 15:59:58 +0300
> > Peter Mamonov <pmamonov@gmail.com> wrote:
> > =

> > > From: Kuo-Jung Su <dantesu@faraday-tech.com>
> > > =

> > > 1. The 'index' of ehci_submit_root() is not always > 0.
> > > =

> > >    e.g.
> > >    While it gets invoked from usb_get_descriptor(),
> > >    the 'index' is always a '0'. (See ch.9 of USB2.0)
> > > =

> > > 2. The PORTSC register is not always required, and thus it
> > >    should only report a port error when necessary.
> > >    It would cause a port scan failure if the ehci_submit_root()
> > >    always gets terminated by a port error.
> > > =

> > > Signed-off-by: Kuo-Jung Su <dantesu@faraday-tech.com>
> > > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > > ---
> > >  drivers/usb/host/ehci-hcd.c | 38 ++++++++++++++++++++++++-----------=
---
> > >  1 file changed, 24 insertions(+), 14 deletions(-)
> > > =

> > > diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> > > index 58c22db..1146b71 100644
> > > --- a/drivers/usb/host/ehci-hcd.c
> > > +++ b/drivers/usb/host/ehci-hcd.c
> > > @@ -476,13 +476,8 @@ ehci_submit_root(struct usb_device *dev, unsigne=
d long pipe, void *buffer,
> > >  	int len, srclen;
> > >  	uint32_t reg;
> > >  	uint32_t *status_reg;
> > > +	int port =3D le16_to_cpu(req->index);
> > >  =

> > > -	if (le16_to_cpu(req->index) >=3D CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS=
) {
> > > -		dev_err(ehci->dev, "The request port(%d) is not configured\n",
> > > -			le16_to_cpu(req->index) - 1);
> > > -		return -1;
> > > -	}
> > > -	status_reg =3D (uint32_t *)&ehci->hcor->or_portsc[le16_to_cpu(req->=
index) - 1];
> > >  	srclen =3D 0;
> > >  =

> > >  	dev_dbg(ehci->dev, "req=3D%u (%#x), type=3D%u (%#x), value=3D%u, in=
dex=3D%u\n",
> > > @@ -493,6 +488,21 @@ ehci_submit_root(struct usb_device *dev, unsigne=
d long pipe, void *buffer,
> > >  	typeReq =3D req->request | (req->requesttype << 8);
> > >  =

> > >  	switch (typeReq) {
> > > +	case USB_REQ_GET_STATUS | ((USB_RT_PORT | USB_DIR_IN) << 8):
> > > +	case USB_REQ_SET_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
> > > +	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
> > > +		if (!port || port > CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS) {
> > > +			printf("The request port(%d) is not configured\n", port - 1);
> > > +			return -1;
> > > +		}
> > > +		status_reg =3D (uint32_t *)&ehci->hcor->or_portsc[port - 1];
> > > +		break;
> > > +	default:
> > > +		status_reg =3D NULL;
> > > +		break;
> > > +	}
> > > +
> > > +	switch (typeReq) {
> > >  	case DeviceRequest | USB_REQ_GET_DESCRIPTOR:
> > >  		switch (le16_to_cpu(req->value) >> 8) {
> > >  		case USB_DT_DEVICE:
> > > @@ -571,7 +581,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  		if (reg & EHCI_PS_OCA)
> > >  			tmpbuf[0] |=3D USB_PORT_STAT_OVERCURRENT;
> > >  		if (reg & EHCI_PS_PR &&
> > > -		    (ehci->portreset & (1 << le16_to_cpu(req->index)))) {
> > > +		    (ehci->portreset & (1 << port))) {
> > >  			int ret;
> > >  			/* force reset to complete */
> > >  			reg =3D reg & ~(EHCI_PS_PR | EHCI_PS_CLEAR);
> > > @@ -581,7 +591,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  				tmpbuf[0] |=3D USB_PORT_STAT_RESET;
> > >  			else
> > >  				dev_err(ehci->dev, "port(%d) reset error\n",
> > > -					le16_to_cpu(req->index) - 1);
> > > +					port - 1);
> > >  		}
> > >  		if (reg & EHCI_PS_PP)
> > >  			tmpbuf[1] |=3D USB_PORT_STAT_POWER >> 8;
> > > @@ -608,7 +618,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  			tmpbuf[2] |=3D USB_PORT_STAT_C_ENABLE;
> > >  		if (reg & EHCI_PS_OCC)
> > >  			tmpbuf[2] |=3D USB_PORT_STAT_C_OVERCURRENT;
> > > -		if (ehci->portreset & (1 << le16_to_cpu(req->index)))
> > > +		if (ehci->portreset & (1 << port))
> > >  			tmpbuf[2] |=3D USB_PORT_STAT_C_RESET;
> > >  =

> > >  		srcptr =3D tmpbuf;
> > > @@ -634,7 +644,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  			    EHCI_PS_IS_LOWSPEED(reg)) {
> > >  				/* Low speed device, give up ownership. */
> > >  				dev_dbg(ehci->dev, "port %d low speed --> companion\n",
> > > -				      req->index - 1);
> > > +				      port - 1);
> > >  				reg |=3D EHCI_PS_PO;
> > >  				ehci_writel(status_reg, reg);
> > >  				break;
> > > @@ -651,7 +661,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  				 */
> > >  				ehci_powerup_fixup(ehci);
> > >  				mdelay(50);
> > > -				ehci->portreset |=3D 1 << le16_to_cpu(req->index);
> > > +				ehci->portreset |=3D 1 << port;
> > >  				/* terminate the reset */
> > >  				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
> > >  				/*
> > > @@ -663,10 +673,10 @@ ehci_submit_root(struct usb_device *dev, unsign=
ed long pipe, void *buffer,
> > >  						2 * 1000);
> > >  				if (!ret)
> > >  					ehci->portreset |=3D
> > > -						1 << le16_to_cpu(req->index);
> > > +						1 << port;
> > >  				else
> > >  					dev_err(ehci->dev, "port(%d) reset error\n",
> > > -						le16_to_cpu(req->index) - 1);
> > > +						port - 1);
> > >  =

> > >  			}
> > >  			break;
> > > @@ -698,7 +708,7 @@ ehci_submit_root(struct usb_device *dev, unsigned=
 long pipe, void *buffer,
> > >  			reg |=3D EHCI_PS_OCC;
> > >  			break;
> > >  		case USB_PORT_FEAT_C_RESET:
> > > -			ehci->portreset &=3D ~(1 << le16_to_cpu(req->index));
> > > +			ehci->portreset &=3D ~(1 << port);
> > >  			break;
> > >  		default:
> > >  			dev_dbg(ehci->dev, "unknown feature %x\n", le16_to_cpu(req->value=
));
> > > -- =

> > > 2.1.4
> > > =

> > =

> > =

> > Actually this patch combines two U-boot patches:
> > =

> >   * usb: ehci: prevent bad PORTSC register access (http://lists.denx.de=
/pipermail/u-boot/2013-May/154319.html)
> >   * usb: Add new command to set USB 2.0 port test modes (http://lists.d=
enx.de/pipermail/u-boot/2013-March/148104.html)
> =

> Not really. This patch contains only the parts of "usb: Add new command
> to set USB 2.0 port test modes" which are necessary to make this one
> apply. I splitted this up to two patches while applying with the patch
> below.
> =

> Sascha
> =

> -----------------------------8<-----------------------
> =

> From 484a1fb56890fee13a73070e0d868a3349a47c19 Mon Sep 17 00:00:00 2001
> From: Kuo-Jung Su <dantesu@faraday-tech.com>


Author: Julius Werner <jwerner@chromium.org>



> Date: Tue, 25 Aug 2015 15:59:58 +0300
> Subject: [PATCH 2/3] usb: ehci: replace multiple use of
>  le16_to_cpu(req->index) with variable
> =

> This is part of U-Boot commit:
> =

> 7d9aa8f usb: Add new command to set USB 2.0 port test modes
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/host/ehci-hcd.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 0e7c595..8a6bbc9 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -475,10 +475,11 @@ ehci_submit_root(struct usb_device *dev, unsigned l=
ong pipe, void *buffer,
>  	int len, srclen;
>  	uint32_t reg;
>  	uint32_t *status_reg;
> +	int port =3D le16_to_cpu(req->index);
>  =

>  	if (le16_to_cpu(req->index) >=3D CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS) {
>  		dev_err(ehci->dev, "The request port(%d) is not configured\n",
> -			le16_to_cpu(req->index) - 1);
> +				port - 1);
>  		return -1;
>  	}
>  	status_reg =3D (uint32_t *)&ehci->hcor->or_portsc[le16_to_cpu(req->inde=
x) - 1];
> @@ -570,7 +571,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  		if (reg & EHCI_PS_OCA)
>  			tmpbuf[0] |=3D USB_PORT_STAT_OVERCURRENT;
>  		if (reg & EHCI_PS_PR &&
> -		    (ehci->portreset & (1 << le16_to_cpu(req->index)))) {
> +		    (ehci->portreset & (1 << port))) {
>  			int ret;
>  			/* force reset to complete */
>  			reg =3D reg & ~(EHCI_PS_PR | EHCI_PS_CLEAR);
> @@ -580,7 +581,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  				tmpbuf[0] |=3D USB_PORT_STAT_RESET;
>  			else
>  				dev_err(ehci->dev, "port(%d) reset error\n",
> -					le16_to_cpu(req->index) - 1);
> +					port - 1);
>  		}
>  		if (reg & EHCI_PS_PP)
>  			tmpbuf[1] |=3D USB_PORT_STAT_POWER >> 8;
> @@ -607,7 +608,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  			tmpbuf[2] |=3D USB_PORT_STAT_C_ENABLE;
>  		if (reg & EHCI_PS_OCC)
>  			tmpbuf[2] |=3D USB_PORT_STAT_C_OVERCURRENT;
> -		if (ehci->portreset & (1 << le16_to_cpu(req->index)))
> +		if (ehci->portreset & (1 << port))
>  			tmpbuf[2] |=3D USB_PORT_STAT_C_RESET;
>  =

>  		srcptr =3D tmpbuf;
> @@ -633,7 +634,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  			    EHCI_PS_IS_LOWSPEED(reg)) {
>  				/* Low speed device, give up ownership. */
>  				dev_dbg(ehci->dev, "port %d low speed --> companion\n",
> -				      req->index - 1);
> +				      port - 1);
>  				reg |=3D EHCI_PS_PO;
>  				ehci_writel(status_reg, reg);
>  				break;
> @@ -650,7 +651,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  				 */
>  				ehci_powerup_fixup(ehci);
>  				mdelay(50);
> -				ehci->portreset |=3D 1 << le16_to_cpu(req->index);
> +				ehci->portreset |=3D 1 << port;
>  				/* terminate the reset */
>  				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
>  				/*
> @@ -662,10 +663,10 @@ ehci_submit_root(struct usb_device *dev, unsigned l=
ong pipe, void *buffer,
>  						2 * 1000);
>  				if (!ret)
>  					ehci->portreset |=3D
> -						1 << le16_to_cpu(req->index);
> +						1 << port;
>  				else
>  					dev_err(ehci->dev, "port(%d) reset error\n",
> -						le16_to_cpu(req->index) - 1);
> +						port - 1);
>  =

>  			}
>  			break;
> @@ -697,7 +698,7 @@ ehci_submit_root(struct usb_device *dev, unsigned lon=
g pipe, void *buffer,
>  			reg |=3D EHCI_PS_OCC;
>  			break;
>  		case USB_PORT_FEAT_C_RESET:
> -			ehci->portreset &=3D ~(1 << le16_to_cpu(req->index));
> +			ehci->portreset &=3D ~(1 << port);
>  			break;
>  		default:
>  			dev_dbg(ehci->dev, "unknown feature %x\n", le16_to_cpu(req->value));
> -- =

> 2.5.0
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
