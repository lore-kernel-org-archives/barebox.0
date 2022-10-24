Delivery-date: Mon, 24 Oct 2022 14:34:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwf5-000h5M-T2
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 14:34:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwf3-0004Dv-PP
	for lore@pengutronix.de; Mon, 24 Oct 2022 14:34:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gjyyDJjPby9WB9Oh7VNDOfFAjQDJIIAqMwCTOJfdF8Q=; b=1T7zPLrMVETfrJLY4Z3AIpdPv8
	qCd9fnhw2u4wyo2uDHl4QAfEpJdAhp7yehty+asyu3jlgbvCwIyT3c0wP3VY9AgFMtN7Skh8C5xQU
	z5E1VxFfxpRwK99k8dJ4aMeLdJEJzsr38XrOawtLRkMN7+dHcWOXr+nk1CMJtSg85OPKuypor59vQ
	ijQk32Cq/Ix4HAnCtd8FgPCJ6d8x7WpXyxH/dwWql9S7UiPrzFzIr7u6+a/gnY2NJhmHZDb0c7WAg
	OyTcYp2LqWLufW/Y6PpQYywN3L5TvveqamJ0gQ6gB5HQi/Z8cWtnrVhamuOLYL1A2kh9VfeTn1zqd
	voEkkK8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwdW-001R8e-4y; Mon, 24 Oct 2022 12:32:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwdF-001R4P-Rl
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 12:32:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omwdE-0003o7-7b; Mon, 24 Oct 2022 14:32:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omwdE-0003ye-0I; Mon, 24 Oct 2022 14:32:40 +0200
Date: Mon, 24 Oct 2022 14:32:39 +0200
To: Holger Assmann <h.assmann@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leonard =?iso-8859-15?Q?G=F6hrs?= <l.goehrs@pengutronix.de>
Message-ID: <20221024123239.GN6702@pengutronix.de>
References: <20221024120952.2162839-1-h.assmann@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221024120952.2162839-1-h.assmann@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_053241_934903_DABC9605 
X-CRM114-Status: GOOD (  30.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add TQ mba8mpxl board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 24, 2022 at 02:09:52PM +0200, Holger Assmann wrote:
> This commit adds support for the TQ MBa8MPxL with TQMa8MPxL module with
> i.MX8M Plus Quad/Dual SoC. This very combination results in configuration
> symbol "MACH_TQ_MBA8MPXL". A possible variant based on i.MX8M Plus Dual
> would be supported transparently, once barebox deleted the CPU nodes
> when it detects that they were fused away. It already does so for
> i.MX8MM and i.MX8MN.
> 
> We use the respective Linux upstream device trees and their implications
> regarding hardware support.
> 
> Known to be unsupported for now is the second Ethernet interface around
> the eqos dwmac IP. This has to be resolved by porting over the fitting
> wrapper from Linux.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/mba8mpxl/Makefile             |    4 +
>  arch/arm/boards/mba8mpxl/board.c              |   54 +
>  .../mba8mpxl/flash-header-tqma8mpxl.imxcfg    |    7 +
>  arch/arm/boards/mba8mpxl/lowlevel.c           |  111 +
>  arch/arm/boards/mba8mpxl/lpddr4-timing.c      | 1856 +++++++++++++++++
>  arch/arm/dts/Makefile                         |    1 +
>  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts    |   59 +
>  arch/arm/mach-imx/Kconfig                     |   10 +
>  images/Makefile.imx                           |    5 +
>  10 files changed, 2108 insertions(+)
>  create mode 100644 arch/arm/boards/mba8mpxl/Makefile
>  create mode 100644 arch/arm/boards/mba8mpxl/board.c
>  create mode 100644 arch/arm/boards/mba8mpxl/flash-header-tqma8mpxl.imxcfg
>  create mode 100644 arch/arm/boards/mba8mpxl/lowlevel.c
>  create mode 100644 arch/arm/boards/mba8mpxl/lpddr4-timing.c
>  create mode 100644 arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index a0e84c24d7..9db3669a5e 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -91,6 +91,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= mba8mpxl/
>  obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
>  obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
>  obj-$(CONFIG_MACH_PANDA)			+= panda/
> diff --git a/arch/arm/boards/mba8mpxl/Makefile b/arch/arm/boards/mba8mpxl/Makefile
> new file mode 100644
> index 0000000000..35d8640087
> --- /dev/null
> +++ b/arch/arm/boards/mba8mpxl/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> diff --git a/arch/arm/boards/mba8mpxl/board.c b/arch/arm/boards/mba8mpxl/board.c
> new file mode 100644
> index 0000000000..f654a64995
> --- /dev/null
> +++ b/arch/arm/boards/mba8mpxl/board.c
> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 Holger Assmann <h.assmann@pengutronix.de>
> + */
> +
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <mach/bbu.h>
> +#include <mach/iomux-mx8mp.h>
> +#include <gpio.h>
> +#include <envfs.h>
> +
> +static int tqma8mpxl_probe(struct device_d *dev)
> +{
> +	int emmc_bbu_flag = 0;
> +	int sd_bbu_flag = 0;
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC) {
> +		if (bootsource_get_instance() == 2) {
> +			of_device_enable_path("/chosen/environment-emmc");
> +			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +		} else {
> +			of_device_enable_path("/chosen/environment-sd");
> +			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +		}
> +	} else {
> +		of_device_enable_path("/chosen/environment-emmc");
> +		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	}

You can write this as:

	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 2) {
		of_device_enable_path("/chosen/environment-sd");
		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
	} else {
		of_device_enable_path("/chosen/environment-emmc");
		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
	}

> +static __noreturn noinline void tqma8mpxl_start(void)
> +{
> +	extern char __dtb_z_imx8mp_tqma8mpql_mba8mpxl_start[];
> +
> +	setup_uart();
> +
> +	if (current_el() == 3) {
> +		extern struct dram_timing_info dram_timing_2gb_no_ecc;
> +
> +		power_init_board();
> +
> +		imx8mp_ddr_init(&dram_timing_2gb_no_ecc, DRAM_TYPE_LPDDR4);
> +	

Trailing whitespace here.

> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 99f44e7b04..5ceb97129f 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -146,6 +146,7 @@ lwl-$(CONFIG_MACH_NXP_IMX8MN_EVK) += imx8mn-evk.dtb.o imx8mn-ddr4-evk.dtb.o
>  lwl-$(CONFIG_MACH_NXP_IMX8MP_EVK) += imx8mp-evk.dtb.o
>  lwl-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
>  lwl-$(CONFIG_MACH_INNOCOMM_WB15) += imx8mm-innocomm-wb15-evk.dtb.o
> +lwl-$(CONFIG_MACH_TQ_MBA8MPXL) += imx8mp-tqma8mpql-mba8mpxl.dtb.o
>  lwl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
>  lwl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
>  lwl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
> diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> new file mode 100644
> index 0000000000..8bd9efbaef
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2017 NXP
> + * Copyright (C) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
> + */
> +
> +/dts-v1/;
> +
> +#include <arm64/freescale/imx8mp-tqma8mpql-mba8mpxl.dts>
> +#include "imx8mp.dtsi"
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";

Please add a label to the environment partition and point to that here.

> +			status = "disabled";
> +		};
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc3, "partname:barebox-environment";

ditto.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


