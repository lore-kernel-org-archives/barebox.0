Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k90AM-0004N0-H3
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 06:04:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Aug 2020 08:04:39 +0200
Message-Id: <20200821060439.30631-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ddr: imx: Cleanup debug messages
To: Barebox List <barebox@lists.infradead.org>

Use pr_debug and pr_fmt to get a unified prefix for all messages. Also,
remove #define DEBUG at the beginning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx8m/ddr_init.c     | 20 +++++++++++---------
 drivers/ddr/imx8m/ddrphy_csr.c   |  2 ++
 drivers/ddr/imx8m/ddrphy_train.c |  6 ++++--
 drivers/ddr/imx8m/ddrphy_utils.c |  2 ++
 drivers/ddr/imx8m/helper.c       |  2 ++
 5 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 374601b786..d4efee6133 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -2,7 +2,9 @@
 /*
  * Copyright 2018-2019 NXP
  */
-#define DEBUG
+
+#define pr_fmt(fmt) "imx8m-ddr: " fmt
+
 #include <common.h>
 #include <errno.h>
 #include <io.h>
@@ -29,9 +31,9 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	unsigned int tmp, initial_drate, target_freq;
 	int ret;
 
-	debug("DDRINFO: start DRAM init\n");
+	pr_debug("start DRAM init\n");
 
-	debug("DDRINFO: cfg clk\n");
+	pr_debug("cfg clk\n");
 
 	/* disable iso */
 	reg32_write(0x303A00EC, 0x0000ffff); /* PGC_CPU_MAPPING */
@@ -45,9 +47,9 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	reg32_write(SRC_DDRC_RCR_ADDR, 0x8F000006);
 
 	/* Step2: Program the dwc_ddr_umctl2 registers */
-	debug("DDRINFO: ddrc config start\n");
+	pr_debug("ddrc config start\n");
 	ddr_cfg_umctl2(dram_timing->ddrc_cfg, dram_timing->ddrc_cfg_num);
-	debug("DDRINFO: ddrc config done\n");
+	pr_debug("ddrc config done\n");
 
 	/* Step3: De-assert reset signal(core_ddrc_rstn & aresetn_n) */
 	reg32_write(SRC_DDRC_RCR_ADDR, 0x8F000004);
@@ -90,13 +92,13 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 	 * Step8 ~ Step13: Start PHY initialization and training by
 	 * accessing relevant PUB registers
 	 */
-	debug("DDRINFO:ddrphy config start\n");
+	pr_debug("ddrphy config start\n");
 
 	ret = ddr_cfg_phy(dram_timing);
 	if (ret)
 		return ret;
 
-	debug("DDRINFO: ddrphy config done\n");
+	pr_debug("ddrphy config done\n");
 
 	/*
 	 * step14 CalBusy.0 =1, indicates the calibrator is actively
@@ -106,7 +108,7 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 		tmp = reg32_read(DDRPHY_CalBusy(0));
 	} while ((tmp & 0x1));
 
-	debug("DDRINFO:ddrphy calibration done\n");
+	pr_debug("ddrphy calibration done\n");
 
 	/* Step15: Set SWCTL.sw_done to 0 */
 	reg32_write(DDRC_SWCTL(0), 0x00000000);
@@ -158,7 +160,7 @@ static int imx8m_ddr_init(unsigned long src_ddrc_rcr,
 
 	/* enable port 0 */
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
-	debug("DDRINFO: ddrmix config done\n");
+	pr_debug(" ddrmix config done\n");
 
 	return 0;
 }
diff --git a/drivers/ddr/imx8m/ddrphy_csr.c b/drivers/ddr/imx8m/ddrphy_csr.c
index 98ac5db3c0..2e08d111be 100644
--- a/drivers/ddr/imx8m/ddrphy_csr.c
+++ b/drivers/ddr/imx8m/ddrphy_csr.c
@@ -3,6 +3,8 @@
  * Copyright 2018 NXP
  */
 
+#define pr_fmt(fmt) "imx8m-ddr: " fmt
+
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
 
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx8m/ddrphy_train.c
index c2238cc66b..ca0bb2f57b 100644
--- a/drivers/ddr/imx8m/ddrphy_train.c
+++ b/drivers/ddr/imx8m/ddrphy_train.c
@@ -2,7 +2,9 @@
 /*
  * Copyright 2018 NXP
  */
-#define DEBUG
+
+#define pr_fmt(fmt) "imx8m-ddr: " fmt
+
 #include <common.h>
 #include <linux/kernel.h>
 #include <soc/imx8m/ddr.h>
@@ -50,7 +52,7 @@ int ddr_cfg_phy(struct dram_timing_info *dram_timing)
 	/* load the frequency setpoint message block config */
 	fsp_msg = dram_timing->fsp_msg;
 	for (i = 0; i < dram_timing->fsp_msg_num; i++) {
-		debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
+		pr_debug("DRAM PHY training for %dMTS\n", fsp_msg->drate);
 		/* set dram PHY input clocks to desired frequency */
 		ddrphy_init_set_dfi_clk(fsp_msg->drate);
 
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 651bb4b698..222b61be3d 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -3,6 +3,8 @@
 * Copyright 2018 NXP
 */
 
+#define pr_fmt(fmt) "imx8m-ddr: " fmt
+
 #include <common.h>
 #include <errno.h>
 #include <io.h>
diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx8m/helper.c
index 9e32ef9376..209c55f552 100644
--- a/drivers/ddr/imx8m/helper.c
+++ b/drivers/ddr/imx8m/helper.c
@@ -3,6 +3,8 @@
  * Copyright 2018 NXP
  */
 
+#define pr_fmt(fmt) "imx8m-ddr: " fmt
+
 #include <common.h>
 #include <io.h>
 #include <errno.h>
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
