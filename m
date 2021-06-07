Delivery-date: Mon, 07 Jun 2021 10:02:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqADp-0001gC-HN
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 10:02:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqADl-00010K-VC
	for lore@pengutronix.de; Mon, 07 Jun 2021 10:02:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gpAOt6OupZ1m+04yUxHawhDf7YFNzC9VAIf/j6JyqR8=; b=a2jzNd7b7BI8rxKS5qKUYyJ8de
	62jkH2i2x5Z+nNPPaEkdkhUudLbA29iDONPWv4v6y6bmnLfyIHtkPvKDpa3clJPMiDNSFiQiVJTFn
	AaV1SnRZYpixe6WxTsyRRlmqW/Cb75fYvjWjhgkoOCTM+6dQ20G3eIz2RNiw2taqJ3GZEeOIyjggh
	SMLB/Cz8/1LJuPktTusoI88I0bU97Bfywz7sOcHm3mlPS6ks/RXX73cX3h4JcJB9bVrM1GSiEBHok
	/FQycD1wi+84o0MuG+PW/JzpNCSUYFRIx1YAoEx3o7MT6gDB+sW4MrUAmtx5khPykdxCsJn1p7pFr
	hPPeGI2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqAC5-002ASe-Fj; Mon, 07 Jun 2021 08:01:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqABl-002AOk-Np
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 08:00:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqABj-0000aE-W2; Mon, 07 Jun 2021 10:00:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqABj-000313-NL; Mon, 07 Jun 2021 10:00:47 +0200
Date: Mon, 7 Jun 2021 10:00:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210607080047.GG26174@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-19-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531073821.15257-19-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:55:17 up 109 days, 11:19, 115 users,  load average: 0.45, 0.42,
 0.53
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_010049_974871_933A65D2 
X-CRM114-Status: GOOD (  34.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 18/20] reset: add StarFive reset controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 09:38:19AM +0200, Ahmad Fatoum wrote:
> The StarFive SoC has a single reset controller, which seems to control
> reset of all clocks and peripherals. It differs from the ones supported
> by the Linux reset-simple driver in that it has a dedicated status
> registers that needs to be polled to verify the reset has completed.
> 
> Also special is that most resets (> 70) are synchronous. As the reset
> status poll would just time out without the clock, have the reset
> controller enable the clock as part of the reset. OS can decide later,
> which clocks to disable again.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/Kconfig.socs                       |   1 +
>  drivers/reset/Kconfig                         |   6 +
>  drivers/reset/Makefile                        |   1 +
>  drivers/reset/reset-starfive-vic.c            | 204 ++++++++++++++++++
>  .../reset-controller/starfive-jh7100.h        | 126 +++++++++++
>  include/soc/starfive/rstgen.h                 |  41 ++++
>  6 files changed, 379 insertions(+)
>  create mode 100644 drivers/reset/reset-starfive-vic.c
>  create mode 100644 include/dt-bindings/reset-controller/starfive-jh7100.h
>  create mode 100644 include/soc/starfive/rstgen.h
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 3e4cd3cdad59..d2b4a955d1c4 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -52,6 +52,7 @@ endif
>  config SOC_STARFIVE
>  	bool "StarFive SoCs"
>  	select CLINT_TIMER
> +	select ARCH_HAS_RESET_CONTROLLER
>  	help
>  	  This enables support for SiFive SoC platform hardware.
>  
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 316ece9e7176..9429f107bb67 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -27,4 +27,10 @@ config RESET_STM32
>  	help
>  	  This enables the reset controller driver for STM32MP and STM32 MCUs.
>  
> +config RESET_STARFIVE
> +	bool "StarFive Controller Driver" if COMPILE_TEST
> +	default SOC_STARFIVE
> +	help
> +	  This enables the reset controller driver for the StarFive JH7100.
> +
>  endif
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 8460c4b154f5..ce494baae58e 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -2,3 +2,4 @@ obj-$(CONFIG_RESET_CONTROLLER) += core.o
>  obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
>  obj-$(CONFIG_RESET_STM32) += reset-stm32.o
> +obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
> diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
> new file mode 100644
> index 000000000000..d6a8d0138ab2
> --- /dev/null
> +++ b/drivers/reset/reset-starfive-vic.c
> @@ -0,0 +1,204 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2021 Ahmad Fatoum, Pengutronix
> + *
> + * StarFive Reset Controller driver
> + */
> +#define pr_fmt(fmt) "reset-starfive: " fmt
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/reset-controller.h>
> +#include <soc/starfive/rstgen.h>
> +#include <dt-bindings/reset-controller/starfive-jh7100.h>
> +#include <dt-bindings/clock/starfive-jh7100.h>
> +
> +struct starfive_rstgen {
> +	void __iomem *base;
> +	struct reset_controller_dev rcdev;
> +	const struct starfive_rstgen_ops *ops;
> +	struct device_node *clknp;
> +	const int *sync_resets;
> +};
> +
> +static struct starfive_rstgen *to_starfive_rstgen(struct reset_controller_dev *rcdev)
> +{
> +	return container_of(rcdev, struct starfive_rstgen, rcdev);
> +}
> +
> +static const int jh7110_rstgen_sync_resets[RSTN_END] = {
> +	[RSTN_SGDMA2P_AHB]   = CLK_SGDMA2P_AHB,
> +	[RSTN_SGDMA2P_AXI]   = CLK_SGDMA2P_AXI,
> +	[RSTN_DMA2PNOC_AXI]  = CLK_DMA2PNOC_AXI,
> +	[RSTN_DLA_AXI]       = CLK_DLA_AXI,
> +	[RSTN_DLANOC_AXI]    = CLK_DLANOC_AXI,
> +	[RSTN_DLA_APB]       = CLK_DLA_APB,
> +	[RSTN_VDECBRG_MAIN]  = CLK_VDECBRG_MAIN,
> +	[RSTN_VDEC_AXI]      = CLK_VDEC_AXI,
> +	[RSTN_VDEC_BCLK]     = CLK_VDEC_BCLK,
> +	[RSTN_VDEC_CCLK]     = CLK_VDEC_CCLK,
> +	[RSTN_VDEC_APB]      = CLK_VDEC_APB,
> +	[RSTN_JPEG_AXI]      = CLK_JPEG_AXI,
> +	[RSTN_JPEG_CCLK]      = CLK_JPEG_CCLK,
> +	[RSTN_JPEG_APB]      = CLK_JPEG_APB,
> +	[RSTN_JPCGC300_MAIN] = CLK_JPCGC300_MAIN,
> +	[RSTN_GC300_2X]      = CLK_GC300_2X,
> +	[RSTN_GC300_AXI]     = CLK_GC300_AXI,
> +	[RSTN_GC300_AHB]     = CLK_GC300_AHB,
> +	[RSTN_VENC_AXI]      = CLK_VENC_AXI,
> +	[RSTN_VENCBRG_MAIN]  = CLK_VENCBRG_MAIN,
> +	[RSTN_VENC_BCLK]     = CLK_VENC_BCLK,
> +	[RSTN_VENC_CCLK]     = CLK_VENC_CCLK,
> +	[RSTN_VENC_APB]      = CLK_VENC_APB,
> +	[RSTN_DDRPHY_APB]    = CLK_DDRPHY_APB,
> +	[RSTN_USB_AXI]       = CLK_USB_AXI,
> +	[RSTN_SGDMA1P_AXI]   = CLK_SGDMA1P_AXI,
> +	[RSTN_DMA1P_AXI]     = CLK_DMA1P_AXI,
> +	[RSTN_NNE_AHB]       = CLK_NNE_AHB,
> +	[RSTN_NNE_AXI]       = CLK_NNE_AXI,
> +	[RSTN_NNENOC_AXI]    = CLK_NNENOC_AXI,
> +	[RSTN_DLASLV_AXI]    = CLK_DLASLV_AXI,
> +	[RSTN_VOUT_SRC]      = CLK_VOUT_SRC,
> +	[RSTN_DISP_AXI]      = CLK_DISP_AXI,
> +	[RSTN_DISPNOC_AXI]   = CLK_DISPNOC_AXI,
> +	[RSTN_SDIO0_AHB]     = CLK_SDIO0_AHB,
> +	[RSTN_SDIO1_AHB]     = CLK_SDIO1_AHB,
> +	[RSTN_GMAC_AHB]      = CLK_GMAC_AHB,
> +	[RSTN_SPI2AHB_AHB]   = CLK_SPI2AHB_AHB,
> +	[RSTN_SPI2AHB_CORE]  = CLK_SPI2AHB_CORE,
> +	[RSTN_EZMASTER_AHB]  = CLK_EZMASTER_AHB,
> +	[RSTN_SEC_AHB]       = CLK_SEC_AHB,
> +	[RSTN_AES]           = CLK_AES,
> +	[RSTN_PKA]           = CLK_PKA,
> +	[RSTN_SHA]           = CLK_SHA,
> +	[RSTN_TRNG_APB]      = CLK_TRNG_APB,
> +	[RSTN_OTP_APB]       = CLK_OTP_APB,
> +	[RSTN_UART0_APB]     = CLK_UART0_APB,
> +	[RSTN_UART0_CORE]    = CLK_UART0_CORE,
> +	[RSTN_UART1_APB]     = CLK_UART1_APB,
> +	[RSTN_UART1_CORE]    = CLK_UART1_CORE,
> +	[RSTN_SPI0_APB]      = CLK_SPI0_APB,
> +	[RSTN_SPI0_CORE]     = CLK_SPI0_CORE,
> +	[RSTN_SPI1_APB]      = CLK_SPI1_APB,
> +	[RSTN_SPI1_CORE]     = CLK_SPI1_CORE,
> +	[RSTN_I2C0_APB]      = CLK_I2C0_APB,
> +	[RSTN_I2C0_CORE]     = CLK_I2C0_CORE,
> +	[RSTN_I2C1_APB]      = CLK_I2C1_APB,
> +	[RSTN_I2C1_CORE]     = CLK_I2C1_CORE,
> +	[RSTN_GPIO_APB]      = CLK_GPIO_APB,
> +	[RSTN_UART2_APB]     = CLK_UART2_APB,
> +	[RSTN_UART2_CORE]    = CLK_UART2_CORE,
> +	[RSTN_UART3_APB]     = CLK_UART3_APB,
> +	[RSTN_UART3_CORE]    = CLK_UART3_CORE,
> +	[RSTN_SPI2_APB]      = CLK_SPI2_APB,
> +	[RSTN_SPI2_CORE]     = CLK_SPI2_CORE,
> +	[RSTN_SPI3_APB]      = CLK_SPI3_APB,
> +	[RSTN_SPI3_CORE]     = CLK_SPI3_CORE,
> +	[RSTN_I2C2_APB]      = CLK_I2C2_APB,
> +	[RSTN_I2C2_CORE]     = CLK_I2C2_CORE,
> +	[RSTN_I2C3_APB]      = CLK_I2C3_APB,
> +	[RSTN_I2C3_CORE]     = CLK_I2C3_CORE,
> +	[RSTN_WDTIMER_APB]   = CLK_WDTIMER_APB,
> +	[RSTN_WDT]           = CLK_WDT_CORE,
> +	[RSTN_VP6INTC_APB]   = CLK_VP6INTC_APB,
> +	[RSTN_TEMP_APB]      = CLK_TEMP_APB,
> +	[RSTN_TEMP_SENSE]    = CLK_TEMP_SENSE,
> +};
> +
> +static int starfive_reset_clk_enable(struct starfive_rstgen *priv, unsigned id)
> +{
> +	struct of_phandle_args clkspec = {
> +		.np = priv->clknp,
> +		.args_count = 1,
> +	};
> +
> +	if (!priv->sync_resets || !priv->sync_resets[id])
> +		return 0;
> +
> +	clkspec.args[0] = priv->sync_resets[id];
> +
> +	pr_debug("synchronous reset=%u clk=%u\n", id, priv->sync_resets[id]);
> +
> +	return clk_enable(of_clk_get_from_provider(&clkspec));

This clock is enabled twice per reset cycle and never disabled. It
should be balanced or enabled only once.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

