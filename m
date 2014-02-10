Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCm2h-0002an-Bs
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 08:16:40 +0000
Date: Mon, 10 Feb 2014 09:16:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140210081617.GF17250@pengutronix.de>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
 <1391868972-31978-5-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391868972-31978-5-git-send-email-eric@eukrea.com>
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

On Sat, Feb 08, 2014 at 03:16:10PM +0100, Eric B=E9nard wrote:
> tested on i.MX53 START-R :
> barebox@Freescale i.MX53 Quick Start-R Board:/ usb -f
> USB: scanning bus for devices...
> Using index 0 for the new disk
> Bus 001 Device 002: ID 0951:1654 DT R500
> Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> Bus 002 Device 003: ID 0000:0000 EHCI Host Controller
> 3 USB Device(s) found
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/dts/imx53-qsb-common.dtsi | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-=
common.dtsi
> index 4ae1f49..012d74c 100644
> --- a/arch/arm/dts/imx53-qsb-common.dtsi
> +++ b/arch/arm/dts/imx53-qsb-common.dtsi
> @@ -223,6 +223,8 @@
>  };
>  =

>  &usbotg {
> -       status =3D "okay";
> +	phy_type =3D "utmi";
> +	dr_mode =3D "host";
> +	status =3D "okay";
>  };

Do we need a barebox specific option to specify dr_mode? I mean barebox
cannot do otg, so we need to specify dr_mode to host or device, but with
the above change Linux is limited to host mode aswell.

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
