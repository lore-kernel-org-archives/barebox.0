Delivery-date: Tue, 28 May 2024 22:13:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3C6-001069-14
	for lore@lore.pengutronix.de;
	Tue, 28 May 2024 22:13:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sC3C4-0005vW-TY
	for lore@pengutronix.de; Tue, 28 May 2024 22:13:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YXIWYhOs09kc7Gg8Uw20s5/7IR9NT9FEhXVOB/ODXhk=; b=qKtkJruG1Xp3v+RC4zedSeC0co
	temkYNQDlyi+319lsisUcQ5D+xEX8iz0cheQXoi5mwQIzQJp3xS3KF7kqZDBl4nwiqlvfisRp0GCs
	7iTEaK15eEwDvV6gkqB+hu50aAwShd+fkWAtogqDjOIOXN89/ZwV0Qna+2CWmY8jw9bpxT0ItNox5
	KRgq9W1Qvc0T6j08ShtY2nAi4hObpBJSR52lcjxPu2Hp7r+7ZaEC00827q4ujJzVf5UzcQ2csvF3f
	9Y1rGMUj67FDjS9AaYCuBHfnFUfIj2IP+ZbZ5z3/uRO1JJrfZBICo3a0ZVW2aKTDk6bu4nIwvIlzX
	CR9yWzdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3Bb-00000001w3u-3TDL;
	Tue, 28 May 2024 20:12:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sC3BX-00000001w1b-1d5x
	for barebox@lists.infradead.org;
	Tue, 28 May 2024 20:12:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BG-0005hb-7N; Tue, 28 May 2024 22:12:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-003N7Z-6H; Tue, 28 May 2024 22:12:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sC3BE-0069n8-0G;
	Tue, 28 May 2024 22:12:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 May 2024 22:12:12 +0200
Message-Id: <20240528201214.1467597-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_131239_818346_C3103391 
X-CRM114-Status: GOOD (  13.81  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] clk: imx27: sync with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates the i.MX27 clk driver to the one from Linux. This
essentially replaces our physbase based clk matching with device tree
based clk matching. The driver is nearly unchanged, only some clocks
that are unused in barebox are dropped.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig   |   1 +
 drivers/clk/imx/clk-imx27.c | 372 +++++++++++++-----------------------
 2 files changed, 133 insertions(+), 240 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4d10def3c2..96ab723157 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -82,6 +82,7 @@ config ARCH_IMX27
 	select ARCH_HAS_FEC_IMX
 	select ARCH_HAS_IMX_GPT
 	select PINCTRL_IMX_IOMUX_V1
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_IMX31
 	select CPU_V6
diff --git a/drivers/clk/imx/clk-imx27.c b/drivers/clk/imx/clk-imx27.c
index 3f03705634..15626c7ee0 100644
--- a/drivers/clk/imx/clk-imx27.c
+++ b/drivers/clk/imx/clk-imx27.c
@@ -1,271 +1,163 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0
 #include <common.h>
 #include <init.h>
 #include <driver.h>
 #include <linux/clk.h>
 #include <io.h>
+#include <linux/clk-provider.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx/imx27-regs.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/revision.h>
+#include <dt-bindings/clock/imx27-clock.h>
+#include <of_address.h>
 
 #include "clk.h"
 
