Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K3-St
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:36 +0200
Message-Id: <1399449884-19089-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] ARM: i.MX53: Add pwm support
To: barebox@lists.infradead.org

Aliases and clocks are needed to support the i.MX53 PWMs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53.dtsi      | 7 +++++++
 arch/arm/mach-imx/clk-imx5.c | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index 9a766da..bc68012 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -1 +1,8 @@
 #include <arm/imx53.dtsi>
+
+/ {
+	aliases {
+		pwm0 = &pwm1;
+		pwm1 = &pwm2;
+	};
+};
diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 9d536bc..8146359 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -209,6 +209,8 @@ int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_C_SEL], MX51_MMC_SDHC3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX51_MMC_SDHC4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
 
 	return 0;
 }
@@ -272,6 +274,8 @@ int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_B_PODF], MX53_ESDHC3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_ESDHC_D_SEL], MX53_ESDHC4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
 
 	return 0;
 }
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
