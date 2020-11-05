Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kafxy-00087z-QR
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 14:10:20 +0000
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kafxw-0005id-5O
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 15:10:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  5 Nov 2020 15:10:14 +0100
Message-Id: <20201105141015.1695515-2-l.stach@pengutronix.de>
In-Reply-To: <20201105141015.1695515-1-l.stach@pengutronix.de>
References: <20201105141015.1695515-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ddr: imx8m: clean up entry points
To: barebox@lists.infradead.org

The DDRC address in the memory map and the TF-A parameter store address
is the same for all i.MX8M* SoCs. The only difference (for now) is in the
power up sequence. Add a enum for the DDRC type, so we can take different
code paths in imx8m_ddr_init() depending on the SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c |  2 +-
 drivers/ddr/imx8m/ddr_init.c              | 82 ++++++++++-------------
 include/soc/imx8m/ddr.h                   |  7 ++
 3 files changed, 45 insertions(+), 46 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index e4f994a1d1b8..3298ded5866d 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -118,7 +118,7 @@ static void start_atf(void)
 
 	power_init_board();
 
-	imx8mm_ddr_init(&imx8mp_evk_dram_timing);
+	imx8mp_ddr_init(&imx8mp_evk_dram_timing);
 
 	imx8mp_get_boot_source(&src, &instance);
 	switch (src) {
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index bc64e7c17e1a..230fa7ef4266 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -13,8 +13,6 @@
 #include <mach/imx8m-regs.h>
 #include <mach/imx8m-ccm-regs.h>
 
-#define SRC_DDRC_RCR_ADDR MX8MQ_SRC_DDRC_RCR_ADDR
-
 static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 {
 	int i = 0;
@@ -25,14 +23,37 @@ static void ddr_cfg_umctl2(struct dram_cfg_param *ddrc_cfg, int num)
 	}
 }
 
-static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
-			  struct dram_timing_info *dram_timing)
+/*
+ * We store the timing parameters here. the TF-A will pick these up.
+ * Note that the timing used we leave the driver with is a PLL bypass 25MHz
+ * mode. So if your board runs horribly slow you'll likely have to provide a
+ * TF-A binary.
+ */
+#define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
+
+static int imx8m_ddr_init(struct dram_timing_info *dram_timing,
+			  enum ddrc_type type)
 {
+	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
 	unsigned int tmp, initial_drate, target_freq;
 	int ret;
 
 	pr_debug("start DRAM init\n");
 
+	/* Step1: Follow the power up procedure */
+	switch (type) {
+	case DDRC_TYPE_MQ:
+		reg32_write(src_ddrc_rcr + 0x04, 0x8f00000f);
+		reg32_write(src_ddrc_rcr, 0x8f00000f);
+		reg32_write(src_ddrc_rcr + 0x04, 0x8f000000);
+		break;
+	case DDRC_TYPE_MM:
+	case DDRC_TYPE_MP:
+		reg32_write(src_ddrc_rcr, 0x8f00001f);
+		reg32_write(src_ddrc_rcr, 0x8f00000f);
+		break;
+	}
+
 	pr_debug("cfg clk\n");
 
 	/* disable iso */
@@ -44,7 +65,7 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	ddrphy_init_set_dfi_clk(initial_drate);
 
 	/* D-aasert the presetn */
-	reg32_write(SRC_DDRC_RCR_ADDR, 0x8F000006);
+	reg32_write(src_ddrc_rcr, 0x8F000006);
 
 	/* Step2: Program the dwc_ddr_umctl2 registers */
 	pr_debug("ddrc config start\n");
@@ -52,8 +73,8 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	pr_debug("ddrc config done\n");
 
 	/* Step3: De-assert reset signal(core_ddrc_rstn & aresetn_n) */
-	reg32_write(SRC_DDRC_RCR_ADDR, 0x8F000004);
-	reg32_write(SRC_DDRC_RCR_ADDR, 0x8F000000);
+	reg32_write(src_ddrc_rcr, 0x8F000004);
+	reg32_write(src_ddrc_rcr, 0x8F000000);
 
 	/*
 	 * Step4: Disable auto-refreshes, self-refresh, powerdown, and
@@ -162,52 +183,23 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
 	pr_debug(" ddrmix config done\n");
 
+	/* save the dram timing config into memory */
+	dram_config_save(dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
+
 	return 0;
 }
 
-/*
- * We store the timing parameters here. the TF-A will pick these up.
- * Note that the timing used we leave the driver with is a PLL bypass 25MHz
- * mode. So if your board runs horribly slow you'll likely have to provide a
- * TF-A binary.
- */
-#define IMX8M_SAVED_DRAM_TIMING_BASE		0x180000
-
 int imx8mm_ddr_init(struct dram_timing_info *dram_timing)
 {
-	unsigned long src_ddrc_rcr = MX8M_SRC_DDRC_RCR_ADDR;
-	int ret;
-
-	/* Step1: Follow the power up procedure */
-	reg32_write(src_ddrc_rcr, 0x8f00001f);
-	reg32_write(src_ddrc_rcr, 0x8f00000f);
-
-	ret = imx8m_ddr_init(src_ddrc_rcr, dram_timing);
-	if (ret)
-		return ret;
-
-	/* save the dram timing config into memory */
-	dram_config_save(dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
-
-	return 0;
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MM);
 }
 
 int imx8mq_ddr_init(struct dram_timing_info *dram_timing)
 {
-	unsigned long src_ddrc_rcr = MX8MQ_SRC_DDRC_RCR_ADDR;
-	int ret;
-
-	/* Step1: Follow the power up procedure */
-	reg32_write(src_ddrc_rcr + 0x04, 0x8f00000f);
-	reg32_write(src_ddrc_rcr, 0x8f00000f);
-	reg32_write(src_ddrc_rcr + 0x04, 0x8f000000);
-
-	ret = imx8m_ddr_init(src_ddrc_rcr, dram_timing);
-	if (ret)
-		return ret;
-
-	/* save the dram timing config into memory */
-	dram_config_save(dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MQ);
+}
 
-	return 0;
+int imx8mp_ddr_init(struct dram_timing_info *dram_timing)
+{
+	return imx8m_ddr_init(dram_timing, DDRC_TYPE_MP);
 }
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 5b2747ed1f7b..1408ffcfb557 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -363,8 +363,15 @@ struct dram_timing_info {
 
 extern struct dram_timing_info dram_timing;
 
+enum ddrc_type {
+	DDRC_TYPE_MM,
+	DDRC_TYPE_MQ,
+	DDRC_TYPE_MP,
+};
+
 int imx8mm_ddr_init(struct dram_timing_info *timing_info);
 int imx8mq_ddr_init(struct dram_timing_info *timing_info);
+int imx8mp_ddr_init(struct dram_timing_info *timing_info);
 int ddr_cfg_phy(struct dram_timing_info *timing_info);
 void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
