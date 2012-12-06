Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgbWS-0007IG-Ok
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:29:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:29:48 +0100
Message-Id: <1354800588-23053-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800588-23053-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] ARM i.MX6: Add sata device
To: barebox@lists.infradead.org

This also adds and enables the clocks needed for SATA.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c                  |   20 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx6.h |    5 +++++
 arch/arm/mach-imx/include/mach/imx6-regs.h    |    2 ++
 3 files changed, 27 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 6f2df17..f78d3d2 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -83,6 +83,7 @@ enum mx6q_clks {
 	usdhc4, vdo_axi, vpu_axi, cko1, pll1_sys, pll2_bus, pll3_usb_otg,
 	pll4_audio, pll5_video, pll8_mlb, pll7_usb_host, pll6_enet, ssi1_ipg,
 	ssi2_ipg, ssi3_ipg, rom, usbphy1, usbphy2, ldb_di0_div_3_5, ldb_di1_div_3_5,
+	sata_ref, pcie_ref, sata_ref_100m, pcie_ref_125m, enet_ref,
 	clk_max
 };
 
@@ -169,6 +170,14 @@ static const char *cko1_sels[] = {
 	"pll4_audio",
 };
 
+static struct clk_div_table clk_enet_ref_table[] = {
+	{ .val = 0, .div = 20, },
+	{ .val = 1, .div = 10, },
+	{ .val = 2, .div = 5, },
+	{ .val = 3, .div = 4, },
+	{ },
+};
+
 static int imx6_ccm_probe(struct device_d *dev)
 {
 	void __iomem *base, *anatop_base, *ccm_base;
@@ -196,6 +205,13 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[pll7_usb_host] = imx_clk_pllv3(IMX_PLLV3_USB,	"pll7_usb_host","osc", base + 0x20, 0x3);
 	clks[pll6_enet]     = imx_clk_pllv3(IMX_PLLV3_ENET,	"pll6_enet",	"osc", base + 0xe0, 0x3);
 
+	clks[sata_ref] = imx_clk_fixed_factor("sata_ref", "pll6_enet", 1, 5);
+	clks[pcie_ref] = imx_clk_fixed_factor("pcie_ref", "pll6_enet", 1, 4);
+	clks[sata_ref_100m] = imx_clk_gate("sata_ref_100m", "sata_ref", base + 0xe0, 20);
+	clks[pcie_ref_125m] = imx_clk_gate("pcie_ref_125m", "pcie_ref", base + 0xe0, 19);
+
+	clks[enet_ref] = clk_divider_table("enet_ref", "pll6_enet", base + 0xe0, 0, 2, clk_enet_ref_table);
+
 	/*                                name               parent_name         reg          idx */
 	clks[pll2_pfd0_352m] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus",     base + 0x100, 0);
 	clks[pll2_pfd1_594m] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus",     base + 0x100, 1);
@@ -281,6 +297,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ahb], MX6_SATA_BASE_ADDR, NULL);
 
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xffffffff, ccm_base + CCGR1);
@@ -291,6 +308,9 @@ static int imx6_ccm_probe(struct device_d *dev)
 	writel(0xffffffff, ccm_base + CCGR6);
 	writel(0xffffffff, ccm_base + CCGR7);
 
+	clk_enable(clks[pll6_enet]);
+	clk_enable(clks[sata_ref_100m]);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index f8282e7..0f17016 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -64,3 +64,8 @@ static inline struct device_d *imx6_add_i2c2(struct i2c_platform_data *pdata)
 {
 	return imx_add_i2c((void *)MX6_I2C3_BASE_ADDR, 2, pdata);
 }
+
+static inline struct device_d *imx6_add_sata(void)
+{
+	return add_generic_device("imx6-sata", 0, NULL, MX6_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 716e6b4..7c72cba 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -105,4 +105,6 @@
 #define MX6_IP2APB_USBPHY1_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x78000)
 #define MX6_IP2APB_USBPHY2_BASE_ADDR    (MX6_AIPS2_OFF_BASE_ADDR + 0x7C000)
 
+#define MX6_SATA_BASE_ADDR		0x02200000
+
 #endif /* __MACH_IMX6_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
