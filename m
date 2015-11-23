Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0mdi-0006AX-Vc
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 08:38:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2015 09:38:04 +0100
Message-Id: <1448267884-4406-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] video: i.MX IPUv3: Set ldb clocks correctly
To: Barebox List <barebox@lists.infradead.org>

The clocks for the LVDS display bridge have a fixed /3.5 and a
configurable /1,/2 divider in their path. The configurable divider has
to be explicitly configured for single/dual channel support, so we can't
rely on clock rate parent propagation here. Clear the
CLK_SET_RATE_PARENT flag for the configurable divider and configure the
clock explicitly in the ldb driver.
Tested on a custom i.MX6 board, currently untested on i.MX53.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c       |  2 +-
 arch/arm/mach-imx/clk-imx6.c       |  4 ++--
 arch/arm/mach-imx/clk.h            |  6 ++++++
 drivers/video/imx-ipu-v3/imx-ldb.c | 26 ++++++++++++++++++++++----
 4 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 6dc3c80..70db31c 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -332,7 +332,7 @@ static struct driver_d imx51_ccm_driver = {
 static void mx53_clocks_ipu_init(void __iomem *regs)
 {
 	clks[IMX5_CLK_LDB_DI1_DIV_3_5]	= imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX5_CLK_LDB_DI1_DIV]	= imx_clk_divider("ldb_di1_div", "ldb_di1_div_3_5", regs + CCM_CSCMR2, 11, 1);
+	clks[IMX5_CLK_LDB_DI1_DIV]	= imx_clk_divider_np("ldb_di1_div", "ldb_di1_div_3_5", regs + CCM_CSCMR2, 11, 1);
 	clks[IMX5_CLK_LDB_DI1_SEL]	= imx_clk_mux_p("ldb_di1_sel", regs + CCM_CSCMR2, 9, 1,
 						mx53_ldb_di1_sel, ARRAY_SIZE(mx53_ldb_di1_sel));
 	clks[IMX5_CLK_DI_PLL4_PODF]	= imx_clk_divider("di_pll4_podf", "pll4_sw", regs + CCM_CDCDR, 16, 3);
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index f18ad40..597e502 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -300,9 +300,9 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 	clks[IMX6QDL_CLK_IPU1_PODF]        = imx_clk_divider("ipu1_podf",        "ipu1_sel",          cb + 0x3c, 11, 3);
 	clks[IMX6QDL_CLK_IPU2_PODF]        = imx_clk_divider("ipu2_podf",        "ipu2_sel",          cb + 0x3c, 16, 3);
 	clks[IMX6QDL_CLK_LDB_DI0_DIV_3_5]  = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
+	clks[IMX6QDL_CLK_LDB_DI0_PODF]     = imx_clk_divider_np("ldb_di0_podf", "ldb_di0_div_3_5", cb + 0x20, 10, 1);
 	clks[IMX6QDL_CLK_LDB_DI1_DIV_3_5]  = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
+	clks[IMX6QDL_CLK_LDB_DI1_PODF]     = imx_clk_divider_np("ldb_di1_podf", "ldb_di1_div_3_5", cb + 0x20, 11, 1);
 	clks[IMX6QDL_CLK_IPU1_DI0_PRE]     = imx_clk_divider("ipu1_di0_pre",     "ipu1_di0_pre_sel",  cb + 0x34, 3,  3);
 	clks[IMX6QDL_CLK_IPU1_DI1_PRE]     = imx_clk_divider("ipu1_di1_pre",     "ipu1_di1_pre_sel",  cb + 0x34, 12, 3);
 	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index c8da2fa..c5913e1 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -10,6 +10,12 @@ static inline struct clk *imx_clk_divider(const char *name, const char *parent,
 	return clk_divider(name, parent, reg, shift, width, CLK_SET_RATE_PARENT);
 }
 
+static inline struct clk *imx_clk_divider_np(const char *name, const char *parent,
+		void __iomem *reg, u8 shift, u8 width)
+{
+	return clk_divider(name, parent, reg, shift, width, 0);
+}
+
 static inline struct clk *imx_clk_divider_table(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 width,
 		const struct clk_div_table *table)
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index a41eb1a..2340b9b 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -68,7 +68,7 @@ struct imx_ldb_channel {
 
 struct imx_ldb_data {
 	void __iomem *base;
-	int (*prepare)(struct imx_ldb_channel *imx_ldb_ch, int di);
+	int (*prepare)(struct imx_ldb_channel *imx_ldb_ch, int di, unsigned long clkrate);
 	unsigned ipu_mask;
 	int have_mux;
 };
@@ -114,7 +114,7 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 {
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
 
-	ldb->soc_data->prepare(imx_ldb_ch, di);
+	ldb->soc_data->prepare(imx_ldb_ch, di, PICOS2KHZ(mode->pixclock) * 1000UL);
 
 	/* FIXME - assumes straight connections DI0 --> CH0, DI1 --> CH1 */
 	if (imx_ldb_ch == &ldb->channel[0]) {
@@ -146,7 +146,8 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 	return 0;
 }
 
-static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
+static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
+			     unsigned long pixclk)
 {
 	struct clk *diclk, *ldbclk;
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
@@ -155,6 +156,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	void __iomem *gpr3 = (void *)MX6_IOMUXC_BASE_ADDR + 0xc;
 	uint32_t val;
 	int shift;
+	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 
 	ipuno = ((di >> 1) & 1) + 1;
 	dino = di & 0x1;
@@ -181,6 +183,11 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 		return ret;
 	}
 
+	if (!dual)
+		pixclk *= 2;
+
+	clk_set_rate(clk_get_parent(ldbclk), pixclk);
+
 	val = readl(gpr3);
 	shift = (imx_ldb_ch->chno == 0) ? 6 : 8;
 	val &= ~(3 << shift);
@@ -190,12 +197,14 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 	return 0;
 }
 
-static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
+static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
+			     unsigned long pixclk)
 {
 	struct clk *diclk, *ldbclk;
 	struct imx_ldb *ldb = imx_ldb_ch->ldb;
 	int ret, dino;
 	char *clkname;
+	int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 
 	dino = di & 0x1;
 
@@ -221,6 +230,11 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di)
 		return ret;
 	}
 
+	if (!dual)
+		pixclk *= 2;
+
+	clk_set_rate(clk_get_parent(ldbclk), pixclk);
+
 	return 0;
 }
 
@@ -299,6 +313,10 @@ static int imx_ldb_probe(struct device_d *dev)
 	imx_ldb->base = devtype->base;
 	imx_ldb->soc_data = devtype;
 
+	dual = of_property_read_bool(np, "fsl,dual-channel");
+	if (dual)
+		imx_ldb->ldb_ctrl |= LDB_SPLIT_MODE_EN;
+
 	for_each_child_of_node(np, child) {
 		struct imx_ldb_channel *channel;
 		struct device_node *port;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
