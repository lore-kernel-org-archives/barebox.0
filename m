Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baJog-000169-GZ
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 09:40:51 +0000
Received: by mail-lf0-x243.google.com with SMTP id k135so1399345lfb.1
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 02:40:29 -0700 (PDT)
Date: Thu, 18 Aug 2016 12:43:28 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160818124328.7ee24cea9598434c86c0cf8d@gmail.com>
In-Reply-To: <20160818063227.GE20657@pengutronix.de>
References: <1471383369-23015-1-git-send-email-antonynpavlov@gmail.com>
 <20160818063227.GE20657@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: dts: reuse TP-LINK MR3020 dts file from linux
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 18 Aug 2016 08:32:27 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Aug 17, 2016 at 12:36:09AM +0300, Antony Pavlov wrote:
> > At the moment barebox tplink-mr3020.dts file has almost
> > the same content as linux ar9331_tl_mr3020.dts file
> > so we can reuse linux dts-file and drop duplicated lines
> > from barebox dts-file.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/dts/tplink-mr3020.dts | 68 +--------------------------------=
--------
> >  1 file changed, 1 insertion(+), 67 deletions(-)
> =

> Applied, thanks
> =

> There is no difference between the two patches you sent, right?

Yes, there is no difference. My bad --- I have used wrong maillist address =
in the first patch
(barebox@lists.infradead.orgc instead of barebox@lists.infradead.org).
 =

> Sascha
> =

> =

> > =

> > diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3=
020.dts
> > index 831fab8..1e843ee 100644
> > --- a/arch/mips/dts/tplink-mr3020.dts
> > +++ b/arch/mips/dts/tplink-mr3020.dts
> > @@ -1,73 +1,7 @@
> > -/dts-v1/;
> > -
> > -#include <dt-bindings/gpio/gpio.h>
> > -
> > -#include <mips/qca/ar9331.dtsi>
> > +#include <mips/qca/ar9331_tl_mr3020.dts>
> >  =

> >  / {
> > -	model =3D "TP-Link TL-MR3020";
> > -	compatible =3D "tplink,tl-mr3020";
> > -
> >  	aliases {
> >  		spiflash =3D &spiflash;
> >  	};
> > -
> > -	memory@0 {
> > -		device_type =3D "memory";
> > -		reg =3D <0x00000000 0x2000000>;
> > -	};
> > -
> > -	leds {
> > -		compatible =3D "gpio-leds";
> > -
> > -		wlan {
> > -			label =3D "tp-link:green:wlan";
> > -			gpios =3D <&gpio 0 GPIO_ACTIVE_HIGH>;
> > -			default-state =3D "off";
> > -		};
> > -
> > -		lan {
> > -			label =3D "tp-link:green:lan";
> > -			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> > -			default-state =3D "off";
> > -		};
> > -
> > -		wps {
> > -			label =3D "tp-link:green:wps";
> > -			gpios =3D <&gpio 26 GPIO_ACTIVE_LOW>;
> > -			default-state =3D "off";
> > -		};
> > -
> > -		led3g {
> > -			label =3D "tp-link:green:3g";
> > -			gpios =3D <&gpio 27 GPIO_ACTIVE_LOW>;
> > -			default-state =3D "off";
> > -		};
> > -	};
> > -};
> > -
> > -&ref {
> > -	clock-frequency =3D <25000000>;
> > -};
> > -
> > -&uart {
> > -	status =3D "okay";
> > -};
> > -
> > -&gpio {
> > -	status =3D "okay";
> > -};
> > -
> > -&spi {
> > -	num-chipselects =3D <1>;
> > -	status =3D "okay";
> > -
> > -	/* Spansion S25FL032PIF SPI flash */
> > -	spiflash: s25sl032p@0 {
> > -		#address-cells =3D <1>;
> > -		#size-cells =3D <1>;
> > -		compatible =3D "spansion,s25sl032p", "jedec,spi-nor";
> > -		spi-max-frequency =3D <104000000>;
> > -		reg =3D <0>;
> > -	};
> >  };
> > -- =

> > 2.8.1
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > =

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
