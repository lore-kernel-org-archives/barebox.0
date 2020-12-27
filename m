Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kte4R-0003Rn-O1
 for barebox@lists.infradead.org; Sun, 27 Dec 2020 21:59:26 +0000
Received: from astat.fritz.box (a89-183-86-10.net-htp.de [89.183.86.10])
 by lynxeye.de (Postfix) with ESMTPA id 5EDF2E74225
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:50:46 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 27 Dec 2020 22:50:38 +0100
Message-Id: <20201227215042.101009-1-dev@lynxeye.de>
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
Subject: [PATCH 1/5] ddr: imx8m: implement i.MX8MQ support
To: barebox@lists.infradead.org

The i.MX8MQ uses a different PLL type than the later i.MX8M family
members, so the PLL setup did not actually work on this SoC. In U-Boot
the used PLL setup routine is a compile time decision. As we want
our DRAM init code to work for multi-image builds, this passes the
SoC type through to the PLL init, so we can use the correct setup
routine depending on the SoC we are running on.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/ddr/imx8m/ddr_init.c     |   4 +-
 drivers/ddr/imx8m/ddrphy_train.c |   4 +-
 drivers/ddr/imx8m/ddrphy_utils.c | 107 ++++++++++++++++++++++++++++---
 include/soc/imx8m/ddr.h          |   4 +-
 4 files changed, 104 insertions(+), 15 deletions(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 1cd7b7406dc7..34da44af6446 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -62,7 +62,7 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	initial_drate = dram_timing->fsp_msg[0].drate;
 	/* default to the frequency point 0 clock */
-	ddrphy_init_set_dfi_clk(initial_drate);
+	ddrphy_init_set_dfi_clk(initial_drate, type);
 
 	/* D-aasert the presetn */
 	reg32_write(src_ddrc_rcr, 0x8F000006);
@@ -115,7 +115,7 @@ static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 	 */
 	pr_debug("ddrphy config start\n");
 
-	ret = ddr_cfg_phy(dram_timing);
+	ret = ddr_cfg_phy(dram_timing, type);
 	if (ret)
 		return ret;
 
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index 9280c853aa1c..a4677f903c6b 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -31,7 +31,7 @@ void ddr_load_train_code(enum fw_type type)
 			       DDRC_PHY_DMEM, dmem, dsize);
 }
 
-int ddr_cfg_phy(struct dram_timing_info *dram_timing)
+int ddr_cfg_phy(struct dram_timing_info *dram_timing, enum ddrc_type type)
 {
 	struct dram_cfg_param *dram_cfg;
 	struct dram_fsp_msg *fsp_msg;
@@ -54,7 +54,7 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing)
 	for (i = 0; i < dram_timing->fsp_msg_num; i++) {
 		pr_debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
 		/* set dram PHY input clocks to desired frequency */
-		ddrphy_init_set_dfi_clk(fsp_msg->drate);
+		ddrphy_init_set_dfi_clk(fsp_msg->drate, type);
 
 		/* load the dram training firmware image */
 		dwc_ddrphy_apb_wr(0xd0000, 0x0);
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index c48372491015..9a4e1a22ee5e 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -214,7 +214,7 @@ static struct imx_int_pll_rate_table *fracpll(u32 freq)
 	return NULL;
 }
 
-static int dram_pll_init(u32 freq)
+static int dram_frac_pll_init(u32 freq)
 {
 	volatile int i;
 	u32 tmp;
@@ -261,35 +261,124 @@ static int dram_pll_init(u32 freq)
 	return 0;
 }
 
