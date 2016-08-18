Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baO8g-0000N3-H7
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 14:17:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Aug 2016 16:17:19 +0200
Message-Id: <1471529842-14479-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
References: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] mtd: nand: add ONFI timing mode to nand_timings converter
To: Barebox List <barebox@lists.infradead.org>

Ported from Linux commit 974647e:
| Add a converter to retrieve NAND timings from an ONFI NAND timing mode.
| At the moment, only SDR NAND timings are supported.
|
| Signed-off-by: Boris BREZILLON <boris.brezillon@free-electrons.com>
| Signed-off-by: Brian Norris <computersforpeace@gmail.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Makefile       |   2 +-
 drivers/mtd/nand/nand_timings.c | 251 ++++++++++++++++++++++++++++++++++++++++
 include/linux/mtd/nand.h        |   3 +
 3 files changed, 255 insertions(+), 1 deletion(-)
 create mode 100644 drivers/mtd/nand/nand_timings.c

diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 8809238..6088512 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -3,7 +3,7 @@
 obj-$(CONFIG_NAND)			+= nand_ecc.o
 obj-$(CONFIG_NAND_ECC_BCH)		+= nand_bch.o
 obj-$(CONFIG_MTD_NAND_IDS)		+= nand_ids.o
-obj-$(CONFIG_NAND)			+= nand_base.o nand-bb.o
+obj-$(CONFIG_NAND)			+= nand_base.o nand-bb.o nand_timings.o
 obj-$(CONFIG_NAND_BBT)			+= nand_bbt.o
 
 obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
