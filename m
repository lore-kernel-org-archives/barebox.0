Delivery-date: Tue, 11 Mar 2025 09:51:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvKw-00Cbkj-0N
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:51:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvKu-0004Da-NX
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:51:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pJ2ZfsIIrMM1ZpHHfQkHLnch8xepzWYYcVP6YIPk0bI=; b=dm8jeF43aAewjevaFgxh7hOcJF
	nmG6vwwwB91ybayJ3m5d3PTCyYkNoxq40uqVLrwfz6og+6OJEIj7Vbx/ITj8rtCX9oH4XtB5uvTdO
	PDQ0/1tL3CS61hzoVy7cHjn9B5ZcP0SgLue+HUyrO4HpfYSuuBvg1E2cGLqLO6smyDb8XLbGtlqn7
	xWVIBHHKk2Bdqgx3BR8dHaxd/fL/DdPFVu5YChhsKHcjJmmx9y6GekxsQ+eO7GNpi6rTnguBkVaR/
	8jHaIoZtocARcQo9Fj8aCjAEhAf0Yv8i7VW3Ej+ya+zGQk+xIPwhDOPAcQ07Pc8bOiPQvmM/7zPkk
	9fEaXMRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvKR-000000052Ls-2kzD;
	Tue, 11 Mar 2025 08:51:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvJA-000000052I1-04At
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:49:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1trvJ8-0003sI-Qg; Tue, 11 Mar 2025 09:49:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1trvJ8-0059Kj-21;
	Tue, 11 Mar 2025 09:49:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1trvJ8-007gHD-1j;
	Tue, 11 Mar 2025 09:49:50 +0100
Date: Tue, 11 Mar 2025 09:49:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z8_5LlB26xDUjSr4@pengutronix.de>
References: <20250304-phyboard-segin-imx93-v1-1-8677740a79de@pengutronix.de>
 <93d21a21-02f8-45c1-91bf-034c4ed08d30@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93d21a21-02f8-45c1-91bf-034c4ed08d30@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_014952_054347_2BC6E724 
