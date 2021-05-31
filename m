Delivery-date: Mon, 31 May 2021 09:40:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXY-0003CX-Pm
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:40:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXU-0000nw-U4
	for lore@pengutronix.de; Mon, 31 May 2021 09:40:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlPx/sFRoZJE1vk5MmInKpGw8yV7z0eoNvJKZn4WYiQ=; b=Epvi1Wh1faetOy
	DYyKvaE7wZ6V2bochAyF2kw1E8GpAk/YGNkN0i4o7Cvwh+/kem/wxywSRe/0J1Dly0wk5smvTn+7h
	Y2XwL3yFpDJA23To22eeVl14qRFdbcXAr/HzvnET7NS0cl74otU/mHxPeN05s+W3pea2c4WXDnxLn
	KVaH81XDt2keTUIM3sTgW3/x/HV0NcaYLaQyCiVRSZzPIPqz4+U6Xnw8U0EAig3hg4owHgFcRMPL3
	oMgnoaSWIr1XEkg90aYDLrTvBt5u/gzrUCqJ7GKQ8B+/fCHCamzpTUdbJzwRyrulzUCaqkzhVlGrd
	GGS2xAOmsKXNaZKordCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncW3-00BD4S-N7; Mon, 31 May 2021 07:39:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVF-00BCcr-Uy
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080T-Jp; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00046R-6H; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:19 +0200
Message-Id: <20210531073821.15257-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003826_353681_02A0265F 
X-CRM114-Status: GOOD (  22.64  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 18/20] reset: add StarFive reset controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The StarFive SoC has a single reset controller, which seems to control
reset of all clocks and peripherals. It differs from the ones supported
by the Linux reset-simple driver in that it has a dedicated status
registers that needs to be polled to verify the reset has completed.

Also special is that most resets (> 70) are synchronous. As the reset
status poll would just time out without the clock, have the reset
controller enable the clock as part of the reset. OS can decide later,
which clocks to disable again.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                       |   1 +
 drivers/reset/Kconfig                         |   6 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-starfive-vic.c            | 204 ++++++++++++++++++
 .../reset-controller/starfive-jh7100.h        | 126 +++++++++++
 include/soc/starfive/rstgen.h                 |  41 ++++
 6 files changed, 379 insertions(+)
 create mode 100644 drivers/reset/reset-starfive-vic.c
 create mode 100644 include/dt-bindings/reset-controller/starfive-jh7100.h
 create mode 100644 include/soc/starfive/rstgen.h

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 3e4cd3cdad59..d2b4a955d1c4 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -52,6 +52,7 @@ endif
 config SOC_STARFIVE
 	bool "StarFive SoCs"
 	select CLINT_TIMER
+	select ARCH_HAS_RESET_CONTROLLER
 	help
 	  This enables support for SiFive SoC platform hardware.
 
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 316ece9e7176..9429f107bb67 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -27,4 +27,10 @@ config RESET_STM32
 	help
 	  This enables the reset controller driver for STM32MP and STM32 MCUs.
 
