Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyEtJ-0003ge-2t
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 09:48:47 +0000
Date: Wed, 12 Apr 2017 11:48:23 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20170412094823.kfycvawvjt4rmyz4@pengutronix.de>
References: <20170410175559.29476-1-m.grzeschik@pengutronix.de>
 <20170411083540.fqr4nnxqlh6thbib@pengutronix.de>
 <20170412083232.lnqk7bn5h2tk64lo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170412083232.lnqk7bn5h2tk64lo@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX6: add Technexion Pico Hobbit support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 12, 2017 at 10:32:32AM +0200, Michael Grzeschik wrote:
> On Tue, Apr 11, 2017 at 10:35:40AM +0200, Sascha Hauer wrote:
> > On Mon, Apr 10, 2017 at 07:55:59PM +0200, Michael Grzeschik wrote:
> > > This adds support support for the i.MX6UL Technexion Pico Hobbit.
> > > The board comes with different amounts of RAM. We create one image
> > > for the 256MB and one for the 512MB variant.
> > > 
> > > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > > ---
> > >  arch/arm/boards/Makefile                           |   1 +
> > >  arch/arm/boards/technexion-pico-hobbit/Makefile    |   7 ++
> > >  arch/arm/boards/technexion-pico-hobbit/board.c     | 105 +++++++++++++++++++++
> > >  .../defaultenv-pico-hobbit/init/automount          |  11 +++
> > >  .../defaultenv-pico-hobbit/network/eth1            |  18 ++++
> > >  .../flash-header-imx6ul-pico-hobbit-256.imxcfg     |  64 +++++++++++++
> > >  .../flash-header-imx6ul-pico-hobbit-512.imxcfg     |  65 +++++++++++++
> > >  arch/arm/boards/technexion-pico-hobbit/lowlevel.c  |  78 +++++++++++++++
> > >  arch/arm/configs/imx_v7_defconfig                  |   1 +
> > >  arch/arm/dts/Makefile                              |   1 +
> > >  arch/arm/dts/imx6ul-pico-hobbit.dts                |  27 ++++++
> > >  arch/arm/mach-imx/Kconfig                          |   6 ++
> > >  images/Makefile.imx                                |  10 ++
> > >  13 files changed, 394 insertions(+)
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/Makefile
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/board.c
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256.imxcfg
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512.imxcfg
> > >  create mode 100644 arch/arm/boards/technexion-pico-hobbit/lowlevel.c
> > >  create mode 100644 arch/arm/dts/imx6ul-pico-hobbit.dts
> > > 
> > > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > > index 250ccb8889..d9f9d7778e 100644
> > > --- a/arch/arm/boards/Makefile
> > > +++ b/arch/arm/boards/Makefile
> > > @@ -114,6 +114,7 @@ obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
> > >  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
> > >  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
> > >  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
> > > +obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
> > >  obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
> > >  obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
> > >  obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
> > > diff --git a/arch/arm/boards/technexion-pico-hobbit/Makefile b/arch/arm/boards/technexion-pico-hobbit/Makefile
> > > new file mode 100644
> > > index 0000000000..b60dcd2bc1
> > > --- /dev/null
> > > +++ b/arch/arm/boards/technexion-pico-hobbit/Makefile
> > > @@ -0,0 +1,7 @@
> > > +obj-y += board.o
> > > +lwl-y += lowlevel.o
> > > +extra-y += flash-header-imx6ul-pico-hobbit-256.dcd.S \
> > > +           flash-header-imx6ul-pico-hobbit-256.dcd \
> > > +           flash-header-imx6ul-pico-hobbit-512.dcd.S \
> > > +           flash-header-imx6ul-pico-hobbit-512.dcd
> > > +bbenv-y += defaultenv-pico-hobbit
> > > diff --git a/arch/arm/boards/technexion-pico-hobbit/board.c b/arch/arm/boards/technexion-pico-hobbit/board.c
> > > new file mode 100644
> > > index 0000000000..40b49de669
> > > --- /dev/null
> > > +++ b/arch/arm/boards/technexion-pico-hobbit/board.c
> > > @@ -0,0 +1,105 @@
> > > +/*
> > > + * Copyright (C) 2017 Michael Grzeschik, Pengutronix
> > > + *
> > > + * This program is free software; you can redistribute it and/or
> > > + * modify it under the terms of the GNU General Public License as
> > > + * published by the Free Software Foundation; either version 2 of
> > > + * the License, or (at your option) any later version.
> > > + *
> > > + * This program is distributed in the hope that it will be useful,
> > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > + * GNU General Public License for more details.
> > > + *
> > > + * You should have received a copy of the GNU General Public License
> > > + * along with this program; if not, write to the Free Software
> > > + * Foundation.
> > > + *
> > > + */
> > > +
> > > +#include <asm/armlinux.h>
> > > +#include <asm/io.h>
> > > +#include <bootsource.h>
> > > +#include <common.h>
> > > +#include <environment.h>
> > > +#include <envfs.h>
> > > +#include <gpio.h>
> > > +#include <init.h>
> > > +#include <mach/generic.h>
> > > +#include <mach/imx6-regs.h>
> > > +#include <mach/imx6.h>
> > > +#include <mach/bbu.h>
> > > +#include <linux/sizes.h>
> > > +#include <linux/phy.h>
> > > +#include <mfd/imx6q-iomuxc-gpr.h>
> > > +
> > > +#include <linux/clk.h>
> > > +#include <linux/micrel_phy.h>
> > > +
> > > +static int ksz8081_phy_fixup(struct phy_device *dev)
> > > +{
> > > +	phy_write(dev, 0x1f, 0x8190);
> > > +	phy_write(dev, 0x16, 0x202);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int imx6ul_setup_fec(void)
> > > +{
> > > +	void __iomem *gprbase = IOMEM(MX6_IOMUXC_BASE_ADDR) + 0x4000;
> > > +	uint32_t val;
> > > +	struct clk *clk;
> > > +
> > > +	phy_register_fixup_for_uid(PHY_ID_KSZ8081, MICREL_PHY_ID_MASK,
> > > +			ksz8081_phy_fixup);
> > > +
> > > +	clk = clk_lookup("enet_ptp");
> > > +	if (IS_ERR(clk))
> > > +		goto err;
> > > +
> > > +	clk_enable(clk);
> > > +
> > > +	clk = clk_lookup("enet_ref");
> > > +	if (IS_ERR(clk))
> > > +		goto err;
> > > +	clk_enable(clk);
> > > +
> > > +	clk = clk_lookup("enet_ref_125m");
> > > +	if (IS_ERR(clk))
> > > +		goto err;
> > > +
> > > +	clk_enable(clk);
> > > +
> > > +	val = readl(gprbase + IOMUXC_GPR1);
> > > +	/* Use 50M anatop loopback REF_CLK1 for ENET1, clear gpr1[13], set gpr1[17]*/
> > > +	val &= ~(1 << 13);
> > > +	val |= (1 << 17);
> > > +	/* Use 50M anatop loopback REF_CLK1 for ENET2, clear gpr1[14], set gpr1[18]*/
> > > +	val &= ~(1 << 14);
> > > +	val |= (1 << 18);
> > > +	writel(val, gprbase + IOMUXC_GPR1);
> > > +
> > > +	return 0;
> > > +err:
> > > +	pr_err("Setting up DFEC\n");
> > > +
> > > +	return -EIO;
> > > +}
> > 
> > Since this is an exact copy of imx6ul_setup_fec() in
> > arch/arm/boards/phytec-som-imx6/board.c we should see what we can do
> > better.
> > 
> > I can imagine that the clocks should be enabled by the fec driver, maybe
> > they are even enabled already there.
> 
> Yes, you are right. The imx6ul is already enabling them:
> 
>                                 clocks = <&clks IMX6UL_CLK_ENET>,
>                                          <&clks IMX6UL_CLK_ENET_AHB>,
>                                          <&clks IMX6UL_CLK_ENET_PTP>,
>                                          <&clks IMX6UL_CLK_ENET2_REF_125M>,
>                                          <&clks IMX6UL_CLK_ENET2_REF_125M>;
>                                 clock-names = "ipg", "ahb", "ptp",
>                                               "enet_clk_ref", "enet_out";

Unfortunately this was probably to fast. The driver fec_imx is currently
only loading ipg, ahb and ptp. I will write a patch to optionaly load
enet_clk_ref and enet_out. Until that got fixed, please ignore both
patches for phytec-som-imx6 and mx6sx-sabresdb I just send.

Thanks,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