X-CRM114-Status: GOOD (  37.31  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: Add support for phyBOARD-Segin i.MX 93
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Mar 05, 2025 at 03:02:25PM +0100, Bastian Krause wrote:
> Hi Jonas,
> 
> On 3/4/25 5:24 PM, Jonas Rebmann wrote:
> > This patch adds support for the phyBOARD-Segin i.MX 93 and the phyCORE
> > i.MX 93 SoM it is based upon.
> > 
> > Note that support is only provided for the standard configuration
> > featuring 1GB RAM as testing was only possible on that variant and only
> > the single-configuration lpddr4_timing.c as initially committed to
> > u-boot in 7c1f8ce3956 worked.
> > 
> > The 1GB configuration from later revisions results in a freeze during
> > dram setup.
> > 
> > The following functionality has been tested:
> >   - barebox starts via imxusbloader, tftp and emmc
> >   - both ethertnet interfaces work
> >   - barebox_update to emmc
> >   - boot kernel via network
> >   - USB OTG
> >   - USB mass storage on USB Host Port
> >   - reset
> > 
> > Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> > ---
> >   arch/arm/boards/Makefile                           |    1 +
> >   arch/arm/boards/phytec-phycore-imx93/Makefile      |    2 +
> >   arch/arm/boards/phytec-phycore-imx93/board.c       |   56 +
> >   arch/arm/boards/phytec-phycore-imx93/lowlevel.c    |   60 +
> >   .../boards/phytec-phycore-imx93/lpddr4_timing.c    | 1546 ++++++++++++++++++++
> >   arch/arm/configs/imx_v8_defconfig                  |    1 +
> >   arch/arm/configs/multi_v8_defconfig                |    1 +
> >   arch/arm/dts/Makefile                              |    1 +
> >   arch/arm/dts/imx93-phyboard-segin-downstream.dtsi  |  269 ++++
> >   arch/arm/dts/imx93-phyboard-segin.dts              |   28 +
> >   arch/arm/mach-imx/Kconfig                          |    9 +
> >   images/Makefile.imx                                |    4 +
> >   12 files changed, 1978 insertions(+)
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index c6104d04329774655712db5aaf6df671fd74142e..1e67b304f1855df2c32305638c3d9029ed0994c6 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -78,6 +78,7 @@ obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
> >   obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
> >   obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
> >   obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
> > +obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX93)		+= phytec-phycore-imx93/
> >   obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
> >   obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MM)		+= phytec-som-imx8mm/
> >   obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
> > diff --git a/arch/arm/boards/phytec-phycore-imx93/Makefile b/arch/arm/boards/phytec-phycore-imx93/Makefile
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..ae29bb9249e62cb649e21e580559383fa9d18386
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx93/Makefile
> > @@ -0,0 +1,2 @@
> > +lwl-y += lowlevel.o lpddr4_timing.o
> > +obj-y += board.o
> > diff --git a/arch/arm/boards/phytec-phycore-imx93/board.c b/arch/arm/boards/phytec-phycore-imx93/board.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..149248ca654624826d0e8f6fe0f1f42c2747e248
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx93/board.c
> > @@ -0,0 +1,56 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#define pr_fmt(fmt) "phyCORE imx93: " fmt
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <linux/kernel.h>
> > +#include <environment.h>
> > +#include <mfd/pca9450.h>
> > +#include <deep-probe.h>
> > +#include <mach/imx/bbu.h>
> > +#include <linux/pinctrl/consumer.h>
> > +
> > +static void phycore_imx93_init_pmic(struct regmap *map)
> > +{
> > +	/* set WDOG_B_CFG to cold reset */
> > +	regmap_write(map, PCA9450_RESET_CTRL, 0xA1);
> > +}
> > +
> > +static int phycore_imx93_probe(struct device *dev)
> > +{
> > +	struct device_node *np;
> > +
> > +	pca9450_register_init_callback(phycore_imx93_init_pmic);
> > +
> > +	/*
> > +	 * The phy on the EQOS has its MDIO lines connected to the FEC. The phy
> > +	 * registers can only be successfully read when the EQOS pinctrl setup
> > +	 * has been done. The phys on the FEC MDIO bus are probed during the
> > +	 * FEC driver probe, so do the EQOS pinctrl setup here to make sure it's
> > +	 * done before the FEC probes.
> > +	 */
> > +	np = of_find_compatible_node(dev->of_node, NULL, "nxp,imx93-dwmac-eqos");
> > +	BUG_ON(!np);
> > +	of_pinctrl_select_state_default(np);
> > +
> > +	imx9_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct of_device_id phycore_imx93_of_match[] = {
> > +	{
> > +		.compatible = "phytec,imx93-phyboard-segin",
> > +	},
> > +	{ /* sentinel */ },
> > +};
> > +
> > +static struct driver phycore_imx93_board_driver = {
> > +	.name = "board-phycore_imx93",
> > +	.probe = phycore_imx93_probe,
> > +	.of_compatible = phycore_imx93_of_match,
> > +};
> > +coredevice_platform_driver(phycore_imx93_board_driver);
> > +
> > +BAREBOX_DEEP_PROBE_ENABLE(phycore_imx93_of_match);
> > diff --git a/arch/arm/boards/phytec-phycore-imx93/lowlevel.c b/arch/arm/boards/phytec-phycore-imx93/lowlevel.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..7678d2f2633ea07e532684f999b62ddecc2b79dc
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx93/lowlevel.c
> > @@ -0,0 +1,60 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <common.h>
> > +#include <debug_ll.h>
> > +#include <mach/imx/debug_ll.h>
> > +#include <mach/imx/generic.h>
> > +#include <mach/imx/xload.h>
> > +#include <asm/barebox-arm.h>
> > +#include <soc/imx9/ddr.h>
> > +#include <mach/imx/atf.h>
> > +#include <mach/imx/xload.h>
> > +#include <mach/imx/romapi.h>
> 
> This shouldn't be needed.

Dropped a few includes while applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


