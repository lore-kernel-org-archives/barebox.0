Delivery-date: Fri, 23 Jan 2026 10:17:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDIP-004QtI-27
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 10:17:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDIO-0003e3-IL
	for lore@pengutronix.de; Fri, 23 Jan 2026 10:17:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGV95itvIPgO1AS0InPH3T2Rt0qrNwakIUltCQ9jtxM=; b=CwAmQuf4I5Z8ks6NB/hFaV9gWF
	4ZbgMmNDfe3wnzdRRsy+Fm6JxbJ7e6TIdE0G5aAj+5lavvIuHWVe+NqZS57StVfA9UVg36xQ5ysD9
	GeYmGdnMdhK79F2aAvGrKJE9vlSwCWp/MR6m3WLOSekx5Ue4Qd8EPKKQ8bEM214RZ3ujYV25VBcgP
	7pQV1u35trqGeel3L+33wlIe0vnM0RCigjVTdJcPoSimgF/Lymt7OZ1whhqbpkEAuI7fbq4+cqCN6
	og5hrfO5J5lDxQF3V6Rdz49IrhqnuZ0bfaZAmDecw3WGRw0tqelIahwMC8wpEAduBRQUNibtpF28y
	ef83F0VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDHs-00000008Xaj-1Br1;
	Fri, 23 Jan 2026 09:17:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDHp-00000008XaO-01tq
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 09:17:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDHn-0003Xf-AL; Fri, 23 Jan 2026 10:16:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDHn-0024Hw-2X;
	Fri, 23 Jan 2026 10:16:59 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjDHn-00AtBR-01;
	Fri, 23 Jan 2026 10:16:59 +0100
Date: Fri, 23 Jan 2026 10:16:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aXM8iigmqbfe3h2k@pengutronix.de>
References: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
 <20260119-fpf-imx8mp-frdm-v1-1-13fac69eda23@pengutronix.de>
 <20260119152437.nenxd336vgenmlib@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119152437.nenxd336vgenmlib@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_011701_072450_FE094327 
X-CRM114-Status: GOOD (  27.88  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: i.MX8MP: add imx8mp-frdm board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 19, 2026 at 04:24:37PM +0100, Marco Felsch wrote:
> Hi Fabian,
> 
> please see below.
> 
> On 26-01-19, Fabian Pfitzner wrote:
> > The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
> > SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
> > 32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
> > display interfaces, camera connectors, and standard expansion headers.
> > 
> > The DRAM timings were taken from [1].
> > Furthermore, the board code was mainly taken from the imx8mp-evk.
> > 
> > [1] git@github.com:nxp-imx/uboot-imx.git branch lf_v2025.04
> > 
> > Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> > ---
> >  arch/arm/boards/Makefile                           |    1 +
> >  arch/arm/boards/nxp-imx8mp-frdm/Makefile           |    4 +
> >  arch/arm/boards/nxp-imx8mp-frdm/board.c            |   36 +
> >  .../flash-header-imx8mp-frdm.imxcfg                |   10 +
> >  arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c         |  145 +++
> >  arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c    | 1119 ++++++++++++++++++++
> >  arch/arm/configs/imx_v8_defconfig                  |    1 +
> >  arch/arm/configs/multi_v8_defconfig                |    1 +
> >  arch/arm/mach-imx/Kconfig                          |   10 +
> >  images/Makefile.imx                                |    2 +
> >  10 files changed, 1329 insertions(+)
> > 
> > diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> > index f73285ede9d3ea0b7ea04f7a984fce0e796f9f73..71b26713f10ec4b617070015463c1e122ddc550a 100644
> > --- a/arch/arm/boards/Makefile
> > +++ b/arch/arm/boards/Makefile
> > @@ -73,6 +73,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
> >  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
> >  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
> >  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> > +obj-$(CONFIG_MACH_NXP_IMX8MP_FRDM)		+= nxp-imx8mp-frdm/
> >  obj-$(CONFIG_MACH_NXP_IMX93_FRDM)		+= nxp-imx93-frdm/
> >  obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
> >  obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
> > diff --git a/arch/arm/boards/nxp-imx8mp-frdm/Makefile b/arch/arm/boards/nxp-imx8mp-frdm/Makefile
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..35d8640087b1d6d12201d2bcb5aacc76b03f140e
> > --- /dev/null
> > +++ b/arch/arm/boards/nxp-imx8mp-frdm/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +
> > +obj-y += board.o
> > +lwl-y += lowlevel.o lpddr4-timing.o
> > diff --git a/arch/arm/boards/nxp-imx8mp-frdm/board.c b/arch/arm/boards/nxp-imx8mp-frdm/board.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..914d16e3b5c82d1e4b9dbe700af9061be079b2e2
> > --- /dev/null
> > +++ b/arch/arm/boards/nxp-imx8mp-frdm/board.c
> > @@ -0,0 +1,36 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2026 Fabian Pfitzner, Pengutronix
> > + */
> > +
> > +#include <asm/memory.h>
> > +#include <bootsource.h>
> > +#include <common.h>
> > +#include <deep-probe.h>
> > +#include <init.h>
> > +#include <linux/phy.h>
> > +#include <linux/sizes.h>
> > +#include <mach/imx/bbu.h>
> > +#include <mach/imx/iomux-mx8mp.h>
> > +#include <gpio.h>
> > +#include <envfs.h>
> > +
> > +static int nxp_imx8mp_frdm_probe(struct device *dev)
> > +{
> > +	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);
> 
> @Ahmad @Sascha
> 
> Do we have a proper driver for the bbu? In that case we could drop the
> whole board.c :-)

No we don't have that yet. Would be nice to have, but requires some
thinking. I think this would require yet another barebox specific device
tree binding which is not a nice thing to have.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