-void ddrphy_init_set_dfi_clk(unsigned int drate)
+#define SSCG_PLL_LOCK			BIT(31)
+#define SSCG_PLL_DRAM_PLL_CLKE		BIT(9)
+#define SSCG_PLL_PD			BIT(7)
+#define SSCG_PLL_BYPASS1		BIT(5)
+#define SSCG_PLL_BYPASS2		BIT(4)
+
+#define SSCG_PLL_REF_DIVR2_MASK		(0x3f << 19)
+#define SSCG_PLL_REF_DIVR2_VAL(n)	(((n) << 19) & SSCG_PLL_REF_DIVR2_MASK)
+#define SSCG_PLL_FEEDBACK_DIV_F1_MASK	(0x3f << 13)
+#define SSCG_PLL_FEEDBACK_DIV_F1_VAL(n)	(((n) << 13) & SSCG_PLL_FEEDBACK_DIV_F1_MASK)
+#define SSCG_PLL_FEEDBACK_DIV_F2_MASK	(0x3f << 7)
+#define SSCG_PLL_FEEDBACK_DIV_F2_VAL(n)	(((n) << 7) & SSCG_PLL_FEEDBACK_DIV_F2_MASK)
+#define SSCG_PLL_OUTPUT_DIV_VAL_MASK	(0x3f << 1)
+#define SSCG_PLL_OUTPUT_DIV_VAL(n)	(((n) << 1) & SSCG_PLL_OUTPUT_DIV_VAL_MASK)
+
+static int dram_sscg_pll_init(u32 freq)
+{
+	u32 val;
+	void __iomem *pll_base = IOMEM(MX8M_ANATOP_BASE_ADDR) + 0x60;
+
+	/* Bypass */
+	setbits_le32(pll_base, SSCG_PLL_BYPASS1 | SSCG_PLL_BYPASS2);
+
+	val = readl(pll_base + 0x8);
+	val &= ~(SSCG_PLL_OUTPUT_DIV_VAL_MASK |
+		 SSCG_PLL_FEEDBACK_DIV_F2_MASK |
+		 SSCG_PLL_FEEDBACK_DIV_F1_MASK |
+		 SSCG_PLL_REF_DIVR2_MASK);
+
+	switch (freq) {
+	case MHZ(800):
+		val |= SSCG_PLL_OUTPUT_DIV_VAL(0);
+		val |= SSCG_PLL_FEEDBACK_DIV_F2_VAL(11);
+		val |= SSCG_PLL_FEEDBACK_DIV_F1_VAL(39);
+		val |= SSCG_PLL_REF_DIVR2_VAL(29);
+		break;
+	case MHZ(600):
+		val |= SSCG_PLL_OUTPUT_DIV_VAL(1);
+		val |= SSCG_PLL_FEEDBACK_DIV_F2_VAL(17);
+		val |= SSCG_PLL_FEEDBACK_DIV_F1_VAL(39);
+		val |= SSCG_PLL_REF_DIVR2_VAL(29);
+		break;
+	case MHZ(400):
+		val |= SSCG_PLL_OUTPUT_DIV_VAL(1);
+		val |= SSCG_PLL_FEEDBACK_DIV_F2_VAL(11);
+		val |= SSCG_PLL_FEEDBACK_DIV_F1_VAL(39);
+		val |= SSCG_PLL_REF_DIVR2_VAL(29);
+		break;
+	case MHZ(167):
+		val |= SSCG_PLL_OUTPUT_DIV_VAL(3);
+		val |= SSCG_PLL_FEEDBACK_DIV_F2_VAL(8);
+		val |= SSCG_PLL_FEEDBACK_DIV_F1_VAL(45);
+		val |= SSCG_PLL_REF_DIVR2_VAL(30);
+		break;
+	default:
+		break;
+	}
+
+	writel(val, pll_base + 0x8);
+
+	/* Clear power down bit */
+	clrbits_le32(pll_base, SSCG_PLL_PD);
+	/* Enable PLL  */
+	setbits_le32(pll_base, SSCG_PLL_DRAM_PLL_CLKE);
+
+	/* Clear bypass */
+	clrbits_le32(pll_base, SSCG_PLL_BYPASS1);
+	udelay(100);
+	clrbits_le32(pll_base, SSCG_PLL_BYPASS2);
+	/* Wait lock */
+	while (!(readl(pll_base) & SSCG_PLL_LOCK))
+		;
+
+	return 0;
+}
+
+static int dram_pll_init(u32 freq, enum ddrc_type type)
+{
+	switch (type) {
+	case DDRC_TYPE_MQ:
+		return dram_sscg_pll_init(freq);
+	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MP:
+		return dram_frac_pll_init(freq);
+	default:
+		return -ENODEV;
+	}
+}
+
+void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type type)
 {
 	switch (drate) {
 	case 4000:
-		dram_pll_init(MHZ(1000));
+		dram_pll_init(MHZ(1000), type);
 		dram_disable_bypass();
 		break;
 	case 3200:
-		dram_pll_init(MHZ(800));
+		dram_pll_init(MHZ(800), type);
 		dram_disable_bypass();
 		break;
 	case 3000:
-		dram_pll_init(MHZ(750));
+		dram_pll_init(MHZ(750), type);
 		dram_disable_bypass();
 		break;
 	case 2400:
-		dram_pll_init(MHZ(600));
+		dram_pll_init(MHZ(600), type);
 		dram_disable_bypass();
 		break;
 	case 1600:
-		dram_pll_init(MHZ(400));
+		dram_pll_init(MHZ(400), type);
 		dram_disable_bypass();
 		break;
 	case 1066:
-		dram_pll_init(MHZ(266));
+		dram_pll_init(MHZ(266),type);
 		dram_disable_bypass();
 		break;
 	case 667:
-		dram_pll_init(MHZ(167));
+		dram_pll_init(MHZ(167), type);
 		dram_disable_bypass();
 		break;
 	case 400:
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index a5a610909212..78b15f1d461a 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -372,14 +372,14 @@ enum ddrc_type {
 int imx8mm_ddr_init(struct dram_timing_info *timing_info);
 int imx8mq_ddr_init(struct dram_timing_info *timing_info);
 int imx8mp_ddr_init(struct dram_timing_info *timing_info);
-int ddr_cfg_phy(struct dram_timing_info *timing_info);
+int ddr_cfg_phy(struct dram_timing_info *timing_info, enum ddrc_type type);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
 /* utils function for ddr phy training */
 int wait_ddrphy_training_complete(void);
-void ddrphy_init_set_dfi_clk(unsigned int drate);
+void ddrphy_init_set_dfi_clk(unsigned int drate, enum ddrc_type type);
 void ddrphy_init_read_msg_block(enum fw_type type);
 
 void update_umctl2_rank_space_setting(unsigned int pstat_num,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