-/* Register offsets */
-#define CCM_CSCR		0x0
-#define CCM_MPCTL0		0x4
-#define CCM_MPCTL1		0x8
-#define CCM_SPCTL0		0xc
-#define CCM_SPCTL1		0x10
-#define CCM_OSC26MCTL		0x14
-#define CCM_PCDR0		0x18
-#define CCM_PCDR1		0x1c
-#define CCM_PCCR0		0x20
-#define CCM_PCCR1		0x24
-#define CCM_CCSR		0x28
-#define CCM_PMCTL		0x2c
-#define CCM_PMCOUNT		0x30
-#define CCM_WKGDCTL		0x34
-
-#define PCCR0_SSI2_EN	(1 << 0)
-#define PCCR0_SSI1_EN	(1 << 1)
-#define PCCR0_SLCDC_EN	(1 << 2)
-#define PCCR0_SDHC3_EN	(1 << 3)
-#define PCCR0_SDHC2_EN	(1 << 4)
-#define PCCR0_SDHC1_EN	(1 << 5)
-#define PCCR0_SDC_EN	(1 << 6)
-#define PCCR0_SAHARA_EN	(1 << 7)
-#define PCCR0_RTIC_EN	(1 << 8)
-#define PCCR0_RTC_EN	(1 << 9)
-#define PCCR0_PWM_EN	(1 << 11)
-#define PCCR0_OWIRE_EN	(1 << 12)
-#define PCCR0_MSHC_EN	(1 << 13)
-#define PCCR0_LCDC_EN	(1 << 14)
-#define PCCR0_KPP_EN	(1 << 15)
-#define PCCR0_IIM_EN	(1 << 16)
-#define PCCR0_I2C2_EN	(1 << 17)
-#define PCCR0_I2C1_EN	(1 << 18)
-#define PCCR0_GPT6_EN	(1 << 19)
-#define PCCR0_GPT5_EN	(1 << 20)
-#define PCCR0_GPT4_EN	(1 << 21)
-#define PCCR0_GPT3_EN	(1 << 22)
-#define PCCR0_GPT2_EN	(1 << 23)
-#define PCCR0_GPT1_EN	(1 << 24)
-#define PCCR0_GPIO_EN	(1 << 25)
-#define PCCR0_FEC_EN	(1 << 26)
-#define PCCR0_EMMA_EN	(1 << 27)
-#define PCCR0_DMA_EN	(1 << 28)
-#define PCCR0_CSPI3_EN	(1 << 29)
-#define PCCR0_CSPI2_EN	(1 << 30)
-#define PCCR0_CSPI1_EN	(1 << 31)
-
-#define PCCR1_MSHC_BAUDEN	(1 << 2)
-#define PCCR1_NFC_BAUDEN	(1 << 3)
-#define PCCR1_SSI2_BAUDEN	(1 << 4)
-#define PCCR1_SSI1_BAUDEN	(1 << 5)
-#define PCCR1_H264_BAUDEN	(1 << 6)
-#define PCCR1_PERCLK4_EN	(1 << 7)
-#define PCCR1_PERCLK3_EN	(1 << 8)
-#define PCCR1_PERCLK2_EN	(1 << 9)
-#define PCCR1_PERCLK1_EN	(1 << 10)
-#define PCCR1_HCLK_USB		(1 << 11)
-#define PCCR1_HCLK_SLCDC	(1 << 12)
-#define PCCR1_HCLK_SAHARA	(1 << 13)
-#define PCCR1_HCLK_RTIC		(1 << 14)
-#define PCCR1_HCLK_LCDC		(1 << 15)
-#define PCCR1_HCLK_H264		(1 << 16)
-#define PCCR1_HCLK_FEC		(1 << 17)
-#define PCCR1_HCLK_EMMA		(1 << 18)
-#define PCCR1_HCLK_EMI		(1 << 19)
-#define PCCR1_HCLK_DMA		(1 << 20)
-#define PCCR1_HCLK_CSI		(1 << 21)
-#define PCCR1_HCLK_BROM		(1 << 22)
-#define PCCR1_HCLK_ATA		(1 << 23)
-#define PCCR1_WDT_EN		(1 << 24)
-#define PCCR1_USB_EN		(1 << 25)
-#define PCCR1_UART6_EN		(1 << 26)
-#define PCCR1_UART5_EN		(1 << 27)
-#define PCCR1_UART4_EN		(1 << 28)
-#define PCCR1_UART3_EN		(1 << 29)
-#define PCCR1_UART2_EN		(1 << 30)
-#define PCCR1_UART1_EN		(1 << 31)
-
-enum mx27_clks {
-	dummy, ckih, ckil, mpll, spll, mpll_main2, ahb, ipg, nfc_div, per1_div,
-	per2_div, per3_div, per4_div, vpu_sel, vpu_div, usb_div, cpu_sel,
-	clko_sel, cpu_div, clko_div, ssi1_sel, ssi2_sel, ssi1_div, ssi2_div,
-	clko_en, ssi2_ipg_gate, ssi1_ipg_gate, slcdc_ipg_gate, sdhc3_ipg_gate,
-	sdhc2_ipg_gate, sdhc1_ipg_gate, scc_ipg_gate, sahara_ipg_gate,
-	rtc_ipg_gate, pwm_ipg_gate, owire_ipg_gate, lcdc_ipg_gate,
-	kpp_ipg_gate, iim_ipg_gate, i2c2_ipg_gate, i2c1_ipg_gate,
-	gpt6_ipg_gate, gpt5_ipg_gate, gpt4_ipg_gate, gpt3_ipg_gate,
-	gpt2_ipg_gate, gpt1_ipg_gate, gpio_ipg_gate, fec_ipg_gate,
-	emma_ipg_gate, dma_ipg_gate, cspi3_ipg_gate, cspi2_ipg_gate,
-	cspi1_ipg_gate, nfc_baud_gate, ssi2_baud_gate, ssi1_baud_gate,
-	vpu_baud_gate, per4_gate, per3_gate, per2_gate, per1_gate,
-	usb_ahb_gate, slcdc_ahb_gate, sahara_ahb_gate, lcdc_ahb_gate,
-	vpu_ahb_gate, fec_ahb_gate, emma_ahb_gate, emi_ahb_gate, dma_ahb_gate,
-	csi_ahb_gate, brom_ahb_gate, ata_ahb_gate, wdog_ipg_gate, usb_ipg_gate,
-	uart6_ipg_gate, uart5_ipg_gate, uart4_ipg_gate, uart3_ipg_gate,
-	uart2_ipg_gate, uart1_ipg_gate, ckih_div1p5, fpm, mpll_osc_sel,
-	mpll_sel, spll_gate, clk_max
-};
-
-static struct clk *clks[clk_max];
-
-static const char *cpu_sel_clks[] = {
-	"mpll_main2",
-	"mpll",
-};
-
-static const char *mpll_sel_clks[] = {
-	"fpm",
-	"mpll_osc_sel",
-};
-
-static const char *mpll_osc_sel_clks[] = {
-	"ckih",
-	"ckih_div1p5",
-};
+static void __iomem *ccm __initdata;
 
