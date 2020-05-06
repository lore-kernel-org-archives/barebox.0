Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005wC-2l
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:10 +0200
Message-Id: <20200506081716.20143-7-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/13] clk: mxs: Use device tree provided clock lookups
To: Barebox List <barebox@lists.infradead.org>

When probing from the device tree use the device tree provided clock
lookups. So far we only used the clock lookups based on the physical
base address of the device, but these should go sooner or later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig   |  1 +
 drivers/clk/mxs/clk-imx28.c | 45 +++++++++++++++++++++----------------
 2 files changed, 27 insertions(+), 19 deletions(-)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f7d13569ea..f4a9d3d422 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -11,6 +11,7 @@ config ARCH_TEXT_BASE
 
 config ARCH_MXS_OF_SUPPORT
 	bool
+	select COMMON_CLK_OF_PROVIDER
 	select OFTREE
 	select OFDEVICE
 
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index aa528e109a..bf65a4a3b8 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -65,8 +65,9 @@ enum imx28_clk {
 };
 
 static struct clk *clks[clk_max];
+static struct clk_onecell_data clk_data;
 
-static int __init mx28_clocks_init(void __iomem *regs)
+static int __init mx28_clocks_init(struct device_d *dev, void __iomem *regs)
 {
 	struct device_node *dcnp;
 
@@ -145,23 +146,29 @@ static int __init mx28_clocks_init(void __iomem *regs)
 	clk_set_rate(clks[ssp3], 96000000);
 	clk_set_parent(clks[lcdif_sel], clks[ref_pix]);
 
-	clkdev_add_physbase(clks[ssp0], IMX_SSP0_BASE, NULL);
-	clkdev_add_physbase(clks[ssp1], IMX_SSP1_BASE, NULL);
-	clkdev_add_physbase(clks[ssp2], IMX_SSP2_BASE, NULL);
-	clkdev_add_physbase(clks[ssp3], IMX_SSP3_BASE, NULL);
-	clkdev_add_physbase(clks[fec], IMX_FEC0_BASE, NULL);
-	clkdev_add_physbase(clks[xbus], IMX_DBGUART_BASE, NULL);
-	clkdev_add_physbase(clks[hbus], IMX_OCOTP_BASE, NULL);
-	clkdev_add_physbase(clks[hbus], MXS_APBH_BASE, NULL);
-	clkdev_add_physbase(clks[uart], IMX_UART0_BASE, NULL);
-	clkdev_add_physbase(clks[uart], IMX_UART1_BASE, NULL);
-	clkdev_add_physbase(clks[uart], IMX_UART2_BASE, NULL);
-	clkdev_add_physbase(clks[uart], IMX_UART3_BASE, NULL);
-	clkdev_add_physbase(clks[uart], IMX_UART4_BASE, NULL);
-	clkdev_add_physbase(clks[gpmi], MXS_GPMI_BASE, NULL);
-	clkdev_add_physbase(clks[pwm], IMX_PWM_BASE, NULL);
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_STM))
-		clkdev_add_physbase(clks[lcdif_comp], IMX_FB_BASE, NULL);
+	if (dev->device_node) {
+		clk_data.clks = clks;
+		clk_data.clk_num = clk_max;
+		of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
+	} else {
+		clkdev_add_physbase(clks[ssp0], IMX_SSP0_BASE, NULL);
+		clkdev_add_physbase(clks[ssp1], IMX_SSP1_BASE, NULL);
+		clkdev_add_physbase(clks[ssp2], IMX_SSP2_BASE, NULL);
+		clkdev_add_physbase(clks[ssp3], IMX_SSP3_BASE, NULL);
+		clkdev_add_physbase(clks[fec], IMX_FEC0_BASE, NULL);
+		clkdev_add_physbase(clks[xbus], IMX_DBGUART_BASE, NULL);
+		clkdev_add_physbase(clks[hbus], IMX_OCOTP_BASE, NULL);
+		clkdev_add_physbase(clks[hbus], MXS_APBH_BASE, NULL);
+		clkdev_add_physbase(clks[uart], IMX_UART0_BASE, NULL);
+		clkdev_add_physbase(clks[uart], IMX_UART1_BASE, NULL);
+		clkdev_add_physbase(clks[uart], IMX_UART2_BASE, NULL);
+		clkdev_add_physbase(clks[uart], IMX_UART3_BASE, NULL);
+		clkdev_add_physbase(clks[uart], IMX_UART4_BASE, NULL);
+		clkdev_add_physbase(clks[gpmi], MXS_GPMI_BASE, NULL);
+		clkdev_add_physbase(clks[pwm], IMX_PWM_BASE, NULL);
+		if (IS_ENABLED(CONFIG_DRIVER_VIDEO_STM))
+			clkdev_add_physbase(clks[lcdif_comp], IMX_FB_BASE, NULL);
+	}
 
 	return 0;
 }
@@ -176,7 +183,7 @@ static int imx28_ccm_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	regs = IOMEM(iores->start);
 
-	mx28_clocks_init(regs);
+	mx28_clocks_init(dev, regs);
 
 	return 0;
 }
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
