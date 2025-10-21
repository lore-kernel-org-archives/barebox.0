Delivery-date: Tue, 21 Oct 2025 13:12:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAHp-00AEI5-0e
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 13:12:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBAHo-0002BR-Hi
	for lore@pengutronix.de; Tue, 21 Oct 2025 13:12:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ok2GseoJznyJp6+euGXecl7aFbVFAIRXVdeA8cE+QXM=; b=jfBrfV8pcwJyzwOARFU3eIUx3R
	ingDhHMLQP4uDStJ6OofP6c2swoFjoK9tyOjejkFFCDYT8cAgk+cZv+APcVP/yYG835o7xYAtEgVJ
	2+Td0f/LDHl7g1LXpqrxWg72nxNtpZRvCGgOPohc6+e4DWNtBzMdY+niCi5lJ80yDoADIm1KeXZZt
	QRcoe8lA0q0t6gzFUc8V32W7cigi/0hn2VvhQ6kbQfuGunQ9pv1OCQPVSLFdjfzAPTLvByO/xCMQx
	3o/TVKCWlIMrKvBZGeoMbNtPNIsjDPjIu4N6nHogimu8XTeoF++T2uWx+X8rEv81tgIkRjkOyHjhq
	fLo+IT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAHP-0000000GjBn-0QbG;
	Tue, 21 Oct 2025 11:11:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBAHM-0000000GjBN-3VS5
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 11:11:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBAHL-00027C-7U; Tue, 21 Oct 2025 13:11:47 +0200
Message-ID: <22735bfd-c673-45ec-8b98-4bb4ae6cfad0@pengutronix.de>
Date: Tue, 21 Oct 2025 13:11:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20250527114241.325357-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-1-f.pflug@pengutronix.de>
 <20251021110149.1151936-5-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
Cc: maud_spierings@hotmail.com
In-Reply-To: <20251021110149.1151936-5-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_041148_880829_297DFE4D 
X-CRM114-Status: GOOD (  23.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: boards: i.MX93: Add NXP FRDM i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Fabian,

On 10/21/25 12:59 PM, Fabian Pflug wrote:
> This board is a low cost i.MX93 eval board from NXP.
> 
> There is no upstream DT yet, therefore a minimal DT is added in this
> patch. The kernel DT is submitted in [0].
> 
> The DDR timings are copied from the NXP yocto layer [1] for u-boot with
> some small modifications to remove unused timings and DDR sizes.
> 
> [0] https://lore.kernel.org/r/20250526-fpg-nxp-imx93-frdm-v2-0-e5ad0efaec33@pengutronix.de
> [1] https://github.com/nxp-imx-support/meta-imx-frdm/blob/lf-6.6.36-2.1.0/meta-imx-bsp/recipes-bsp/u-boot/u-boot-imx/0002-imx-imx93_frdm-Add-basic-board-support.patch
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/nxp-imx93-frdm/Makefile       |    2 +
>  arch/arm/boards/nxp-imx93-frdm/board.c        |   12 +
>  arch/arm/boards/nxp-imx93-frdm/lowlevel.c     |   46 +
>  .../nxp-imx93-frdm/lpddr4x_2gb_timing.c       | 1907 +++++++++++++++++
>  arch/arm/dts/Makefile                         |    1 +
>  arch/arm/dts/imx93-frdm.dts                   |  534 +++++
>  arch/arm/mach-imx/Kconfig                     |    9 +
>  images/Makefile.imx                           |    4 +
>  9 files changed, 2516 insertions(+)
>  create mode 100644 arch/arm/boards/nxp-imx93-frdm/Makefile
>  create mode 100644 arch/arm/boards/nxp-imx93-frdm/board.c
>  create mode 100644 arch/arm/boards/nxp-imx93-frdm/lowlevel.c
>  create mode 100644 arch/arm/boards/nxp-imx93-frdm/lpddr4x_2gb_timing.c
>  create mode 100644 arch/arm/dts/imx93-frdm.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ac1fa74d4c..8bbf4d5ea5 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -72,6 +72,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_NXP_IMX93_FRDM)		+= nxp-imx93-frdm/
>  obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
>  obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
>  obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
> diff --git a/arch/arm/boards/nxp-imx93-frdm/Makefile b/arch/arm/boards/nxp-imx93-frdm/Makefile
> new file mode 100644
> index 0000000000..ac419ef7c2
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx93-frdm/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o lpddr4x_2gb_timing.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/nxp-imx93-frdm/board.c b/arch/arm/boards/nxp-imx93-frdm/board.c
> new file mode 100644
> index 0000000000..1e1c54ce81
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx93-frdm/board.c
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <deep-probe.h>
> +
> +static const struct of_device_id frdm_imx93_of_match[] = {
> +        {
> +                .compatible = "fsl,imx93-11x11-frdm",
> +        },
> +        { /* sentinel */ },
> +};
> +
> +BAREBOX_DEEP_PROBE_ENABLE(frdm_imx93_of_match);
> diff --git a/arch/arm/boards/nxp-imx93-frdm/lowlevel.c b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
> new file mode 100644
> index 0000000000..bc48160431
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx93-frdm/lowlevel.c
> @@ -0,0 +1,46 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <mach/imx/debug_ll.h>
> +#include <mach/imx/generic.h>
> +#include <mach/imx/xload.h>
> +#include <asm/barebox-arm.h>
> +#include <soc/imx9/ddr.h>
> +#include <mach/imx/atf.h>
> +#include <mach/imx/xload.h>
> +#include <mach/imx/esdctl.h>
> +
> +extern char __dtb_z_imx93_frdm_start[];
> +extern struct dram_timing_info frdm_imx93_dram_timing;
> +
> +static noinline void frdm_imx93_continue(void)
> +{
> +	void __iomem *base = IOMEM(MX9_UART1_BASE_ADDR);
> +	void __iomem *muxbase = IOMEM(MX9_IOMUXC_BASE_ADDR);
> +
> +	/* configure LPUART1 TX pin */
> +	writel(0x0, muxbase + 0x184);
> +
> +	imx9_uart_setup(base);
> +	pbl_set_putc(lpuart32_putc, base + 0x10);
> +	putchar('>');

Do you see the > character on bootup if CONFIG_PBL_CONSOLE is enabled?
Maud (Cc'd) mentioned on the IRC that the 0x10 offset shouldn't be
necessary.

Cheers,
Ahmad
-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