+/* Register offsets */
+#define CCM_CSCR		(ccm + 0x00)
+#define CCM_MPCTL0		(ccm + 0x04)
+#define CCM_MPCTL1		(ccm + 0x08)
+#define CCM_SPCTL0		(ccm + 0x0c)
+#define CCM_SPCTL1		(ccm + 0x10)
+#define CCM_PCDR0		(ccm + 0x18)
+#define CCM_PCDR1		(ccm + 0x1c)
+#define CCM_PCCR0		(ccm + 0x20)
+#define CCM_PCCR1		(ccm + 0x24)
+#define CCM_CCSR		(ccm + 0x28)
+
+static const char *cpu_sel_clks[] = { "mpll_main2", "mpll", };
+static const char *mpll_sel_clks[] = { "fpm", "mpll_osc_sel", };
+static const char *mpll_osc_sel_clks[] = { "ckih_gate", "ckih_div1p5", };
 static const char *clko_sel_clks[] = {
-	"ckil",
-	NULL,
-	"ckih",
-	"ckih",
-	"ckih",
-	"mpll",
-	"spll",
-	"cpu_div",
-	"ahb",
-	"ipg",
-	"per1_div",
-	"per2_div",
-	"per3_div",
-	"per4_div",
-	NULL,
-	NULL,
-	"nfc_div",
-	NULL,
-	NULL,
-	NULL,
-	"ckil",
-	"usb_div",
-	NULL,
+	"ckil", "fpm", "ckih_gate", "ckih_gate",
+	"ckih_gate", "mpll", "spll", "cpu_div",
+	"ahb", "ipg", "per1_div", "per2_div",
+	"per3_div", "per4_div", "ssi1_div", "ssi2_div",
+	"nfc_div", "mshc_div", "vpu_div", "60m",
+	"32k", "usb_div", "dptc",
 };
 