+config RESET_STARFIVE
+	bool "StarFive Controller Driver" if COMPILE_TEST
+	default SOC_STARFIVE
+	help
+	  This enables the reset controller driver for the StarFive JH7100.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 8460c4b154f5..ce494baae58e 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_STM32) += reset-stm32.o
+obj-$(CONFIG_RESET_STARFIVE) += reset-starfive-vic.o
diff --git a/drivers/reset/reset-starfive-vic.c b/drivers/reset/reset-starfive-vic.c
new file mode 100644
index 000000000000..d6a8d0138ab2
--- /dev/null
+++ b/drivers/reset/reset-starfive-vic.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2021 Ahmad Fatoum, Pengutronix
+ *
+ * StarFive Reset Controller driver
+ */
+#define pr_fmt(fmt) "reset-starfive: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/reset-controller.h>
+#include <soc/starfive/rstgen.h>
+#include <dt-bindings/reset-controller/starfive-jh7100.h>
+#include <dt-bindings/clock/starfive-jh7100.h>
+
+struct starfive_rstgen {
+	void __iomem *base;
+	struct reset_controller_dev rcdev;
+	const struct starfive_rstgen_ops *ops;
+	struct device_node *clknp;
+	const int *sync_resets;
+};
+
+static struct starfive_rstgen *to_starfive_rstgen(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct starfive_rstgen, rcdev);
+}
+
+static const int jh7110_rstgen_sync_resets[RSTN_END] = {
+	[RSTN_SGDMA2P_AHB]   = CLK_SGDMA2P_AHB,
+	[RSTN_SGDMA2P_AXI]   = CLK_SGDMA2P_AXI,
+	[RSTN_DMA2PNOC_AXI]  = CLK_DMA2PNOC_AXI,
+	[RSTN_DLA_AXI]       = CLK_DLA_AXI,
+	[RSTN_DLANOC_AXI]    = CLK_DLANOC_AXI,
+	[RSTN_DLA_APB]       = CLK_DLA_APB,
+	[RSTN_VDECBRG_MAIN]  = CLK_VDECBRG_MAIN,
+	[RSTN_VDEC_AXI]      = CLK_VDEC_AXI,
+	[RSTN_VDEC_BCLK]     = CLK_VDEC_BCLK,
+	[RSTN_VDEC_CCLK]     = CLK_VDEC_CCLK,
+	[RSTN_VDEC_APB]      = CLK_VDEC_APB,
+	[RSTN_JPEG_AXI]      = CLK_JPEG_AXI,
+	[RSTN_JPEG_CCLK]      = CLK_JPEG_CCLK,
+	[RSTN_JPEG_APB]      = CLK_JPEG_APB,
+	[RSTN_JPCGC300_MAIN] = CLK_JPCGC300_MAIN,
+	[RSTN_GC300_2X]      = CLK_GC300_2X,
+	[RSTN_GC300_AXI]     = CLK_GC300_AXI,
+	[RSTN_GC300_AHB]     = CLK_GC300_AHB,
+	[RSTN_VENC_AXI]      = CLK_VENC_AXI,
+	[RSTN_VENCBRG_MAIN]  = CLK_VENCBRG_MAIN,
+	[RSTN_VENC_BCLK]     = CLK_VENC_BCLK,
+	[RSTN_VENC_CCLK]     = CLK_VENC_CCLK,
+	[RSTN_VENC_APB]      = CLK_VENC_APB,
+	[RSTN_DDRPHY_APB]    = CLK_DDRPHY_APB,
+	[RSTN_USB_AXI]       = CLK_USB_AXI,
+	[RSTN_SGDMA1P_AXI]   = CLK_SGDMA1P_AXI,
+	[RSTN_DMA1P_AXI]     = CLK_DMA1P_AXI,
+	[RSTN_NNE_AHB]       = CLK_NNE_AHB,
+	[RSTN_NNE_AXI]       = CLK_NNE_AXI,
+	[RSTN_NNENOC_AXI]    = CLK_NNENOC_AXI,
+	[RSTN_DLASLV_AXI]    = CLK_DLASLV_AXI,
+	[RSTN_VOUT_SRC]      = CLK_VOUT_SRC,
+	[RSTN_DISP_AXI]      = CLK_DISP_AXI,
+	[RSTN_DISPNOC_AXI]   = CLK_DISPNOC_AXI,
+	[RSTN_SDIO0_AHB]     = CLK_SDIO0_AHB,
+	[RSTN_SDIO1_AHB]     = CLK_SDIO1_AHB,
+	[RSTN_GMAC_AHB]      = CLK_GMAC_AHB,
+	[RSTN_SPI2AHB_AHB]   = CLK_SPI2AHB_AHB,
+	[RSTN_SPI2AHB_CORE]  = CLK_SPI2AHB_CORE,
+	[RSTN_EZMASTER_AHB]  = CLK_EZMASTER_AHB,
+	[RSTN_SEC_AHB]       = CLK_SEC_AHB,
+	[RSTN_AES]           = CLK_AES,
+	[RSTN_PKA]           = CLK_PKA,
+	[RSTN_SHA]           = CLK_SHA,
+	[RSTN_TRNG_APB]      = CLK_TRNG_APB,
+	[RSTN_OTP_APB]       = CLK_OTP_APB,
+	[RSTN_UART0_APB]     = CLK_UART0_APB,
+	[RSTN_UART0_CORE]    = CLK_UART0_CORE,
+	[RSTN_UART1_APB]     = CLK_UART1_APB,
+	[RSTN_UART1_CORE]    = CLK_UART1_CORE,
+	[RSTN_SPI0_APB]      = CLK_SPI0_APB,
+	[RSTN_SPI0_CORE]     = CLK_SPI0_CORE,
+	[RSTN_SPI1_APB]      = CLK_SPI1_APB,
+	[RSTN_SPI1_CORE]     = CLK_SPI1_CORE,
+	[RSTN_I2C0_APB]      = CLK_I2C0_APB,
+	[RSTN_I2C0_CORE]     = CLK_I2C0_CORE,
+	[RSTN_I2C1_APB]      = CLK_I2C1_APB,
+	[RSTN_I2C1_CORE]     = CLK_I2C1_CORE,
+	[RSTN_GPIO_APB]      = CLK_GPIO_APB,
+	[RSTN_UART2_APB]     = CLK_UART2_APB,
+	[RSTN_UART2_CORE]    = CLK_UART2_CORE,
+	[RSTN_UART3_APB]     = CLK_UART3_APB,
+	[RSTN_UART3_CORE]    = CLK_UART3_CORE,
+	[RSTN_SPI2_APB]      = CLK_SPI2_APB,
+	[RSTN_SPI2_CORE]     = CLK_SPI2_CORE,
+	[RSTN_SPI3_APB]      = CLK_SPI3_APB,
+	[RSTN_SPI3_CORE]     = CLK_SPI3_CORE,
+	[RSTN_I2C2_APB]      = CLK_I2C2_APB,
+	[RSTN_I2C2_CORE]     = CLK_I2C2_CORE,
+	[RSTN_I2C3_APB]      = CLK_I2C3_APB,
+	[RSTN_I2C3_CORE]     = CLK_I2C3_CORE,
+	[RSTN_WDTIMER_APB]   = CLK_WDTIMER_APB,
+	[RSTN_WDT]           = CLK_WDT_CORE,
+	[RSTN_VP6INTC_APB]   = CLK_VP6INTC_APB,
+	[RSTN_TEMP_APB]      = CLK_TEMP_APB,
+	[RSTN_TEMP_SENSE]    = CLK_TEMP_SENSE,
+};
+
+static int starfive_reset_clk_enable(struct starfive_rstgen *priv, unsigned id)
+{
+	struct of_phandle_args clkspec = {
+		.np = priv->clknp,
+		.args_count = 1,
+	};
+
+	if (!priv->sync_resets || !priv->sync_resets[id])
+		return 0;
+
+	clkspec.args[0] = priv->sync_resets[id];
+
+	pr_debug("synchronous reset=%u clk=%u\n", id, priv->sync_resets[id]);
+
+	return clk_enable(of_clk_get_from_provider(&clkspec));
+}
+
+static int starfive_rstgen(struct reset_controller_dev *rcdev, unsigned id, bool assert)
+{
+	struct starfive_rstgen *priv = to_starfive_rstgen(rcdev);
+	void __iomem *base = priv->base;
+
+	starfive_reset_clk_enable(priv, id);
+
+	__starfive_rstgen(base, id, assert);
+	return wait_on_timeout(NSEC_PER_MSEC, __starfive_rstgen_asserted(base, id) == assert);
+}
+
+static int starfive_rstgen_assert(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	return starfive_rstgen(rcdev, id, true);
+}
+
+static int starfive_rstgen_deassert(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	return starfive_rstgen(rcdev, id, false);
+}
+
+static int starfive_reset(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	int ret;
+
+	ret = starfive_rstgen_assert(rcdev, id);
+	if (ret)
+		return ret;
+
+	udelay(2);
+
+	return starfive_rstgen_deassert(rcdev, id);
+}
+
+static const struct reset_control_ops starfive_rstgen_ops = {
+	.assert		= starfive_rstgen_assert,
+	.deassert	= starfive_rstgen_deassert,
+	.reset		= starfive_reset,
+};
+
+static int starfive_rstgen_probe(struct device_d *dev)
+{
+	struct starfive_rstgen *priv;
+	struct resource *iores;
+
+	priv = xzalloc(sizeof(*priv));
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	if ((priv->sync_resets = device_get_match_data(dev))) {
+		priv->clknp = of_find_compatible_node(NULL, NULL, "starfive,jh7100-clkgen");
+		if (!priv->clknp)
+			return -ENODEV;
+	}
+
+	priv->base = IOMEM(iores->start);
+	priv->rcdev.nr_resets = RSTN_END;
+	priv->rcdev.ops = &starfive_rstgen_ops;
+	priv->rcdev.of_node = dev->device_node;
+
+	return reset_controller_register(&priv->rcdev);
+}
+
+static const struct of_device_id starfive_rstgen_reset_dt_ids[] = {
+	{ .compatible = "starfive,jh7100-rstgen", .data = jh7110_rstgen_sync_resets },
+	{ /* sentinel */ },
+};
+
+static struct driver_d starfive_rstgen_reset_driver = {
+	.name = "starfive_rstgen",
+	.probe = starfive_rstgen_probe,
+	.of_compatible = starfive_rstgen_reset_dt_ids,
+};
+core_platform_driver(starfive_rstgen_reset_driver);
diff --git a/include/dt-bindings/reset-controller/starfive-jh7100.h b/include/dt-bindings/reset-controller/starfive-jh7100.h
new file mode 100644
index 000000000000..390a528576b9
--- /dev/null
+++ b/include/dt-bindings/reset-controller/starfive-jh7100.h
@@ -0,0 +1,126 @@
+/* SPDX-License-Identifier: GPL-2.0 OR X11 */
+/*
+ * Copyright (c) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#ifndef _DT_BINDINGS_RESET_CONTROLLER_STARFIVE_JH7100
+#define _DT_BINDINGS_RESET_CONTROLLER_STARFIVE_JH7100
+
+#define RSTN_DOM3AHB_BUS	0
+#define RSTN_DOM7AHB_BUS	1
+#define RST_U74			2
+#define RSTN_U74_AXI		3
+#define RSTN_SGDMA2P_AHB	4
+#define RSTN_SGDMA2P_AXI	5
+#define RSTN_DMA2PNOC_AXI	6
+#define RSTN_DLA_AXI		7
+#define RSTN_DLANOC_AXI		8
+#define RSTN_DLA_APB		9
+#define RST_VP6_DRESET		10
+#define RST_VP6_BRESET		11
+#define RSTN_VP6_AXI		12
+#define RSTN_VDECBRG_MAIN	13
+#define RSTN_VDEC_AXI		14
+#define RSTN_VDEC_BCLK		15
+#define RSTN_VDEC_CCLK		16
+#define RSTN_VDEC_APB		17
+#define RSTN_JPEG_AXI		18
+#define RSTN_JPEG_CCLK		19
+#define RSTN_JPEG_APB		20
+#define RSTN_JPCGC300_MAIN	21
+#define RSTN_GC300_2X		22
+#define RSTN_GC300_AXI		23
+#define RSTN_GC300_AHB		24
+#define RSTN_VENC_AXI		25
+#define RSTN_VENCBRG_MAIN	26
+#define RSTN_VENC_BCLK		27
+#define RSTN_VENC_CCLK		28
+#define RSTN_VENC_APB		29
+#define RSTN_DDRPHY_APB		30
+#define RSTN_NOC_ROB		31
+#define RSTN_NOC_COG		32
+#define RSTN_HIFI4_AXI		33
+#define RSTN_HIFI4NOC_AXI	34
+#define RST_HIFI4_drESET	35
+#define RST_HIFI4_bRESET	36
+#define RSTN_USB_AXI		37
+#define RSTN_USBNOC_AXI		38
+#define RSTN_SGDMA1P_AXI	39
+#define RSTN_DMA1P_AXI		40
+#define RSTN_X2C_AXI		41
+#define RSTN_NNE_AHB		42
+#define RSTN_NNE_AXI		43
+#define RSTN_NNENOC_AXI		44
+#define RSTN_DLASLV_AXI		45
+#define RSTN_DSPX2C_AXI		46
+#define RSTN_VIN_SRC		47
+#define RSTN_ISPSLV_AXI		48
+#define RSTN_VIN_AXI		49
+#define RSTN_VINNOC_AXI		50
+#define RSTN_ISP0_AXI		51
+#define RSTN_ISP0NOC_AXI	52
+#define RSTN_ISP1_AXI		53
+#define RSTN_ISP1NOC_AXI	54
+#define RSTN_VOUT_SRC		55
+#define RSTN_DISP_AXI		56
+#define RSTN_DISPNOC_AXI	57
+#define RSTN_SDIO0_AHB		58
+#define RSTN_SDIO1_AHB		59
+#define RSTN_GMAC_AHB		60
+#define RSTN_SPI2AHB_AHB	61
+#define RSTN_SPI2AHB_CORE	62
+#define RSTN_EZMASTER_AHB	63
+#define RST_E24			64
+#define RSTN_QSPI_AHB		65
+#define RSTN_QSPI_CORE		66
+#define RSTN_QSPI_APB		67
+#define RSTN_SEC_AHB		68
+#define RSTN_AES		69
+#define RSTN_PKA		70
+#define RSTN_SHA		71
+#define RSTN_TRNG_APB		72
+#define RSTN_OTP_APB		73
+#define RSTN_UART0_APB		74
+#define RSTN_UART0_CORE		75
+#define RSTN_UART1_APB		76
+#define RSTN_UART1_CORE		77
+#define RSTN_SPI0_APB		78
+#define RSTN_SPI0_CORE		79
+#define RSTN_SPI1_APB		80
+#define RSTN_SPI1_CORE		81
+#define RSTN_I2C0_APB		82
+#define RSTN_I2C0_CORE		83
+#define RSTN_I2C1_APB		84
+#define RSTN_I2C1_CORE		85
+#define RSTN_GPIO_APB		86
+#define RSTN_UART2_APB		87
+#define RSTN_UART2_CORE		88
+#define RSTN_UART3_APB		89
+#define RSTN_UART3_CORE		90
+#define RSTN_SPI2_APB		91
+#define RSTN_SPI2_CORE		92
+#define RSTN_SPI3_APB		93
+#define RSTN_SPI3_CORE		94
+#define RSTN_I2C2_APB		95
+#define RSTN_I2C2_CORE		96
+#define RSTN_I2C3_APB		97
+#define RSTN_I2C3_CORE		98
+#define RSTN_WDTIMER_APB	99
+#define RSTN_WDT		100
+#define RSTN_TIMER0		101
+#define RSTN_TIMER1		102
+#define RSTN_TIMER2		103
+#define RSTN_TIMER3		104
+#define RSTN_TIMER4		105
+#define RSTN_TIMER5		106
+#define RSTN_TIMER6		107
+#define RSTN_VP6INTC_APB	108
+#define RSTN_PWM_APB		109
+#define RSTN_MSI_APB		110
+#define RSTN_TEMP_APB		111
+#define RSTN_TEMP_SENSE		112
+#define RSTN_SYSERR_APB		113
+
+#define RSTN_END		114
+
+#endif
diff --git a/include/soc/starfive/rstgen.h b/include/soc/starfive/rstgen.h
new file mode 100644
index 000000000000..7a674aabe9f2
--- /dev/null
+++ b/include/soc/starfive/rstgen.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __SOC_STARFIVE_RSTGEN_H_
+#define __SOC_STARFIVE_RSTGEN_H_
+
+#include <dt-bindings/reset-controller/starfive-jh7100.h>
+#include <linux/bitops.h>
+#include <linux/types.h>
+
+#define STARFIVE_RSTGEN_STATUS	0x10
+
+static inline void __iomem *starfive_rstgen_bank(void __iomem *base, unsigned long *id)
+{
+	void __iomem *bank = base + *id / (4 * BITS_PER_BYTE) * 4;
+	*id %= 4 * BITS_PER_BYTE;
+	return bank;
+}
+
+static inline void __starfive_rstgen(void __iomem *base, unsigned long id, bool assert)
+{
+	void __iomem *bank = starfive_rstgen_bank(base, &id);
+	u32 val;
+
+	val = readl(bank);
+
+	if (assert)
+		val |= BIT(id);
+	else
+		val &= ~BIT(id);
+
+	writel(val, bank);
+}
+
+static bool __starfive_rstgen_asserted(void __iomem *base, unsigned long id)
+{
+	void __iomem *bank = starfive_rstgen_bank(base, &id);
+
+	return !(readl(bank + STARFIVE_RSTGEN_STATUS) & BIT(id));
+}
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

