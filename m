Delivery-date: Thu, 01 Jun 2023 10:29:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dgp-005Xcf-Md
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:29:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dgm-0003b0-Oz
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:29:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fwLarjf7Hl4cK9iOtkjfznkawaodL0iqEaqKVPSs4rQ=; b=XtrJRXCwUFlS4gujRbETybATcO
	Ojwg+htKUmqdBkVrRKFZQE9+MYPuYGbgq9XqeRv8lhOPG9hQ6Eb6KyGdax+Ts9F9Om6iSttbSt8k0
	72GtRWUaFfRritA/yrhGSOM8Guwufq+H4MO/39dgOBzZhs294rCYRj0mJIaDYDLmcM3oUwX5xQdTe
	OHspDoVT5OxKQ/8DBsFc6ETDiAHFCjF8sgXXEUGj1eOsk6r0I6abcMeWeoNEbl9pJQfXTJ7VKo59Q
	Asa89PH3FMZoAEYcm6Zu5/4ySPNyFvcrw/VPuJM3o0EtqsgREmOE0bVEhaZRLVZcX298EeJRXWRxu
	9O0j/WKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dff-002Ym8-1K;
	Thu, 01 Jun 2023 08:28:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dfW-002YlJ-2i
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:28:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dfV-0003Vu-Dn; Thu, 01 Jun 2023 10:28:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dfV-00053Z-5g; Thu, 01 Jun 2023 10:28:25 +0200
Date: Thu, 1 Jun 2023 10:28:25 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, patchwork-jzi@pengutronix.de,
	Juergen Borleis <j.borleis@pengutronix.de>
Message-ID: <20230601082825.GL18491@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_012828_081281_88973D50 
X-CRM114-Status: GOOD (  27.85  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 01, 2023 at 09:40:29AM +0200, Johannes Zink wrote:
> Add basic support for Koenig+Bauer Alphajet, based on a Congatec QMX8MP
> SoM with a i.MX8MP SoC in the Industrial Temperature Grade 4GB Variant,
> no inline ECC used.
> 
> Co-Developed-by: Juergen Borleis <j.borleis@pengutronix.de>
> Signed-off-by: Juergen Borleis <j.borleis@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> Koenig+Bauer Alphajet is based on the Congatec QMX8MP, which is an
> i.MX8MP based SoC. Building barebox for this target requires the usual
> bl31 and lpddr4 training data in /firmware as described in [1].
> 
> The Congatec SoM is strapped and fused to boot from QSPI NOR flash,
> which can easily be updated using the registered barebox update handler.
> 
> [1] https://www.barebox.org/doc/latest/boards/imx/nxp-imx8mp-evk.html
> 
> Best regards
> Johannes
> ---
> Bootlog:
> 
> barebox 2023.05.0-00196-g24e000914af6-dirty #151 Thu Jun 1 09:36:02 CEST
> 2023
> 
> Board: Koenig+Bauer Alphajet
> deep-probe: supported due to kb,alphajet
> detected i.MX8MP revision 1.1
> i.MX8MP unique ID: 3a13efb20002aaff
> netconsole: registered as netconsole-1
> psci psci.of: detected version 1.1
> imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
> mmc0: detected SD card version 2.0
> mmc0: registered mmc0
> imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
> mmc2: detected MMC card version 5.1
> mmc2: registered mmc2.boot0
> mmc2: registered mmc2.boot1
> mmc2: registered mmc2
> mdio_bus: miibus0: probed
> xHCI xHCI0: USB XHCI 1.10
> state: New state registered 'state'
> state: Using bucket 0@0x00000000
> malloc space: 0xbfcfbe80 -> 0xffcfbe7f (size 1 GiB)
> found force-builtin environment, using defaultenv
> 
> Hit m for menu or any to stop autoboot:    3
> barebox@Koenig+Bauer Alphajet:/
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/kb-imx8mp-alphajet/Makefile        |    4 +
>  arch/arm/boards/kb-imx8mp-alphajet/board.c         |   60 +
>  .../flash-header-imx8mp-cgtqx8p.imxcfg             |   10 +
>  arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c      |  127 ++
>  arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c | 1832 ++++++++++++++++++++
>  arch/arm/dts/Makefile                              |    1 +
>  arch/arm/dts/imx8mp-cgtqx8p.dtsi                   | 1060 +++++++++++
>  arch/arm/dts/imx8mp-koenigbauer-alphajet.dts       |  180 ++
>  arch/arm/mach-imx/Kconfig                          |   10 +
>  images/Makefile.imx                                |    5 +
>  11 files changed, 3290 insertions(+)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 2877debad535..67b2fc07a395 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -81,6 +81,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_KB_ALPHAJET)			+= kb-imx8mp-alphajet/
>  obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
>  obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
>  obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/Makefile b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
> new file mode 100644
> index 000000000000..b3ae72be3e3b
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier:      GPL-2.0+
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/board.c b/arch/arm/boards/kb-imx8mp-alphajet/board.c
> new file mode 100644
> index 000000000000..78cc60e2c3b1
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/board.c
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// SPDX-FileCopyrightText: 2023 Juergen Borleis, Pengutronix
> +// SPDX-FileCopyrightText: 2023 Johannes Zink, Pengutronix
> +
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <mach/imx/bbu.h>
> +#include <mach/imx/generic.h>
> +#include <mach/imx/iomux-mx8mp.h>
> +#include <gpio.h>
> +#include <envfs.h>
> +
> +#define EQOS_PWR_PIN IMX_GPIO_NR(1, 5) /* ENET_PWREN# */
> +static void setup_ethernet_phy(void)
> +{
> +	u32 val;
> +
> +	of_device_ensure_probed_by_alias("gpio0");
> +
> +	if (gpio_direction_output(EQOS_PWR_PIN, 0))
> +	{
> +		pr_err("eqos phy power: failed to request pin\n");
> +		return;
> +	}

Should this be a fixed regulator in dt?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