-static int imx27_ccm_probe(struct device *dev)
-{
-	struct resource *iores;
-	void __iomem *base;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	base = IOMEM(iores->start);
-
-	writel(PCCR0_SDHC3_EN | PCCR0_SDHC2_EN | PCCR0_SDHC1_EN |
-			PCCR0_PWM_EN | PCCR0_KPP_EN | PCCR0_IIM_EN |
-			PCCR0_I2C2_EN | PCCR0_I2C1_EN | PCCR0_GPT6_EN | PCCR0_GPT5_EN |
-			PCCR0_GPT4_EN | PCCR0_GPT3_EN | PCCR0_GPT2_EN | PCCR0_GPT1_EN |
-			PCCR0_GPIO_EN | PCCR0_FEC_EN | PCCR0_CSPI3_EN | PCCR0_CSPI2_EN |
-			PCCR0_CSPI1_EN,
-			base + CCM_PCCR0);
-
-	writel(PCCR1_NFC_BAUDEN | PCCR1_PERCLK4_EN | PCCR1_PERCLK2_EN | PCCR1_PERCLK1_EN |
-			PCCR1_HCLK_USB | PCCR1_HCLK_FEC | PCCR1_HCLK_EMI | PCCR1_WDT_EN |
-			PCCR1_USB_EN | PCCR1_UART6_EN | PCCR1_UART5_EN | PCCR1_UART4_EN |
-			PCCR1_UART3_EN | PCCR1_UART2_EN | PCCR1_UART1_EN,
-			base + CCM_PCCR1);
-
-	clks[dummy] = clk_fixed("dummy", 0);
-	clks[ckih] = clk_fixed("ckih", 26000000);
-	clks[ckil] = clk_fixed("ckil", 32768);
-	clks[fpm] = imx_clk_fixed_factor("fpm", "ckil", 1024, 1);
-	clks[ckih_div1p5] = imx_clk_fixed_factor("ckih_div1p5", "ckih", 2, 3);
+static struct clk *clk[IMX27_CLK_MAX];
+static struct clk_onecell_data clk_data;
 
-	clks[mpll_osc_sel] = imx_clk_mux("mpll_osc_sel", base + CCM_CSCR, 4, 1,
-			mpll_osc_sel_clks,
-			ARRAY_SIZE(mpll_osc_sel_clks));
-	clks[mpll_sel] = imx_clk_mux("mpll_sel", base + CCM_CSCR, 16, 1, mpll_sel_clks,
-			ARRAY_SIZE(mpll_sel_clks));
-
-	clks[mpll] = imx_clk_pllv1("mpll", "mpll_sel", base + CCM_MPCTL0);
-	clks[spll] = imx_clk_pllv1("spll", "ckih", base + CCM_SPCTL0);
-	clks[mpll_main2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
+static void __init _mx27_clocks_init(unsigned long fref)
+{
+	BUG_ON(!ccm);
+
+	clk[IMX27_CLK_DUMMY] = clk_fixed("dummy", 0);
+	clk[IMX27_CLK_CKIH] = clk_fixed("ckih", fref);
+	clk[IMX27_CLK_CKIL] = clk_fixed("ckil", 32768);
+	clk[IMX27_CLK_FPM] = imx_clk_fixed_factor("fpm", "ckil", 1024, 1);
+	clk[IMX27_CLK_CKIH_DIV1P5] = imx_clk_fixed_factor("ckih_div1p5", "ckih_gate", 2, 3);
+	clk[IMX27_CLK_CKIH_GATE] = imx_clk_gate_dis("ckih_gate", "ckih", CCM_CSCR, 3);
+	clk[IMX27_CLK_MPLL_OSC_SEL] = imx_clk_mux("mpll_osc_sel", CCM_CSCR, 4, 1, mpll_osc_sel_clks, ARRAY_SIZE(mpll_osc_sel_clks));
+	clk[IMX27_CLK_MPLL_SEL] = imx_clk_mux("mpll_sel", CCM_CSCR, 16, 1, mpll_sel_clks, ARRAY_SIZE(mpll_sel_clks));
+	clk[IMX27_CLK_MPLL] = imx_clk_pllv1("mpll", "mpll_sel", CCM_MPCTL0);
+	clk[IMX27_CLK_SPLL] = imx_clk_pllv1("spll", "ckih_gate", CCM_SPCTL0);
+	clk[IMX27_CLK_SPLL_GATE] = imx_clk_gate("spll_gate", "spll", CCM_CSCR, 1);
+	clk[IMX27_CLK_MPLL_MAIN2] = imx_clk_fixed_factor("mpll_main2", "mpll", 2, 3);
 
 	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0) {
-		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 8, 2);
-		clks[ipg] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
+		clk[IMX27_CLK_AHB] = imx_clk_divider("ahb", "mpll_main2", CCM_CSCR, 8, 2);
+		clk[IMX27_CLK_IPG] = imx_clk_fixed_factor("ipg", "ahb", 1, 2);
 	} else {
-		clks[ahb] = imx_clk_divider("ahb", "mpll_main2", base + CCM_CSCR, 9, 4);
-		clks[ipg] = imx_clk_divider("ipg", "ahb", base + CCM_CSCR, 8, 1);
+		clk[IMX27_CLK_AHB] = imx_clk_divider("ahb", "mpll_main2", CCM_CSCR, 9, 4);
+		clk[IMX27_CLK_IPG] = imx_clk_divider("ipg", "ahb", CCM_CSCR, 8, 1);
 	}
 
-	clks[nfc_div] = imx_clk_divider("nfc_div", "ahb", base + CCM_PCDR0, 6, 4);
-	clks[per1_div] = imx_clk_divider("per1_div", "mpll_main2", base + CCM_PCDR1, 0, 6);
-	clks[per2_div] = imx_clk_divider("per2_div", "mpll_main2", base + CCM_PCDR1, 8, 6);
-	clks[per3_div] = imx_clk_divider("per3_div", "mpll_main2", base + CCM_PCDR1, 16, 6);
-	clks[per4_div] = imx_clk_divider("per4_div", "mpll_main2", base + CCM_PCDR1, 24, 6);
-	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 28, 3);
-	clks[cpu_sel] = imx_clk_mux("cpu_sel", base + CCM_CSCR, 15, 1, cpu_sel_clks,
-			ARRAY_SIZE(cpu_sel_clks));
-	clks[clko_sel] = imx_clk_mux("clko_sel", base + CCM_CCSR, 0, 5, clko_sel_clks,
-			ARRAY_SIZE(clko_sel_clks));
+	clk[IMX27_CLK_MSHC_DIV] = imx_clk_divider("mshc_div", "ahb", CCM_PCDR0, 0, 6);
+	clk[IMX27_CLK_NFC_DIV] = imx_clk_divider("nfc_div", "ahb", CCM_PCDR0, 6, 4);
+	clk[IMX27_CLK_PER1_DIV] = imx_clk_divider("per1_div", "mpll_main2", CCM_PCDR1, 0, 6);
+	clk[IMX27_CLK_PER2_DIV] = imx_clk_divider("per2_div", "mpll_main2", CCM_PCDR1, 8, 6);
+	clk[IMX27_CLK_PER3_DIV] = imx_clk_divider("per3_div", "mpll_main2", CCM_PCDR1, 16, 6);
+	clk[IMX27_CLK_PER4_DIV] = imx_clk_divider("per4_div", "mpll_main2", CCM_PCDR1, 24, 6);
+	clk[IMX27_CLK_USB_DIV] = imx_clk_divider("usb_div", "spll_gate", CCM_CSCR, 28, 3);
+	clk[IMX27_CLK_CPU_SEL] = imx_clk_mux("cpu_sel", CCM_CSCR, 15, 1, cpu_sel_clks, ARRAY_SIZE(cpu_sel_clks));
+	clk[IMX27_CLK_CLKO_SEL] = imx_clk_mux("clko_sel", CCM_CCSR, 0, 5, clko_sel_clks, ARRAY_SIZE(clko_sel_clks));
+
 	if (imx_silicon_revision() >= IMX_CHIP_REV_2_0)
