Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecSWh-0004L5-I8
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 08:59:58 +0000
Received: by mail-lf0-x244.google.com with SMTP id q194so1185436lfe.13
 for <barebox@lists.infradead.org>; Fri, 19 Jan 2018 00:59:44 -0800 (PST)
Date: Fri, 19 Jan 2018 12:14:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180119121401.b995aa776f36b3a6b6987f5c@gmail.com>
In-Reply-To: <20180117100106.2shak62zr7cucsss@pengutronix.de>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
 <20180114212252.29682-4-antonynpavlov@gmail.com>
 <20180117100106.2shak62zr7cucsss@pengutronix.de>
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
Subject: Re: [PATCH v2 3/7] sandbox: add i2c and spi libftdi1 bit-bang example
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 17 Jan 2018 11:01:06 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jan 15, 2018 at 12:22:48AM +0300, Antony Pavlov wrote:
> > Make necessary changes in sandbox_defconfig:
> > enable gpio, spi, i2c and led stuff.
> > =

> > Usage:
> > =

> >   barebox$ make sandbox_defconfig
> >   barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=3Dy=
/" .config
> > =

> >   # edit arch/sandbox/dts/sandbox.dts if necessary
> > =

> >   barebox$ make
> >   barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/sandbox/configs/sandbox_defconfig | 26 ++++++++++++++++-
> >  arch/sandbox/dts/sandbox.dts           | 52 ++++++++++++++++++++++++++=
++++++++
> >  2 files changed, 77 insertions(+), 1 deletion(-)
> > =

> > diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/conf=
igs/sandbox_defconfig
> > index dbaff12bfb..6b10adb8ef 100644
> > --- a/arch/sandbox/configs/sandbox_defconfig
> > +++ b/arch/sandbox/configs/sandbox_defconfig
> > @@ -53,6 +53,11 @@ CONFIG_CMD_CRC_CMP=3Dy
> >  CONFIG_CMD_MM=3Dy
> >  CONFIG_CMD_DETECT=3Dy
> >  CONFIG_CMD_FLASH=3Dy
> > +CONFIG_CMD_GPIO=3Dy
> > +CONFIG_CMD_I2C=3Dy
> > +CONFIG_CMD_LED=3Dy
> > +CONFIG_CMD_SPI=3Dy
> > +CONFIG_CMD_LED_TRIGGER=3Dy
> >  CONFIG_CMD_2048=3Dy
> >  CONFIG_CMD_OF_NODE=3Dy
> >  CONFIG_CMD_OF_PROPERTY=3Dy
> > @@ -66,10 +71,29 @@ CONFIG_NET_NETCONSOLE=3Dy
> >  CONFIG_OFDEVICE=3Dy
> >  CONFIG_OF_BAREBOX_DRIVERS=3Dy
> >  CONFIG_DRIVER_NET_TAP=3Dy
> > -# CONFIG_SPI is not set
> > +CONFIG_DRIVER_SPI_GPIO=3Dy
> > +CONFIG_I2C=3Dy
> > +CONFIG_I2C_GPIO=3Dy
> > +CONFIG_I2C_MUX=3Dy
> > +CONFIG_I2C_MUX_PCA954x=3Dy
> > +CONFIG_MTD=3Dy
> > +CONFIG_MTD_M25P80=3Dy
> >  CONFIG_VIDEO=3Dy
> >  CONFIG_FRAMEBUFFER_CONSOLE=3Dy
> > +CONFIG_LED=3Dy
> > +CONFIG_LED_GPIO=3Dy
> > +CONFIG_LED_GPIO_OF=3Dy
> > +CONFIG_LED_GPIO_RGB=3Dy
> > +CONFIG_LED_GPIO_BICOLOR=3Dy
> > +CONFIG_LED_TRIGGERS=3Dy
> > +CONFIG_EEPROM_AT25=3Dy
> > +CONFIG_EEPROM_AT24=3Dy
> > +CONFIG_GPIO_74164=3Dy
> > +CONFIG_GPIO_PCA953X=3Dy
> > +CONFIG_GPIO_SX150X=3Dy
> >  # CONFIG_PINCTRL is not set
> > +CONFIG_RTC_CLASS=3Dy
> > +CONFIG_RTC_DRV_DS1307=3Dy
> >  CONFIG_FS_CRAMFS=3Dy
> >  CONFIG_FS_EXT4=3Dy
> >  CONFIG_FS_TFTP=3Dy
> > diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
> > index 2595aa13fa..69568f6d7a 100644
> > --- a/arch/sandbox/dts/sandbox.dts
> > +++ b/arch/sandbox/dts/sandbox.dts
> > @@ -1,7 +1,59 @@
> >  /dts-v1/;
> >  =

> >  #include "skeleton.dtsi"
> > +#include <dt-bindings/gpio/gpio.h>
> >  =

> >  / {
> > +	gpio0: gpio@0 {
> > +		compatible =3D "barebox,libftdi1-gpio";
> > +		/* use ACBUS[7:0] */
> > +		gpio-controller;
> > +		#gpio-cells =3D <2>;
> > +		status =3D "okay";
> > +	};
> >  =

> > +	spi0 {
> > +		compatible =3D "spi-gpio";
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +		gpio-sck  =3D <&gpio0 0 GPIO_ACTIVE_HIGH>;
> > +		gpio-mosi =3D <&gpio0 1 GPIO_ACTIVE_HIGH>;
> > +		gpio-miso =3D <&gpio0 2 GPIO_ACTIVE_HIGH>;
> > +		cs-gpios  =3D <&gpio0 3 GPIO_ACTIVE_HIGH>;
> > +
> > +		num-chipselects =3D <1>;
> > +
> > +		status =3D "disabled";
> > +
> > +		m25p128@0 {
> > +			compatible =3D "m25p128", "jedec,spi-nor";
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
> > +			reg =3D <0>;
> > +			spi-max-frequency =3D <1000000>;
> > +		};
> > +	};
> > +
> > +	i2c0: i2c0 {
> > +		compatible =3D "i2c-gpio";
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		gpios =3D <&gpio0 4 GPIO_ACTIVE_HIGH /* sda */
> > +			&gpio0 5 GPIO_ACTIVE_HIGH /* scl */
> > +			>;
> > +		i2c-gpio,scl-output-only;
> > +
> > +		status =3D "disabled";
> > +
> > +		eeprom: at24@50 {
> > +			compatible =3D "atmel,24c32";
> > +			reg =3D <0x50>;
> > +		};
> > +
> > +		rtc: ds1307@68 {
> > +			compatible =3D "dallas,ds1307";
> > +			reg =3D <0x68>;
> > +		};
> > +	};
> =

> Can we move this to a sandbox-libftdi-example.dtsi file which is not
> included by default? The rationale is that a user has to read and
> understand this file anyway and probably adopt it to his wiring (or his
> wiring to this file).
> =

> And if we do that, would it be an option to move the vendor/product_id
> and serial setting to the device tree aswell? Then we would have all
> config in a single place and could also use multiple devices.

Ok. I'll introduce sandbox-libftdi-example.dtsi with more usage examples
(e.g. I have missed LED example).

Also I'll move FTDI USB params into device tree file.


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
