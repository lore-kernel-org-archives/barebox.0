Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCmHi-00036G-Hl
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:32:11 +0000
Date: Mon, 10 Feb 2014 09:31:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210083148.GG17250@pengutronix.de>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
 <1391868972-31978-5-git-send-email-eric@eukrea.com>
 <20140210081617.GF17250@pengutronix.de>
 <20140210092854.5bf29d36@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140210092854.5bf29d36@e6520eb>
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
Subject: Re: [PATCH 5/7] ARM: mx53-qsrb: enable USB OTG in host mode
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 10, 2014 at 09:28:54AM +0100, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Mon, 10 Feb 2014 09:16:17 +0100,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > On Sat, Feb 08, 2014 at 03:16:10PM +0100, Eric B=E9nard wrote:
> > >  &usbotg {
> > > -       status =3D "okay";
> > > +	phy_type =3D "utmi";
> > > +	dr_mode =3D "host";
> > > +	status =3D "okay";
> > >  };
> > =

> > Do we need a barebox specific option to specify dr_mode? I mean barebox
> > cannot do otg, so we need to specify dr_mode to host or device, but with
> > the above change Linux is limited to host mode aswell.
> > =

> in chipidea-imx.c there is :
> =

> 	mode =3D of_usb_get_dr_mode(ci->dev->device_node, NULL);
> =

> 	switch (mode) {
> 	case USB_DR_MODE_HOST:
> 	default:
> 		ci->mode =3D IMX_USB_MODE_HOST;
> 		break;
> 	case USB_DR_MODE_PERIPHERAL:
> 		ci->mode =3D IMX_USB_MODE_DEVICE;
> 		break;
> 	}
> =

> so we could omit the dr_mode=3Dhost as it will default to host.

Then let's do this. The default-to-host beahaviour in barebox may not
be desirable in all cases, but at least we do not propagate this
behaviour to the kernel.

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