-		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 12, 2);
+		clk[IMX27_CLK_CPU_DIV] = imx_clk_divider("cpu_div", "cpu_sel", CCM_CSCR, 12, 2);
 	else
-		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
-	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
-	clks[per3_gate] = imx_clk_gate("per3_gate", "per3_div", base + CCM_PCCR1, 8);
-	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
-	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
-	clks[wdog_ipg_gate] = imx_clk_gate("wdog_ipg_gate", "ipg", base + CCM_PCCR1, 24);
+		clk[IMX27_CLK_CPU_DIV] = imx_clk_divider("cpu_div", "cpu_sel", CCM_CSCR, 13, 3);
+
+	clk[IMX27_CLK_CLKO_DIV] = imx_clk_divider("clko_div", "clko_sel", CCM_PCDR0, 22, 3);
+	clk[IMX27_CLK_CLKO_EN] = imx_clk_gate("clko_en", "clko_div", CCM_PCCR0, 0);
+	clk[IMX27_CLK_SDHC3_IPG_GATE] = imx_clk_gate("sdhc3_ipg_gate", "ipg", CCM_PCCR0, 3);
+	clk[IMX27_CLK_SDHC2_IPG_GATE] = imx_clk_gate("sdhc2_ipg_gate", "ipg", CCM_PCCR0, 4);
+	clk[IMX27_CLK_SDHC1_IPG_GATE] = imx_clk_gate("sdhc1_ipg_gate", "ipg", CCM_PCCR0, 5);
+	clk[IMX27_CLK_RTC_IPG_GATE] = imx_clk_gate("rtc_ipg_gate", "ipg", CCM_PCCR0, 9);
+	clk[IMX27_CLK_PWM_IPG_GATE] = imx_clk_gate("pwm_ipg_gate", "ipg", CCM_PCCR0, 11);
+	clk[IMX27_CLK_OWIRE_IPG_GATE] = imx_clk_gate("owire_ipg_gate", "ipg", CCM_PCCR0, 12);
+	clk[IMX27_CLK_LCDC_IPG_GATE] = imx_clk_gate("lcdc_ipg_gate", "ipg", CCM_PCCR0, 14);
+	clk[IMX27_CLK_KPP_IPG_GATE] = imx_clk_gate("kpp_ipg_gate", "ipg", CCM_PCCR0, 15);
+	clk[IMX27_CLK_IIM_IPG_GATE] = imx_clk_gate("iim_ipg_gate", "ipg", CCM_PCCR0, 16);
+	clk[IMX27_CLK_I2C2_IPG_GATE] = imx_clk_gate("i2c2_ipg_gate", "ipg", CCM_PCCR0, 17);
+	clk[IMX27_CLK_I2C1_IPG_GATE] = imx_clk_gate("i2c1_ipg_gate", "ipg", CCM_PCCR0, 18);
+	clk[IMX27_CLK_GPT6_IPG_GATE] = imx_clk_gate("gpt6_ipg_gate", "ipg", CCM_PCCR0, 19);
+	clk[IMX27_CLK_GPT5_IPG_GATE] = imx_clk_gate("gpt5_ipg_gate", "ipg", CCM_PCCR0, 20);
+	clk[IMX27_CLK_GPT4_IPG_GATE] = imx_clk_gate("gpt4_ipg_gate", "ipg", CCM_PCCR0, 21);
+	clk[IMX27_CLK_GPT3_IPG_GATE] = imx_clk_gate("gpt3_ipg_gate", "ipg", CCM_PCCR0, 22);
+	clk[IMX27_CLK_GPT2_IPG_GATE] = imx_clk_gate("gpt2_ipg_gate", "ipg", CCM_PCCR0, 23);
+	clk[IMX27_CLK_GPT1_IPG_GATE] = imx_clk_gate("gpt1_ipg_gate", "ipg", CCM_PCCR0, 24);
+	clk[IMX27_CLK_GPIO_IPG_GATE] = imx_clk_gate("gpio_ipg_gate", "ipg", CCM_PCCR0, 25);
+	clk[IMX27_CLK_FEC_IPG_GATE] = imx_clk_gate("fec_ipg_gate", "ipg", CCM_PCCR0, 26);
+	clk[IMX27_CLK_DMA_IPG_GATE] = imx_clk_gate("dma_ipg_gate", "ipg", CCM_PCCR0, 28);
+	clk[IMX27_CLK_CSPI3_IPG_GATE] = imx_clk_gate("cspi3_ipg_gate", "ipg", CCM_PCCR0, 29);
+	clk[IMX27_CLK_CSPI2_IPG_GATE] = imx_clk_gate("cspi2_ipg_gate", "ipg", CCM_PCCR0, 30);
+	clk[IMX27_CLK_CSPI1_IPG_GATE] = imx_clk_gate("cspi1_ipg_gate", "ipg", CCM_PCCR0, 31);
+	clk[IMX27_CLK_NFC_BAUD_GATE] = imx_clk_gate("nfc_baud_gate", "nfc_div", CCM_PCCR1,  3);
+	clk[IMX27_CLK_PER4_GATE] = imx_clk_gate("per4_gate", "per4_div", CCM_PCCR1,  7);
+	clk[IMX27_CLK_PER3_GATE] = imx_clk_gate("per3_gate", "per3_div", CCM_PCCR1,  8);
+	clk[IMX27_CLK_PER2_GATE] = imx_clk_gate("per2_gate", "per2_div", CCM_PCCR1,  9);
+	clk[IMX27_CLK_PER1_GATE] = imx_clk_gate("per1_gate", "per1_div", CCM_PCCR1, 10);
+	clk[IMX27_CLK_USB_AHB_GATE] = imx_clk_gate("usb_ahb_gate", "ahb", CCM_PCCR1, 11);
+	clk[IMX27_CLK_SLCDC_AHB_GATE] = imx_clk_gate("slcdc_ahb_gate", "ahb", CCM_PCCR1, 12);
+	clk[IMX27_CLK_SAHARA_AHB_GATE] = imx_clk_gate("sahara_ahb_gate", "ahb", CCM_PCCR1, 13);
+	clk[IMX27_CLK_RTIC_AHB_GATE] = imx_clk_gate("rtic_ahb_gate", "ahb", CCM_PCCR1, 14);
+	clk[IMX27_CLK_LCDC_AHB_GATE] = imx_clk_gate("lcdc_ahb_gate", "ahb", CCM_PCCR1, 15);
+	clk[IMX27_CLK_FEC_AHB_GATE] = imx_clk_gate("fec_ahb_gate", "ahb", CCM_PCCR1, 17);
+	clk[IMX27_CLK_EMI_AHB_GATE] = imx_clk_gate("emi_ahb_gate", "ahb", CCM_PCCR1, 19);
+	clk[IMX27_CLK_DMA_AHB_GATE] = imx_clk_gate("dma_ahb_gate", "ahb", CCM_PCCR1, 20);
+	clk[IMX27_CLK_ATA_AHB_GATE] = imx_clk_gate("ata_ahb_gate", "ahb", CCM_PCCR1, 23);
+	clk[IMX27_CLK_WDOG_IPG_GATE] = imx_clk_gate("wdog_ipg_gate", "ipg", CCM_PCCR1, 24);
+	clk[IMX27_CLK_USB_IPG_GATE] = imx_clk_gate("usb_ipg_gate", "ipg", CCM_PCCR1, 25);
+	clk[IMX27_CLK_UART6_IPG_GATE] = imx_clk_gate("uart6_ipg_gate", "ipg", CCM_PCCR1, 26);
+	clk[IMX27_CLK_UART5_IPG_GATE] = imx_clk_gate("uart5_ipg_gate", "ipg", CCM_PCCR1, 27);
+	clk[IMX27_CLK_UART4_IPG_GATE] = imx_clk_gate("uart4_ipg_gate", "ipg", CCM_PCCR1, 28);
+	clk[IMX27_CLK_UART3_IPG_GATE] = imx_clk_gate("uart3_ipg_gate", "ipg", CCM_PCCR1, 29);
+	clk[IMX27_CLK_UART2_IPG_GATE] = imx_clk_gate("uart2_ipg_gate", "ipg", CCM_PCCR1, 30);
+	clk[IMX27_CLK_UART1_IPG_GATE] = imx_clk_gate("uart1_ipg_gate", "ipg", CCM_PCCR1, 31);
+
+	imx_check_clocks(clk, ARRAY_SIZE(clk));
+
+	clk_enable(clk[IMX27_CLK_EMI_AHB_GATE]);
+}
 
