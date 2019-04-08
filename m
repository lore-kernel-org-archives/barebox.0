Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDUwU-00013H-7G
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 14:08:11 +0000
Message-ID: <bfce690d23ace24340f602889be3d2bbc9df42f9.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 08 Apr 2019 16:08:08 +0200
In-Reply-To: <20190408082643.7sh5e6zrnnglpyxj@pengutronix.de>
References: <20190408081602.ipogefy6uy6uioto@pengutronix.de>
 <20190408082643.7sh5e6zrnnglpyxj@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: Boards possibly broken due to dts merge of v5.1-rc1
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Jan Remmet <j.remmet@phytec.de>

Hello Sascha,

Am Montag, den 08.04.2019, 10:26 +0200 schrieb Sascha Hauer:
> On Mon, Apr 08, 2019 at 10:16:02AM +0200, Sascha Hauer wrote:
> > Hi,
> > 
> > I had to squash the attached patch into the patch of the v5.1-rc1
> > dts
> > kernel merge. Some boards may be broken due to this, please check
> > if
> > the changes make sense and work.
> > 
> > Sascha
> > 
> > ----------------------8<---------------------------------
> > 
> > From 147937abd8f901024aecfc91402175194b0b37ce Mon Sep 17 00:00:00
> > 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Mon, 8 Apr 2019 10:09:19 +0200
> > Subject: [PATCH] fixup! dts: update to v5.1-rc1
> > 
> > ---
> >  arch/arm/dts/am335x-afi-gf.dts              |   4 -
> >  arch/arm/dts/am335x-baltos-minimal.dts      |   4 -
> >  arch/arm/dts/am335x-phytec-phycard-som.dtsi |   4 -
> >  arch/arm/dts/am335x-phytec-phycore-som.dtsi |   4 -
> >  arch/arm/dts/am335x-phytec-phyflex-som.dtsi |   4 -
> >  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi     |  17 ---
> >  arch/arm/dts/imx8mq.dtsi                    | 135 +---------------
> > ----
> >  7 files changed, 2 insertions(+), 170 deletions(-)
> > 
> > diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> > b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> > index 2320ca1807..1d45d60dc0 100644
> > --- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> > +++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
> > @@ -128,10 +128,6 @@
> >  	};
> >  };
> >  
> > -&phy_sel {
> > -	rmii-clock-ext;
> > -};
> > -
> 
> This is due to kernel commit:
> 
> > commit fcfa0e84eaf71537cffd0749f115be7024556a7f
> > Author: Grygorii Strashko <grygorii.strashko@ti.com>
> > Date:   Wed Feb 20 17:25:17 2019 +0200
> > 
> >     ARM: dts: am335x: switch to use phy-gmii-sel
> >     
> >   Switch to use phy-gmii-sel PHY instead of cpsw-phy-sel.
> >   
> >   Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> >    Signed-off-by: Tony Lindgren <tony@atomide.com>
> 
> The phy_sel label does not exist anymore. physel was handled by a
> driver with
> the compatible "ti,am3352-cpsw-phy-sel" (which we have in barebox)
> and
> now it's done with a driver compatible to "ti,am3352-phy-gmii-sel"
> (which we don't have in barebox).
> 
> This probably means we have to update the corresponding code aswell.

Yes, the code also needs an update. The gmiisel register is now set
depended on the eth phy mode settings and not due special device tree
bindings anymore.

I am not sure if I will have time to update this soon.
So if you apply the patch the am335x eth might not work as the gmiisel
register is not set correct.

Teresa

> 
> > --- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > +++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
> > @@ -86,23 +86,6 @@
> >  	};
> >  };
> >  
> > -&fec {
> > -	phy-handle = <&ethphy>;
> > -	phy-reset-duration = <10>; /* in msecs */
> > -
> > -	mdio {
> > -		#address-cells = <1>;
> > -		#size-cells = <0>;
> > -
> > -		ethphy: ethernet-phy@3 {
> > -			reg = <3>;
> > -
> > -			txc-skew-ps = <1680>;
> > -			rxc-skew-ps = <1860>;
> > -		};
> > -	};
> > -};
> 
> This node is now upstream and thus removed from barebox. The reg
> property changed though, it was <3> in barebox and now is <0>
> upstream.
> 
> > diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
> > index d6a4c715bd..d1d8bdaa0e 100644
> > --- a/arch/arm/dts/imx8mq.dtsi
> > +++ b/arch/arm/dts/imx8mq.dtsi
> > @@ -16,7 +16,6 @@
> >  		gpio4 = &gpio5;
> >  		mmc0 = &usdhc1;
> >  		mmc1 = &usdhc2;
> > -		spi0 = &ecspi1;
> >  	};
> >  
> >  	thermal-zones {
> > @@ -113,136 +112,6 @@
> >  				reg = <0x30390000 0x10000>;
> >  				#reset-cells = <1>;
> >  			};
> > -
> > -			gpc: gpc@303a0000 {
> > -				compatible = "fsl,imx8mq-gpc",
> > "fsl,imx7d-gpc";
> 
> This node is upstream now, but slightly different...
> 
> > -				reg = <0x303a0000 0x10000>;
> > -				#power-domain-cells = <1>;
> > -
> > -				interrupt-controller;
> > -				interrupts = <GIC_SPI 87
> > IRQ_TYPE_LEVEL_HIGH>;
> > -				#interrupt-cells = <3>;
> > -				interrupt-parent = <&gic>;
> > -
> > -				pgc {
> > -					#address-cells = <1>;
> > -					#size-cells = <0>;
> > -
> > -					/*
> > -					 * As per comment in ATF source
> > code:
> > -					 *
> > -					 * PCIE1 and PCIE2 share the
> > -					 * same reset signal, if we
> > power
> > -					 * down PCIE2, PCIE1 will be
> > held
> > -					 * in reset too.
> > -					 *
> > -					 * So instead of creating two
> > -                                         * separate power domains
> > for
> > -                                         * PCIE1 and PCIE2. We
> > create
> > -                                         * a link between 1 and 10
> > and
> > -                                         * use what was supposed
> > to be
> > -                                         * domain 1 as a shared
> > PCIE
> > -                                         * power domain powering
> > both
> > -                                         * PCIE1 and PCIE2 at the
> > same
> > -                                         * time
> > -					 */
> > -					pgc_pcie_phy: 
> > gpc_power_domain@1 {
> > -						#power-domain-cells =
> > <0>;
> > -						reg = <1>;
> > -						power-domains =
> > <&pgc_pcie2_phy>;
> > -					};
> 
> Here we have pgc_pcie_phy which the boards use for both pcie ports,
> but
> this domain itself is part of pgc_pcie2_phy.
> 
> > @@ -266,7 +135,7 @@
> >  					<0 0 0 3 &gic GIC_SPI 123
> > IRQ_TYPE_LEVEL_HIGH>,
> >  					<0 0 0 4 &gic GIC_SPI 122
> > IRQ_TYPE_LEVEL_HIGH>;
> >  			fsl,max-link-speed = <2>;
> > -			power-domains = <&pgc_pcie_phy>;
> > +			power-domains = <&pgc_pcie1>;
> >  			resets = <&src IMX8MQ_RESET_PCIEPHY>,
> >  				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
> >  				 <&src
> > IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
> > @@ -295,7 +164,7 @@
> >  					<0 0 0 3 &gic GIC_SPI 75
> > IRQ_TYPE_LEVEL_HIGH>,
> >  					<0 0 0 4 &gic GIC_SPI 74
> > IRQ_TYPE_LEVEL_HIGH>;
> >  			fsl,max-link-speed = <2>;
> > -			power-domains = <&pgc_pcie_phy>;
> > +			power-domains = <&pgc_pcie1>;
> 
> Upstream we only have pgc_pcie1 and pgc_pcie2. The above is probably
> wrong.
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
