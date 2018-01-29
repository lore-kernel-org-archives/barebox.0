Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eg3sM-0006QN-01
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 07:29:11 +0000
Date: Mon, 29 Jan 2018 08:28:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180129072857.a4zzwtjrqmgkfbmk@pengutronix.de>
References: <20180122095918.11721-1-antonynpavlov@gmail.com>
 <20180122095918.11721-4-antonynpavlov@gmail.com>
 <20180125071236.q7ce2jwqnhrngmm6@pengutronix.de>
 <20180126113746.1e553bd2ecf343bb0676988e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180126113746.1e553bd2ecf343bb0676988e@gmail.com>
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
Subject: Re: [PATCH v3 3/3] sandbox: add i2c and spi libftdi1 bit-bang example
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 26, 2018 at 11:37:46AM +0300, Antony Pavlov wrote:
> On Thu, 25 Jan 2018 08:12:36 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Mon, Jan 22, 2018 at 12:59:18PM +0300, Antony Pavlov wrote:
> > > Make necessary changes in sandbox_defconfig:
> > > enable gpio, spi, i2c and led stuff.
> > > 
> > > Usage:
> > > 
> > >   barebox$ make sandbox_defconfig
> > >   barebox$ sed -i "s/# CONFIG_GPIO_LIBFTDI1.*$/CONFIG_GPIO_LIBFTDI1=y/" .config
> > > 
> > >   # edit arch/sandbox/dts/sandbox-libftdi-example.dtsi
> > > 
> > >   barebox$ echo '#include "sandbox-libftdi-example.dtsi"' >> arch/sandbox/dts/sandbox.dts
> > >   barebox$ make
> > >   barebox$ sudo ./barebox -d arch/sandbox/dts/sandbox.dtb
> > > 
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/sandbox/configs/sandbox_defconfig        | 21 ++++++-
> > >  arch/sandbox/dts/sandbox-libftdi-example.dtsi | 80 +++++++++++++++++++++++++++
> > >  2 files changed, 100 insertions(+), 1 deletion(-)
> > > 
> > > +++ b/arch/sandbox/dts/sandbox-libftdi-example.dtsi
> > > @@ -0,0 +1,80 @@
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +
> > > +/ {
> > > +	gpio0: gpio@0 {
> > > +		compatible = "barebox,libftdi1-gpio";
> > > +		usb,id_vendor = <0x0403>;
> > > +		usb,id_product = <0x6010>;
> > > +
> > > +		/*
> > > +		 * The serial number can be used to select
> > > +		 * a specific device in case more than
> > > +		 * one is connected to the host.
> > > +		 */
> > > +		/* usb,i_serial_number = "20180120"; */
> > > +
> > > +		/* use ACBUS[7:0] */
> > > +		gpio-controller;
> > > +		#gpio-cells = <2>;
> > > +
> > > +		status = "okay";
> > > +	};
> > > +
> > > +	spi0: spi0 {
> > > +		compatible = "spi-gpio";
> > > +		#address-cells = <1>;
> > > +		#size-cells = <0>;
> > > +
> > > +		gpio-sck  = <&gpio0 0 GPIO_ACTIVE_HIGH>;
> > > +		gpio-mosi = <&gpio0 1 GPIO_ACTIVE_HIGH>;
> > > +		gpio-miso = <&gpio0 2 GPIO_ACTIVE_HIGH>;
> > > +		cs-gpios  = <&gpio0 3 GPIO_ACTIVE_HIGH>;
> > > +
> > > +		num-chipselects = <1>;
> > > +
> > > +		status = "disabled";
> > 
> > Given that this is an example which is not used unless you include it
> > manually I think you can remove the status properties.
> > 
> > Otherwise this series looks fine to me. I can remove the properties
> > while applying if you like.
> 
> Without status properties this file will be more fail-safe.
> Please remove the properties and apply the patches.

Just did that.

> 
> Please note that this patcheseries does not use parseopt_*() functions
> so nobody uses the commit 'parseopt: introduce parseopt_u16() and parseopt_str()'.

That's fine. At least for parseopt_str() it probably won't take long to
find a user.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
