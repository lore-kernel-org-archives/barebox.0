Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eezIK-0008As-6Y
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 08:23:33 +0000
Received: by mail-lf0-x242.google.com with SMTP id q17so13156088lfa.9
 for <barebox@lists.infradead.org>; Fri, 26 Jan 2018 00:23:21 -0800 (PST)
Date: Fri, 26 Jan 2018 11:37:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180126113746.1e553bd2ecf343bb0676988e@gmail.com>
In-Reply-To: <20180125071236.q7ce2jwqnhrngmm6@pengutronix.de>
References: <20180122095918.11721-1-antonynpavlov@gmail.com>
 <20180122095918.11721-4-antonynpavlov@gmail.com>
 <20180125071236.q7ce2jwqnhrngmm6@pengutronix.de>
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
Subject: Re: [PATCH v3 3/3] sandbox: add i2c and spi libftdi1 bit-bang example
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 25 Jan 2018 08:12:36 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jan 22, 2018 at 12:59:18PM +0300, Antony Pavlov wrote:
> > Make necessary changes in sandbox_defconfig:
> > enable gpio, spi, i2c and led stuff.
> > =

> > Usage:
> > =

> >   barebox$ make sandbox_defconfig
> >   barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=3Dy=
/" .config
> > =

> >   # edit arch/sandbox/dts/sandbox-libftdi-example.dtsi
> > =

> >   barebox$ echo '#include "sandbox-libftdi-example.dtsi"' >> arch/sandb=
ox/dts/sandbox.dts
> >   barebox$ make
> >   barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/sandbox/configs/sandbox_defconfig        | 21 ++++++-
> >  arch/sandbox/dts/sandbox-libftdi-example.dtsi | 80 +++++++++++++++++++=
++++++++
> >  2 files changed, 100 insertions(+), 1 deletion(-)
> > =

> > +++ b/arch/sandbox/dts/sandbox-libftdi-example.dtsi
> > @@ -0,0 +1,80 @@
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +	gpio0: gpio@0 {
> > +		compatible =3D "barebox,libftdi1-gpio";
> > +		usb,id_vendor =3D <0x0403>;
> > +		usb,id_product =3D <0x6010>;
> > +
> > +		/*
> > +		 * The serial number can be used to select
> > +		 * a specific device in case more than
> > +		 * one is connected to the host.
> > +		 */
> > +		/* usb,i_serial_number =3D "20180120"; */
> > +
> > +		/* use ACBUS[7:0] */
> > +		gpio-controller;
> > +		#gpio-cells =3D <2>;
> > +
> > +		status =3D "okay";
> > +	};
> > +
> > +	spi0: spi0 {
> > +		compatible =3D "spi-gpio";
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		gpio-sck  =3D <&gpio0 0 GPIO_ACTIVE_HIGH>;
> > +		gpio-mosi =3D <&gpio0 1 GPIO_ACTIVE_HIGH>;
> > +		gpio-miso =3D <&gpio0 2 GPIO_ACTIVE_HIGH>;
> > +		cs-gpios  =3D <&gpio0 3 GPIO_ACTIVE_HIGH>;
> > +
> > +		num-chipselects =3D <1>;
> > +
> > +		status =3D "disabled";
> =

> Given that this is an example which is not used unless you include it
> manually I think you can remove the status properties.
> =

> Otherwise this series looks fine to me. I can remove the properties
> while applying if you like.

Without status properties this file will be more fail-safe.
Please remove the properties and apply the patches.

Please note that this patcheseries does not use parseopt_*() functions
so nobody uses the commit 'parseopt: introduce parseopt_u16() and parseopt_=
str()'.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
