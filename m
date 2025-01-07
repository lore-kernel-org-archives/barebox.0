Delivery-date: Tue, 07 Jan 2025 16:52:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsV-000NJN-35
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:52:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBsQ-0007SJ-NL
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:52:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gwMhyC2CV6RGKKDMuffeKFZTzq0jeDPp61k0X90Tkdw=; b=r2Q3WEbsZCn3SJfgcoMN/OOiGM
	7qYPc1/RNYnSzYhU/VmtDXOFL3xSetbdKI4Q/UBXzy3mflnzOUKqU1W7+k31w9MLctoMC1vP87A+6
	7M4z7lB0nZenMU94hqWKg4fj1nN6pJQODn+yPWr8SZ4zZxJIoChU80rwcIj70p/ul3xOnQT2BFsha
	/F2QyVRqwTtP9ffE+GB3cfZ4sn/nh+yq5GjAQstTvr3YxoQJGmSX2FoprcPLQMQ51c7YYHoNAvPaU
	+KoVxOUStT/Flg/dIpzOq7IZA2zMK+As5vuayDt6b6VwIqHrY49HWjDVuQ+h9YbOZEtru22kgm6Aq
	mAKDEyIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBs9-00000005Vj8-1NmU;
	Tue, 07 Jan 2025 15:52:01 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVAiR-00000005FG6-3ude
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 14:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1736260669;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gwMhyC2CV6RGKKDMuffeKFZTzq0jeDPp61k0X90Tkdw=;
	b=EZmez45sIrDcrIdfnyoWe2Qiy50lINj8SgIBiHubzRmSeKa0ai8mEjJQwuukNdDTxRnh8Q
	qYCFIKlJfUPEbNjb4iESuoBH9UehC0aIndTUSJ9qULpc7uMc+vCqtZrQz/B6DulizhwvJz
	o67tN2dG2jtVyLrPWDCd4DWCsiNX0pd7XsUgjhHMRjJ0ZVOWVdFJqaQQW+p221Wm1Kscvi
	gMimOtpful0ou7t8XOAL8feNZjKNBPV5un5Xm/4BVrw28Zc1V2dchbVwBuIuoyret7EfZ1
	l/QNo8IVnimndb0wwOKATicVYRVYkQYxkbup+zBA+KQx3Yp6Nu+UwEXbsAigrA==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:cfea:c4a:f4aa:bbd])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 110d6702 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 7 Jan 2025 15:37:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue,  7 Jan 2025 15:37:36 +0100
Message-ID: <20250107143740.16903-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250107143740.16903-1-jmaselbas@zdiv.net>
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_063756_274888_E1EFCA81 
X-CRM114-Status: GOOD (  24.53  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] clk: Add clock driver for sun50i-a64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adds a "one-size fit all" clock driver to be used for complex
"composite" clock, composed of: a gate, a mux and severals dividers.
This clk driver could be used to make SoC specific drivers easier
to port from linux sources, but this is not the case yet.

The pll-cpux is set to 816MHz and pll-periph0-2x is set to 1.2GHz.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
v1->v2:
 - adds a new "one-size fit all" clock driver

 drivers/clk/Makefile               |   1 +
 drivers/clk/sunxi/Makefile         |   3 +
 drivers/clk/sunxi/clk-sun50i-a64.c | 295 ++++++++++++++++++++++++
 drivers/clk/sunxi/clk-sun50i-a64.h |  62 +++++
 drivers/clk/sunxi/clk-sunxi.c      | 348 +++++++++++++++++++++++++++++
 drivers/clk/sunxi/clk-sunxi.h      |  79 +++++++
 6 files changed, 788 insertions(+)
 create mode 100644 drivers/clk/sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
 create mode 100644 drivers/clk/sunxi/clk-sunxi.c
 create mode 100644 drivers/clk/sunxi/clk-sunxi.h

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 764539e91e..7d459c298e 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -31,3 +31,4 @@ obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
 obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