diff --git a/drivers/mtd/nand/nand_timings.c b/drivers/mtd/nand/nand_timings.c
new file mode 100644
index 0000000..7a93951
--- /dev/null
+++ b/drivers/mtd/nand/nand_timings.c
@@ -0,0 +1,251 @@
+/*
+ *  Copyright (C) 2014 Free Electrons
+ *
+ *  Author: Boris BREZILLON <boris.brezillon@free-electrons.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+#include <linux/kernel.h>
+#include <linux/err.h>
+#include <linux/mtd/nand.h>
+
+static const struct nand_sdr_timings onfi_sdr_timings[] = {
+	/* Mode 0 */
+	{
+		.tADL_min = 200000,
+		.tALH_min = 20000,
+		.tALS_min = 50000,
+		.tAR_min = 25000,
+		.tCEA_max = 100000,
+		.tCEH_min = 20000,
+		.tCH_min = 20000,
+		.tCHZ_max = 100000,
+		.tCLH_min = 20000,
+		.tCLR_min = 20000,
+		.tCLS_min = 50000,
+		.tCOH_min = 0,
+		.tCS_min = 70000,
+		.tDH_min = 20000,
+		.tDS_min = 40000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 10000,
+		.tITC_max = 1000000,
+		.tRC_min = 100000,
+		.tREA_max = 40000,
+		.tREH_min = 30000,
+		.tRHOH_min = 0,
+		.tRHW_min = 200000,
+		.tRHZ_max = 200000,
+		.tRLOH_min = 0,
+		.tRP_min = 50000,
+		.tRST_max = 250000000000,
+		.tWB_max = 200000,
+		.tRR_min = 40000,
+		.tWC_min = 100000,
+		.tWH_min = 30000,
+		.tWHR_min = 120000,
+		.tWP_min = 50000,
+		.tWW_min = 100000,
+	},
+	/* Mode 1 */
+	{
+		.tADL_min = 100000,
+		.tALH_min = 10000,
+		.tALS_min = 25000,
+		.tAR_min = 10000,
+		.tCEA_max = 45000,
+		.tCEH_min = 20000,
+		.tCH_min = 10000,
+		.tCHZ_max = 50000,
+		.tCLH_min = 10000,
+		.tCLR_min = 10000,
+		.tCLS_min = 25000,
+		.tCOH_min = 15000,
+		.tCS_min = 35000,
+		.tDH_min = 10000,
+		.tDS_min = 20000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 50000,
+		.tREA_max = 30000,
+		.tREH_min = 15000,
+		.tRHOH_min = 15000,
+		.tRHW_min = 100000,
+		.tRHZ_max = 100000,
+		.tRLOH_min = 0,
+		.tRP_min = 25000,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tWC_min = 45000,
+		.tWH_min = 15000,
+		.tWHR_min = 80000,
+		.tWP_min = 25000,
+		.tWW_min = 100000,
+	},
+	/* Mode 2 */
+	{
+		.tADL_min = 100000,
+		.tALH_min = 10000,
+		.tALS_min = 15000,
+		.tAR_min = 10000,
+		.tCEA_max = 30000,
+		.tCEH_min = 20000,
+		.tCH_min = 10000,
+		.tCHZ_max = 50000,
+		.tCLH_min = 10000,
+		.tCLR_min = 10000,
+		.tCLS_min = 15000,
+		.tCOH_min = 15000,
+		.tCS_min = 25000,
+		.tDH_min = 5000,
+		.tDS_min = 15000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 35000,
+		.tREA_max = 25000,
+		.tREH_min = 15000,
+		.tRHOH_min = 15000,
+		.tRHW_min = 100000,
+		.tRHZ_max = 100000,
+		.tRLOH_min = 0,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tRP_min = 17000,
+		.tWC_min = 35000,
+		.tWH_min = 15000,
+		.tWHR_min = 80000,
+		.tWP_min = 17000,
+		.tWW_min = 100000,
+	},
+	/* Mode 3 */
+	{
+		.tADL_min = 100000,
+		.tALH_min = 5000,
+		.tALS_min = 10000,
+		.tAR_min = 10000,
+		.tCEA_max = 25000,
+		.tCEH_min = 20000,
+		.tCH_min = 5000,
+		.tCHZ_max = 50000,
+		.tCLH_min = 5000,
+		.tCLR_min = 10000,
+		.tCLS_min = 10000,
+		.tCOH_min = 15000,
+		.tCS_min = 25000,
+		.tDH_min = 5000,
+		.tDS_min = 10000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 30000,
+		.tREA_max = 20000,
+		.tREH_min = 10000,
+		.tRHOH_min = 15000,
+		.tRHW_min = 100000,
+		.tRHZ_max = 100000,
+		.tRLOH_min = 0,
+		.tRP_min = 15000,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tWC_min = 30000,
+		.tWH_min = 10000,
+		.tWHR_min = 80000,
+		.tWP_min = 15000,
+		.tWW_min = 100000,
+	},
+	/* Mode 4 */
+	{
+		.tADL_min = 70000,
+		.tALH_min = 5000,
+		.tALS_min = 10000,
+		.tAR_min = 10000,
+		.tCEA_max = 25000,
+		.tCEH_min = 20000,
+		.tCH_min = 5000,
+		.tCHZ_max = 30000,
+		.tCLH_min = 5000,
+		.tCLR_min = 10000,
+		.tCLS_min = 10000,
+		.tCOH_min = 15000,
+		.tCS_min = 20000,
+		.tDH_min = 5000,
+		.tDS_min = 10000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 25000,
+		.tREA_max = 20000,
+		.tREH_min = 10000,
+		.tRHOH_min = 15000,
+		.tRHW_min = 100000,
+		.tRHZ_max = 100000,
+		.tRLOH_min = 5000,
+		.tRP_min = 12000,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tWC_min = 25000,
+		.tWH_min = 10000,
+		.tWHR_min = 80000,
+		.tWP_min = 12000,
+		.tWW_min = 100000,
+	},
+	/* Mode 5 */
+	{
+		.tADL_min = 70000,
+		.tALH_min = 5000,
+		.tALS_min = 10000,
+		.tAR_min = 10000,
+		.tCEA_max = 25000,
+		.tCEH_min = 20000,
+		.tCH_min = 5000,
+		.tCHZ_max = 30000,
+		.tCLH_min = 5000,
+		.tCLR_min = 10000,
+		.tCLS_min = 10000,
+		.tCOH_min = 15000,
+		.tCS_min = 15000,
+		.tDH_min = 5000,
+		.tDS_min = 7000,
+		.tFEAT_max = 1000000,
+		.tIR_min = 0,
+		.tITC_max = 1000000,
+		.tRC_min = 20000,
+		.tREA_max = 16000,
+		.tREH_min = 7000,
+		.tRHOH_min = 15000,
+		.tRHW_min = 100000,
+		.tRHZ_max = 100000,
+		.tRLOH_min = 5000,
+		.tRP_min = 10000,
+		.tRR_min = 20000,
+		.tRST_max = 500000000,
+		.tWB_max = 100000,
+		.tWC_min = 20000,
+		.tWH_min = 7000,
+		.tWHR_min = 80000,
+		.tWP_min = 10000,
+		.tWW_min = 100000,
+	},
+};
+
+/**
+ * onfi_async_timing_mode_to_sdr_timings - [NAND Interface] Retrieve NAND
+ * timings according to the given ONFI timing mode
+ * @mode: ONFI timing mode
+ */
+const struct nand_sdr_timings *onfi_async_timing_mode_to_sdr_timings(int mode)
+{
+	if (mode < 0 || mode >= ARRAY_SIZE(onfi_sdr_timings))
+		return ERR_PTR(-EINVAL);
+
+	return &onfi_sdr_timings[mode];
+}
diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 5c237f0..66c936e 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -791,4 +791,7 @@ struct nand_sdr_timings {
 	u32 tWW_min;
 };
 
+/* get timing characteristics from ONFI timing mode. */
+const struct nand_sdr_timings *onfi_async_timing_mode_to_sdr_timings(int mode);
+
 #endif /* __LINUX_MTD_NAND_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
