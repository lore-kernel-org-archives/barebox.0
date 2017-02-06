Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBK-0004h3-3w
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:53:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:55 +0100
Message-Id: <20170206065057.19483-8-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] clk: i.MX7: Fix ethernet clocks
To: Barebox List <barebox@lists.infradead.org>

The original clock code from Linux registers some gates at
base + 0x44e0, 0x44f0, 0x4500, 0x4510. These are not in the reference
manual and do not seem to have any effect on the hardware. The
reference manual lists clocks at 0x4700 and 0x4710 which Linux
does not control at all. These clocks really do have an effect on
the hardware and are needed for ethernet support. Register the
existing clocks rather than the made up clocks to support
ethernet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx7.c | 15 +++++++++++----
 drivers/clk/imx/clk.h      |  6 ++++++
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index 383b685a1..eb072b73e 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -777,11 +777,18 @@ static int imx7_ccm_probe(struct device_d *dev)
 	clks[IMX7D_PCIE_PHY_ROOT_CLK] = imx_clk_gate4("pcie_phy_root_clk", "pcie_phy_post_div", base + 0x4600, 0);
 	clks[IMX7D_EPDC_PIXEL_ROOT_CLK] = imx_clk_gate4("epdc_pixel_root_clk", "epdc_pixel_post_div", base + 0x44a0, 0);
 	clks[IMX7D_LCDIF_PIXEL_ROOT_CLK] = imx_clk_gate4("lcdif_pixel_root_clk", "lcdif_pixel_post_div", base + 0x44b0, 0);
-	clks[IMX7D_ENET1_REF_ROOT_CLK] = imx_clk_gate4("enet1_ref_root_clk", "enet1_ref_post_div", base + 0x44e0, 0);
-	clks[IMX7D_ENET1_TIME_ROOT_CLK] = imx_clk_gate4("enet1_time_root_clk", "enet1_time_post_div", base + 0x44f0, 0);
-	clks[IMX7D_ENET2_REF_ROOT_CLK] = imx_clk_gate4("enet2_ref_root_clk", "enet2_ref_post_div", base + 0x4500, 0);
-	clks[IMX7D_ENET2_TIME_ROOT_CLK] = imx_clk_gate4("enet2_time_root_clk", "enet2_time_post_div", base + 0x4510, 0);
+
+	/*
+	 * Linux code controls gates at 0x44e0, 0x44f0, 0x4500 and 0x4500. However, these do not seem to
+	 * exist in hardware. According to the reference manual the ethernet clocks are controlled by
+	 * gates at 0x4700 and 0x4710
+	 */
+	clks[IMX7D_ENET1_REF_ROOT_CLK] = imx_clk_gate4("enet1_ref_root_clk", "enet1_ref_post_div", base + 0x4700, 0);
+	clks[IMX7D_ENET1_TIME_ROOT_CLK] = imx_clk_gate_shared("enet1_time_root_clk", "enet1_time_post_div", "enet1_ref_root_clk");
+	clks[IMX7D_ENET2_REF_ROOT_CLK] = imx_clk_gate4("enet2_ref_root_clk", "enet2_ref_post_div", base + 0x4710, 0);
+	clks[IMX7D_ENET2_TIME_ROOT_CLK] = imx_clk_gate_shared("enet2_time_root_clk", "enet2_time_post_div", "enet2_ref_root_clk");
 	clks[IMX7D_ENET_PHY_REF_ROOT_CLK] = imx_clk_gate4("enet_phy_ref_root_clk", "enet_phy_ref_post_div", base + 0x4520, 0);
+
 	clks[IMX7D_EIM_ROOT_CLK] = imx_clk_gate4("eim_root_clk", "eim_post_div", base + 0x4160, 0);
 	clks[IMX7D_NAND_ROOT_CLK] = imx_clk_gate4("nand_root_clk", "nand_post_div", base + 0x4140, 0);
 	clks[IMX7D_QSPI_ROOT_CLK] = imx_clk_gate4("qspi_root_clk", "qspi_post_div", base + 0x4150, 0);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 019114848..8da806403 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -98,6 +98,12 @@ static inline struct clk *imx_clk_gate4(const char *name, const char *parent,
 	return clk_gate2(name, parent, reg, shift, 0x3, CLK_OPS_PARENT_ENABLE);
 }
 
+static inline struct clk *imx_clk_gate_shared(const char *name, const char *parent,
+					      const char *shared)
+{
+	return clk_gate_shared(name, parent, shared, CLK_SET_RATE_PARENT);
+}
+
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
 		void __iomem *base);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