+obj-$(CONFIG_ARCH_SUNXI)	+= sunxi/
diff --git a/drivers/clk/sunxi/Makefile b/drivers/clk/sunxi/Makefile
new file mode 100644
index 0000000000..1c2214a2bc
--- /dev/null
+++ b/drivers/clk/sunxi/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += clk-sunxi.o
+obj-$(CONFIG_ARCH_SUN50I_A64) += clk-sun50i-a64.o
diff --git a/drivers/clk/sunxi/clk-sun50i-a64.c b/drivers/clk/sunxi/clk-sun50i-a64.c
new file mode 100644
index 0000000000..962f3fe671
--- /dev/null
+++ b/drivers/clk/sunxi/clk-sun50i-a64.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2022 Jules Maselbas
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <linux/clkdev.h>
+#include <linux/err.h>
+
+#include "clk-sunxi.h"
+
+#define MHZ (1000UL * 1000UL)
+
+#include "clk-sun50i-a64.h"
+
+#define CCU_PLL_CPUX		0x00
+#define CCU_PLL_PERIPH0		0x28
+#define CCU_CPUX_AXI_CFG	0x50
+
+static struct clk *clks[CLK_NUMBER];
+static struct clk_onecell_data clk_data = {
+	.clks = clks,
+	.clk_num = ARRAY_SIZE(clks),
+};
+
+static struct clk_div_table div_apb1[] = {
+	{ .val = 0, .div = 2 },
+	{ .val = 1, .div = 2 },
+	{ .val = 2, .div = 4 },
+	{ .val = 3, .div = 8 },
+	{ /* Sentinel */ },
+};
+
+static const char *sel_cpux[] = {
+	"osc32k",
+	"osc24M",
+	"pll-cpux",
+};
+
+static const char *sel_ahb1[] = {
+	"osc32k",
+	"osc24M",
+	"axi",
+	"pll-periph0",
+};
+
+static const char *sel_apb2[] = {
+	"osc32k",
+	"osc24M",
+	"pll-periph0-2x",
+	"pll-periph0-2x",
+};
+
+static const char *sel_ahb2[] = {
+	"ahb1",
+	"pll-periph0",
+};
+
+static const char *sel_mmc[] = {
+	"osc24M",
+	"pll-periph0-2x",
+	"pll-periph1-2x",
+};
+
+static void sun50i_a64_resets_init(void __iomem *regs)
+{
+	u32 rst;
+
+	rst = 0 |
+		/* RST_USB_PHY0 */ BIT(0) |
+		/* RST_USB_PHY1 */ BIT(1) |
+		/* RST_USB_HSIC */ BIT(2);
+	writel(rst, regs + 0x0cc);
+
+	rst = 0 |
+		/* RST_BUS_MIPI_DSI */ BIT(1) |
+		/* RST_BUS_CE   */ BIT(5) |
+		/* RST_BUS_DMA  */ BIT(6) |
+		/* RST_BUS_MMC0 */ BIT(8) |
+		/* RST_BUS_MMC1 */ BIT(9) |
+		/* RST_BUS_MMC2 */ BIT(10) |
+		/* RST_BUS_NAND */ BIT(13) |
+		/* RST_BUS_DRAM */ BIT(14) |
+		/* RST_BUS_EMAC */ BIT(17) |
+		/* RST_BUS_TS   */ BIT(18) |
+		/* RST_BUS_HSTIMER */ BIT(19) |
+		/* RST_BUS_SPI0  */ BIT(20) |
+		/* RST_BUS_SPI1  */ BIT(21) |
+		/* RST_BUS_OTG   */ BIT(23) |
+		/* RST_BUS_EHCI0 */ BIT(24) |
+		/* RST_BUS_EHCI1 */ BIT(25) |
+		/* RST_BUS_OHCI0 */ BIT(28) |
+		/* RST_BUS_OHCI1 */ BIT(29);
+	writel(rst, regs + 0x2c0);
+
+	rst = 0 |
+		/* RST_BUS_VE    */ BIT(0) |
+		/* RST_BUS_TCON0 */ BIT(3) |
+		/* RST_BUS_TCON1 */ BIT(4) |
+		/* RST_BUS_DEINTERLACE */ BIT(5) |
+		/* RST_BUS_CSI   */ BIT(8) |
+		/* RST_BUS_HDMI0 */ BIT(10) |
+		/* RST_BUS_HDMI1 */ BIT(11) |
+		/* RST_BUS_DE    */ BIT(12) |
+		/* RST_BUS_GPU   */ BIT(20) |
+		/* RST_BUS_MSGBOX   */ BIT(21) |
+		/* RST_BUS_SPINLOCK */ BIT(22) |
+		/* RST_BUS_DBG */ BIT(31);
+	writel(rst, regs + 0x2c4);
+
+	rst = /* RST_BUS_LVDS */ BIT(0);
+	writel(rst, regs + 0x2c8);
+
+	rst = 0 |
+		/* RST_BUS_CODEC */ BIT(0) |
+		/* RST_BUS_SPDIF */ BIT(1) |
+		/* RST_BUS_THS   */ BIT(8) |
+		/* RST_BUS_I2S0  */ BIT(12) |
+		/* RST_BUS_I2S1  */ BIT(13) |
+		/* RST_BUS_I2S2  */ BIT(14);
+	writel(rst, regs + 0x2d0);
+
+	rst = 0 |
+		/* RST_BUS_I2C0 */ BIT(0) |
+		/* RST_BUS_I2C1 */ BIT(1) |
+		/* RST_BUS_I2C2 */ BIT(2) |
+		/* RST_BUS_SCR  */ BIT(5) |
+		/* RST_BUS_UART0 */ BIT(16) |
+		/* RST_BUS_UART1 */ BIT(17) |
+		/* RST_BUS_UART2 */ BIT(18) |
+		/* RST_BUS_UART3 */ BIT(19) |
+		/* RST_BUS_UART4 */ BIT(20);
+	writel(rst, regs + 0x2d8);
+}
+
+static inline void sunxi_clk_set_pll(void __iomem *reg, u32 src, u32 freq)
+{
+	/* NOTE: using u32, max freq is 4GHz
+	 * out freq: src * N * K
+	 * factor N: [1->32]
+	 * factor K: [1->4]
+	 * from the manual: give priority to the choice of K >= 2
+	 */
+	u32 mul = freq / src; /* target multiplier (N * K) */
+	u32 k, n;
+	u32 cfg = BIT(31); /* ENABLE */
+
+	for (k = 4; k > 1; k--) {
+		if ((mul % k) == 0)
+			break;
+	}
+	n = mul / k;
+
+	cfg |= (k - 1) << 4;
+	cfg |= (n - 1) << 8;
+
+	writel(cfg, reg);
+
+	/* wait for pll lock */
+	while (!(readl(reg) & BIT(28)));
+}
+
+static void sun50i_a64_clocks_init(void __iomem *regs)
+{
+	/* switch cpu clock source to osc-24M */
+	writel(0x10000, regs + CCU_CPUX_AXI_CFG);
+	/* wait 8 cycles */
+	nop_delay(8);
+	/* set pll-cpux to 816MHz */
+	sunxi_clk_set_pll(regs + CCU_PLL_CPUX, 24 * MHZ, 816 * MHZ);
+	nop_delay(10000); /* HACK: ~1ms delay  */
+	/* switch cpu clock source to pll-cpux*/
+	writel( /* clk_src: 1=24Mhz 2=pll-cpux */ (2 << 16) |
+		/* apb_div: /2 */ (1 << 8) |
+		/* axi_div: /2 */ (1 << 0),
+		regs + CCU_CPUX_AXI_CFG);
+	/* wait 8 cycles */
+	nop_delay(8);
+
+	clks[CLK_PLL_CPUX] = clk_fixed("pll-cpux", 816 * MHZ);
+	clks[CLK_CPUX] = sunxi_clk_mux("cpux", sel_cpux, ARRAY_SIZE(sel_cpux), regs + CCU_CPUX_AXI_CFG, 16, 2);
+
+	/* set pll-periph0-2x to 1.2GHz, as recommended */
+	sunxi_clk_set_pll(regs + CCU_PLL_PERIPH0, 24 * MHZ, 1200 * MHZ);
+
+	clks[CLK_PLL_PERIPH0_2X] = clk_fixed("pll-periph0-2x", 1200 * MHZ);
+	clks[CLK_PLL_PERIPH0]    = clk_fixed_factor("pll-periph0", "pll-periph0-2x", 1, 2, 0);
+
+	clks[CLK_AXI] = sunxi_clk_div("axi", "cpux", regs + CCU_CPUX_AXI_CFG, 0, 2);
+
+	clks[CLK_AHB1] = sunxi_clk_mux("ahb1", sel_ahb1, ARRAY_SIZE(sel_ahb1), regs + 0x054, 12, 2);
+	clks[CLK_AHB2] = sunxi_clk_mux("ahb2", sel_ahb2, ARRAY_SIZE(sel_ahb2), regs + 0x05c, 0, 1);
+
+	clks[CLK_APB1] = sunxi_clk_div_table("apb1", "ahb1", div_apb1, regs + 0x054, 8, 2);
+	clks[CLK_APB2] = sunxi_clk_mux("apb2", sel_apb2, ARRAY_SIZE(sel_apb2), regs + 0x058, 24, 2);
+
+	clks[CLK_BUS_MIPI_DSI] = sunxi_clk_gate("bus-mipi-dsi", "ahb1", regs + 0x060, 1);
+	clks[CLK_BUS_CE]    = sunxi_clk_gate("bus-ce",    "ahb1", regs + 0x060, 5);
+	clks[CLK_BUS_DMA]   = sunxi_clk_gate("bus-dma",   "ahb1", regs + 0x060, 6);
+	clks[CLK_BUS_MMC0]  = sunxi_clk_gate("bus-mmc0",  "ahb1", regs + 0x060, 8);
+	clks[CLK_BUS_MMC1]  = sunxi_clk_gate("bus-mmc1",  "ahb1", regs + 0x060, 9);
+	clks[CLK_BUS_MMC2]  = sunxi_clk_gate("bus-mmc2",  "ahb1", regs + 0x060, 10);
+	clks[CLK_BUS_NAND]  = sunxi_clk_gate("bus-nand",  "ahb1", regs + 0x060, 13);
+	clks[CLK_BUS_DRAM]  = sunxi_clk_gate("bus-dram",  "ahb1", regs + 0x060, 14);
+	clks[CLK_BUS_EMAC]  = sunxi_clk_gate("bus-emac",  "ahb2", regs + 0x060, 17);
+	clks[CLK_BUS_TS]    = sunxi_clk_gate("bus-ts",    "ahb1", regs + 0x060, 18);
+	clks[CLK_BUS_HSTIMER] = sunxi_clk_gate("bus-hstimer", "ahb1", regs + 0x060, 19);
+	clks[CLK_BUS_SPI0]  = sunxi_clk_gate("bus-spi0",  "ahb1", regs + 0x060,  20);
+	clks[CLK_BUS_SPI1]  = sunxi_clk_gate("bus-spi1",  "ahb1", regs + 0x060,  21);
+	clks[CLK_BUS_OTG]   = sunxi_clk_gate("bus-otg",   "ahb1", regs + 0x060,  23);
+	clks[CLK_BUS_EHCI0] = sunxi_clk_gate("bus-ehci0", "ahb1", regs + 0x060, 24);
+	clks[CLK_BUS_EHCI1] = sunxi_clk_gate("bus-ehci1", "ahb2", regs + 0x060, 25);
+	clks[CLK_BUS_OHCI0] = sunxi_clk_gate("bus-ohci0", "ahb1", regs + 0x060, 28);
+	clks[CLK_BUS_OHCI1] = sunxi_clk_gate("bus-ohci1", "ahb2", regs + 0x060, 29);
+
+	clks[CLK_BUS_CODEC] = sunxi_clk_gate("bus-codec", "apb1", regs + 0x068, 0);
+	clks[CLK_BUS_SPDIF] = sunxi_clk_gate("bus-spdif", "apb1", regs + 0x068, 1);
+	clks[CLK_BUS_PIO]   = sunxi_clk_gate("bus-pio",   "apb1", regs + 0x068, 5);
+	clks[CLK_BUS_THS]   = sunxi_clk_gate("bus-ths",   "apb1", regs + 0x068, 8);
+	clks[CLK_BUS_I2S0]  = sunxi_clk_gate("bus-i2s0",  "apb1", regs + 0x068, 12);
+	clks[CLK_BUS_I2S1]  = sunxi_clk_gate("bus-i2s1",  "apb1", regs + 0x068, 13);
+	clks[CLK_BUS_I2S2]  = sunxi_clk_gate("bus-i2s2",  "apb1", regs + 0x068, 14);
+
+	clks[CLK_BUS_UART0] = sunxi_clk_gate("bus-uart0", "apb2", regs + 0x06c, 16);
+	clks[CLK_BUS_UART1] = sunxi_clk_gate("bus-uart1", "apb2", regs + 0x06c, 17);
+	clks[CLK_BUS_UART2] = sunxi_clk_gate("bus-uart2", "apb2", regs + 0x06c, 18);
+	clks[CLK_BUS_UART3] = sunxi_clk_gate("bus-uart3", "apb2", regs + 0x06c, 19);
+	clks[CLK_BUS_UART4] = sunxi_clk_gate("bus-uart4", "apb2", regs + 0x06c, 20);
+
+	clks[CLK_MMC0] = sunxi_ccu_clk(
+		"mmc0", sel_mmc, ARRAY_SIZE(sel_mmc),
+		regs, 0x088,
+		(struct ccu_clk_mux) { .shift = 24, .width = 2 },
+		(const struct ccu_clk_div[4]) {
+			{ .type = CCU_CLK_DIV_P,     .shift = 16, .width = 2, .off = 0 },
+			{ .type = CCU_CLK_DIV_M,     .shift =  0, .width = 4, .off = 0 },
+			{ .type = CCU_CLK_DIV_FIXED, .shift =  0, .width = 0, .off = 2 },
+		},
+		3,
+		BIT(31),
+		0);
+
+	clks[CLK_MMC1] = sunxi_ccu_clk(
+		"mmc1", sel_mmc, ARRAY_SIZE(sel_mmc),
+		regs, 0x08c,
+		(struct ccu_clk_mux) { .shift = 24, .width = 2 },
+		(const struct ccu_clk_div[4]) {
+			{ .type = CCU_CLK_DIV_P,     .shift = 16, .width = 2, .off = 0 },
+			{ .type = CCU_CLK_DIV_M,     .shift =  0, .width = 4, .off = 0 },
+			{ .type = CCU_CLK_DIV_FIXED, .shift =  0, .width = 0, .off = 2 },
+		},
+		3,
+		BIT(31),
+		0);
+
+	clks[CLK_MMC2] = sunxi_ccu_clk(
+		"mmc2", sel_mmc, ARRAY_SIZE(sel_mmc),
+		regs, 0x090,
+		(struct ccu_clk_mux) { .shift = 24, .width = 2 },
+		(const struct ccu_clk_div[4]) {
+			{ .type = CCU_CLK_DIV_P,     .shift = 16, .width = 2, .off = 0 },
+			{ .type = CCU_CLK_DIV_M,     .shift =  0, .width = 4, .off = 0 },
+			{ .type = CCU_CLK_DIV_FIXED, .shift =  0, .width = 0, .off = 2 },
+		},
+		3,
+		BIT(31),
+		0);
+}
+
+static int sun50i_a64_ccu_probe(struct device *dev)
+{
+	struct resource *iores;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	sun50i_a64_resets_init(IOMEM(iores->start));
+	sun50i_a64_clocks_init(IOMEM(iores->start));
+
+	return of_clk_add_provider(dev->of_node, of_clk_src_onecell_get, &clk_data);
+}
+
+static __maybe_unused struct of_device_id sun50i_a64_ccu_dt_ids[] = {
+	{ .compatible = "allwinner,sun50i-a64-ccu" },
+	{ }
+};
+
+static struct driver sun50i_a64_ccu_driver = {
+	.probe	= sun50i_a64_ccu_probe,
+	.name	= "sun50i-a64-ccu",
+	.of_compatible = DRV_OF_COMPAT(sun50i_a64_ccu_dt_ids),
+};
+core_platform_driver(sun50i_a64_ccu_driver);
diff --git a/drivers/clk/sunxi/clk-sun50i-a64.h b/drivers/clk/sunxi/clk-sun50i-a64.h
new file mode 100644
index 0000000000..a4ddc39eb8
--- /dev/null
+++ b/drivers/clk/sunxi/clk-sun50i-a64.h
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright 2016 Maxime Ripard
+ *
+ * Maxime Ripard <maxime.ripard@free-electrons.com>
+ */
+
+#include <dt-bindings/clock/sun50i-a64-ccu.h>
+
+#ifndef _CLK_SUN50I_A64_H_
+#define _CLK_SUN50I_A64_H_
+
+#include <dt-bindings/clock/sun50i-a64-ccu.h>
+#include <dt-bindings/reset/sun50i-a64-ccu.h>
+
+#define CLK_OSC_12M			0
+#define CLK_PLL_CPUX			1
+#define CLK_PLL_AUDIO_BASE		2
+#define CLK_PLL_AUDIO			3
+#define CLK_PLL_AUDIO_2X		4
+#define CLK_PLL_AUDIO_4X		5
+#define CLK_PLL_AUDIO_8X		6
+
+/* PLL_VIDEO0 exported for HDMI PHY */
+
+#define CLK_PLL_VIDEO0_2X		8
+#define CLK_PLL_VE			9
+#define CLK_PLL_DDR0			10
+
+/* PLL_PERIPH0 exported for PRCM */
+
+#define CLK_PLL_PERIPH0_2X		12
+#define CLK_PLL_PERIPH1			13
+#define CLK_PLL_PERIPH1_2X		14
+#define CLK_PLL_VIDEO1			15
+#define CLK_PLL_GPU			16
+#define CLK_PLL_MIPI			17
+#define CLK_PLL_HSIC			18
+#define CLK_PLL_DE			19
+#define CLK_PLL_DDR1			20
+#define CLK_AXI				22
+#define CLK_APB				23
+#define CLK_AHB1			24
+#define CLK_APB1			25
+#define CLK_APB2			26
+#define CLK_AHB2			27
+
+/* All the bus gates are exported */
+
+/* The first bunch of module clocks are exported */
+
+#define CLK_USB_OHCI0_12M		90
+
+#define CLK_USB_OHCI1_12M		92
+
+/* All the DRAM gates are exported */
+
+/* And the DSI and GPU module clock is exported */
+
+#define CLK_NUMBER			(CLK_GPU + 1)
+
+#endif /* _CLK_SUN50I_A64_H_ */
diff --git a/drivers/clk/sunxi/clk-sunxi.c b/drivers/clk/sunxi/clk-sunxi.c
new file mode 100644
index 0000000000..ae96d1939e
--- /dev/null
+++ b/drivers/clk/sunxi/clk-sunxi.c
@@ -0,0 +1,348 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2024 Jules Maselbas
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include "clk-sunxi.h"
+
+/* clk_hw to ccu_clk */
+#define to_ccu_clk(_hw) container_of(_hw, struct ccu_clk, hw)
+
+static void ccu_clk_gate(struct ccu_clk *clk, int enable)
+{
+	u32 val, old;
+
+	if (!clk->gate)
+		return;
+
+	old = val = readl(clk->base + clk->reg);
+	if (enable)
+		val |= clk->gate;
+	else
+		val &= ~clk->gate;
+	writel(val, clk->base + clk->reg);
+}
+
+static int ccu_clk_enable(struct clk_hw *hw)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+
+	ccu_clk_gate(clk, 1);
+
+	return 0;
+}
+
+static void ccu_clk_disable(struct clk_hw *hw)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+
+	ccu_clk_gate(clk, 0);
+}
+
+static int ccu_clk_is_enabled(struct clk_hw *hw)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+
+	if (clk->gate)
+		return readl(clk->base + clk->reg) & clk->gate;
+
+	return 1;
+}
+
+static int ccu_clk_get_parent(struct clk_hw *hw)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+	u32 reg, val;
+
+	if (!clk->mux.width)
+		return 0;
+
+	reg = readl(clk->base + clk->reg);
+	val = reg >> clk->mux.shift;
+	val &= (1 << clk->mux.width) - 1;
+
+	return clk_mux_val_to_index(hw, (u32 *)clk->mux.table, 0, val);
+}
+
+static int ccu_clk_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+	u32 reg, val;
+
+	if (!clk->mux.width)
+		return 0;
+
+	/* index to val */
+	val = clk->mux.table ? clk->mux.table[index] : index;
+
+	reg = readl(clk->base + clk->reg);
+	reg &= ~(((1 << clk->mux.width) - 1) << clk->mux.shift);
+	reg |= val << clk->mux.shift;
+
+	writel(reg, clk->base + clk->reg);
+
+	return 0;
+}
+
+static u32 ccu_clk_get_div(struct ccu_clk_div *div, u32 val)
+{
+	u32 d;
+
+	switch (div->type) {
+	case CCU_CLK_DIV_FIXED:
+		d = div->off;
+		break;
+	case CCU_CLK_DIV_M:
+		d = val + 1 + div->off;
+		break;
+	case CCU_CLK_DIV_P:
+		d = (1 << val) + div->off;
+		break;
+	default:
+		d = 1;
+		break;
+	}
+
+	return d;
+}
+
+static u32 ccu_clk_min_div(struct ccu_clk *clk)
+{
+	u32 d = 1;
+	size_t i;
+
+	for (i = 0; i < 4; i++)
+		d *= ccu_clk_get_div(&clk->div[i], 0);
+
+	return d;
+}
+
+static u32 ccu_clk_max_div(struct ccu_clk *clk)
+{
+	u32 d = 1;
+	size_t i;
+
+	for (i = 0; i < 4; i++)
+		d *= ccu_clk_get_div(&clk->div[i], (1 << clk->div[i].width) - 1);
+
+	return d;
+}
+
+static unsigned long ccu_clk_find_best_div(struct ccu_clk *clk,
+				       unsigned long rate, unsigned long prate,
+				       u32 best_div[4])
+{
+	unsigned long r, best_rate = 0;
+	u32 i0, i1, i2, i3;
+	u32 m0, m1, m2, m3;
+	u32 d0, d1, d2, d3;
+
+	m0 = (1 << clk->div[0].width);
+	m1 = (1 << clk->div[1].width);
+	m2 = (1 << clk->div[2].width);
+	m3 = (1 << clk->div[3].width);
+
+	for (i3 = 0; i3 < m3; i3++) {
+		d3 = ccu_clk_get_div(&clk->div[3], i3);
+		for (i2 = 0; i2 < m2; i2++) {
+			d2 = d3 * ccu_clk_get_div(&clk->div[2], i2);
+			for (i1 = 0; i1 < m1; i1++) {
+				d1 = d2 * ccu_clk_get_div(&clk->div[1], i1);
+				for (i0 = 0; i0  < m0; i0++) {
+					d0 = d1 * ccu_clk_get_div(&clk->div[0], i0);
+					r = prate / d0;
+					if (r > rate)
+						continue;
+					if ((rate - r) < (rate - best_rate)) {
+						best_rate = r;
+						if (best_div) {
+							best_div[0] = i0;
+							best_div[1] = i1;
+							best_div[2] = i2;
+							best_div[3] = i3;
+						}
+					}
+				}
+			}
+		}
+	}
+
+	return best_rate;
+}
+
+static struct clk *clk_get_parent_index(struct clk *clk, int num)
+{
+	if (num >= clk->num_parents)
+		return NULL;
+
+	if (clk->parents[num])
+		return clk->parents[num];
+
+	clk->parents[num] = clk_lookup(clk->parent_names[num]);
+
+	return clk->parents[num];
+}
+
+static unsigned long ccu_clk_find_best_parent(struct ccu_clk *clk, unsigned long rate, int *idx)
+{
+	u32 min_div, max_div;
+	unsigned long min_rate, max_rate;
+	size_t i;
+
+	min_div = ccu_clk_min_div(clk);
+	max_div = ccu_clk_max_div(clk);
+
+	min_rate = rate * min_div;
+	max_rate = rate * max_div;
+
+	for (i = 0; i < clk->hw.clk.num_parents; i++) {
+		struct clk *parent = clk_get_parent_index(&clk->hw.clk, i);
+		unsigned long pr;
+
+		if (IS_ERR_OR_NULL(parent))
+			continue;
+
+		pr = clk_get_rate(parent);
+		if (min_rate <= pr && pr <= max_rate) {
+			if (idx)
+				*idx = i;
+			return pr;
+		}
+	}
+
+	return 0;
+}
+
+static int ccu_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long prate)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+	unsigned long rrate;
+	size_t i;
+	u32 dval[4] = {};
+	u32 reg, val, msk;
+	int idx;
+
+	prate = ccu_clk_find_best_parent(clk, rate, &idx);
+	ccu_clk_set_parent(hw, idx);
+
+	rrate = ccu_clk_find_best_div(clk, rate, prate, dval);
+	val = 0;
+	msk = 0;
+	for (i = 0; i < 4; i++) {
+		val |= dval[i] << clk->div[i].shift;
+		msk |= ((1 << clk->div[i].width) - 1) << clk->div[i].shift;
+	}
+
+	reg = readl(clk->base + clk->reg);
+	reg &= ~msk;
+	reg |= val & msk;
+	writel(reg, clk->base + clk->reg);
+
+	return 0;
+}
+
+static long ccu_clk_round_rate(struct clk_hw *hw, unsigned long rate,
+			unsigned long *prate)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+
+	if (clk->mux.width)
+		*prate = ccu_clk_find_best_parent(clk, rate, NULL);
+
+	return ccu_clk_find_best_div(clk, rate, *prate, NULL);
+}
+
+static unsigned long ccu_clk_recalc_rate(struct clk_hw *hw,
+					unsigned long prate)
+{
+	struct ccu_clk *clk = to_ccu_clk(hw);
+	unsigned long rate = prate;
+	size_t i;
+	u32 reg, val, div;
+
+	div = 1;
+	reg = readl(clk->base + clk->reg);
+	for (i = 0; i < clk->num_div; i++) {
+		val = reg >> clk->div[i].shift;
+		val &= (1 << clk->div[i].width) - 1;
+		div *= ccu_clk_get_div(&clk->div[i], val);
+	}
+	rate = prate / div;
+
+	return rate;
+}
+
+const struct clk_ops ccu_clk_ops = {
+	/* gate */
+	.disable        = ccu_clk_disable,
+	.enable         = ccu_clk_enable,
+	.is_enabled     = ccu_clk_is_enabled,
+	/* mux */
+	.get_parent	= ccu_clk_get_parent,
+	.set_parent	= ccu_clk_set_parent,
+	/* rate */
+	.round_rate     = ccu_clk_round_rate,
+	.set_rate       = ccu_clk_set_rate,
+	.recalc_rate    = ccu_clk_recalc_rate,
+};
+
+static struct clk *sunxi_ccu_clk_alloc(const char *name,
+				   const char * const *parents, u8 num_parents,
+				   void __iomem *base, u32 reg,
+				   struct ccu_clk_mux mux,
+				   const struct ccu_clk_div *div, u8 num_div,
+				   u32 gate,
+				   int flags)
+{
+	struct ccu_clk *clk;
+	size_t i;
+
+	clk = xzalloc(sizeof(*clk));
+	clk->base = base;
+	clk->reg = reg;
+
+	clk->mux = mux;
+	clk->num_div = num_div > 4 ? 4 : num_div;
+	for (i = 0; i < clk->num_div; i++)
+		clk->div[i] = div[i];
+	clk->gate = gate;
+
+	clk->hw.clk.ops = &ccu_clk_ops;
+	clk->hw.clk.name = name;
+	clk->hw.clk.flags = flags;
+	clk->hw.clk.parent_names = parents;
+	clk->hw.clk.num_parents = num_parents;
+
+	return &clk->hw.clk;
+}
+
+struct clk *sunxi_ccu_clk(const char *name,
+			  const char * const *parents, u8 num_parents,
+			  void __iomem *base, u32 reg,
+			  struct ccu_clk_mux mux,
+			  const struct ccu_clk_div *div, u8 num_div,
+			  u32 gate,
+			  int flags)
+{
+	struct clk *c;
+	int ret;
+
+	c = sunxi_ccu_clk_alloc(name, parents, num_parents,
+				base, reg,
+				mux,
+				div, num_div,
+				gate,
+				flags);
+
+	ret = bclk_register(c);
+	if (ret) {
+		struct clk_hw *hw = clk_to_clk_hw(c);
+		free(to_ccu_clk(hw));
+		return ERR_PTR(ret);
+	}
+
+	return c;
+}
diff --git a/drivers/clk/sunxi/clk-sunxi.h b/drivers/clk/sunxi/clk-sunxi.h
new file mode 100644
index 0000000000..75e8d198ce
--- /dev/null
+++ b/drivers/clk/sunxi/clk-sunxi.h
@@ -0,0 +1,79 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2024 Jules Maselbas */
+#include <linux/clk.h>
+
+static inline struct clk *
+sunxi_clk_gate(const char *name, const char *parent, void __iomem *reg, u8 shift)
+{
+	return clk_gate(name, parent, reg, shift, 0, 0);
+}
+
+static inline struct clk *
+sunxi_clk_mux(const char *name, const char * const *parents, u8 num_parents,
+	      void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_mux(name, 0, reg, shift, width, parents, num_parents, 0);
+}
+
+static inline struct clk *
+sunxi_clk_div_table(const char *name, const char *parent, struct clk_div_table *table,
+	      void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider_table(name, parent, CLK_SET_RATE_PARENT, reg, shift,
+				 width, table, 0);
+}
+
+static inline struct clk *
+sunxi_clk_div(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider(name, parent, CLK_SET_RATE_PARENT, reg, shift,
+				 width, 0);
+}
+
+static inline void nop_delay(u32 cnt)
+{
+	while (cnt--)
+		barrier();
+}
+
+/* a "one size fit all" clk for barebox */
+
+struct ccu_clk {
+	struct clk_hw	hw;
+	u32 reg;
+	void __iomem	*base;
+
+	u32 gate;
+
+	struct ccu_clk_mux {
+		u8		shift;
+		u8		width;
+		const u32	*table;
+	} mux;
+
+	u8 num_div;
+	struct ccu_clk_div {
+		u8		shift;
+		u8		width;
+		u8		type;
+		u16		max;
+		u16		off;
+	} div[4];
+};
+
+enum ccu_clk_div_type {
+	CCU_CLK_DIV_FIXED = 1,
+	CCU_CLK_DIV_M,
+	CCU_CLK_DIV_P,
+};
+
+extern const struct clk_ops ccu_clk_ops;
+
+struct clk *sunxi_ccu_clk(const char *name,
+			  const char * const *parents, u8 num_parents,
+			  void __iomem *base, u32 reg,
+			  struct ccu_clk_mux mux,
+			  const struct ccu_clk_div *div, u8 num_div,
+			  u32 gate,
+			  int flags);
-- 
2.47.1



