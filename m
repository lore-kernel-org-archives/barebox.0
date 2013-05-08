Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZxrk-0001z2-UB
 for barebox@lists.infradead.org; Wed, 08 May 2013 06:28:42 +0000
Date: Wed, 8 May 2013 08:28:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508062818.GX32299@pengutronix.de>
References: <1367852182-28870-1-git-send-email-dev@lynxeye.de>
 <20130506152725.GP13393@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506152725.GP13393@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] tegra20: add pinctrl driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, May 06, 2013 at 05:27:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:56 Mon 06 May     , Lucas Stach wrote:
> > This adds a pinctrl driver for the Tegra 20 line of SoCs. It only
> > supports the three basic pinconfiguration settings function mux,
> > tristate control and pullup/down control.
> > 
> > The driver understands the same devicetree bindings as the Linux one,
> > unimplemented pinconfiguration options will be ignored.
> > 
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  arch/arm/dts/tegra20.dtsi         |   8 +
> >  drivers/pinctrl/Kconfig           |   6 +
> >  drivers/pinctrl/Makefile          |   1 +
> >  drivers/pinctrl/pinctrl-tegra20.c | 336 ++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 351 insertions(+)
> >  create mode 100644 drivers/pinctrl/pinctrl-tegra20.c
> > 
> > diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
> > index b7d1e27..f63ead8 100644
> > --- a/arch/arm/dts/tegra20.dtsi
> > +++ b/arch/arm/dts/tegra20.dtsi
> > @@ -34,6 +34,14 @@
> >  		interrupt-controller;
> >  	};
> >  
> > +	pinmux: pinmux {
> > +	compatible = "nvidia,tegra20-pinmux";
> > +	reg = <0x70000014 0x10   /* Tri-state registers */
> > +	       0x70000080 0x20   /* Mux registers */
> > +	       0x700000a0 0x14   /* Pull-up/down registers */
> > +	       0x70000868 0xa8>; /* Pad control registers */
> tab here

This is done to align under the lines above. I wouldn't do it in my
code, but it's perfectly fine to do it.

> > +	};
> > +
> >  	pmc {
> >  		compatible = "nvidia,tegra20-pmc";
> >  		reg = <0x7000e400 0x400>;
> > diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
> > index e6aee50..0b859b8 100644
> > --- a/drivers/pinctrl/Kconfig
> > +++ b/drivers/pinctrl/Kconfig
> > @@ -25,4 +25,10 @@ config PINCTRL_IMX_IOMUX_V3
> >  	help
> >  	  This iomux controller is found on i.MX25,35,51,53,6.
> >  
> > +config PINCTRL_TEGRA20
> > +	select PINCTRL
> > +	bool "Tegra 20 pinmux"
> > +	help
> > +	  The pinmux controller found on the Tegra 20 line of SoCs.
> pinctrl will be mandatory on tegra

It will, yes, but no need to do it now. There can well be some time to
test the driver before it becomes mandatory.

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