-	clkdev_add_physbase(clks[per1_div], MX27_GPT1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_GPT6_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART4_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART5_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per1_div], MX27_UART6_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_CSPI3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_I2C1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[ipg], MX27_I2C2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC1_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per2_div], MX27_SDHC3_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3_gate], MX27_LCDC_BASE_ADDR, "per");
-	clkdev_add_physbase(clks[lcdc_ahb_gate], MX27_LCDC_BASE_ADDR, "ahb");
-	clkdev_add_physbase(clks[lcdc_ipg_gate], MX27_LCDC_BASE_ADDR, "ipg");
-	clkdev_add_physbase(clks[ipg], MX27_FEC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[nfc_div], MX27_NFC_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[wdog_ipg_gate], MX27_WDOG_BASE_ADDR, NULL);
+static void __init mx27_clocks_init_dt(struct device_node *np)
+{
+	struct device_node *refnp;
+	u32 fref = 26000000; /* default */
 
-	return 0;
-}
+	for_each_compatible_node(refnp, NULL, "fixed-clock") {
+		if (!of_device_is_compatible(refnp, "fsl,imx-osc26m"))
+			continue;
 
-static __maybe_unused struct of_device_id imx27_ccm_dt_ids[] = {
-	{
-		.compatible = "fsl,imx27-ccm",
-	}, {
-		/* sentinel */
+		if (!of_property_read_u32(refnp, "clock-frequency", &fref)) {
+			of_node_put(refnp);
+			break;
+		}
 	}
-};
-MODULE_DEVICE_TABLE(of, imx27_ccm_dt_ids);
 
-static struct driver imx27_ccm_driver = {
-	.probe	= imx27_ccm_probe,
-	.name	= "imx27-ccm",
-	.of_compatible = DRV_OF_COMPAT(imx27_ccm_dt_ids),
-};
+	ccm = of_iomap(np, 0);
+
+	_mx27_clocks_init(fref);
 
-core_platform_driver(imx27_ccm_driver);
+	clk_data.clks = clk;
+	clk_data.clk_num = ARRAY_SIZE(clk);
+	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+}
+CLK_OF_DECLARE(imx27_ccm, "fsl,imx27-ccm", mx27_clocks_init_dt);
-- 
2.39.2



