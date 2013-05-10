Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uag3M-00007D-Dv
 for barebox@lists.infradead.org; Fri, 10 May 2013 05:39:38 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 10 May 2013 09:39:08 +0400
Message-Id: <1368164349-24479-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: OMAP MCI: Move TWL6030 power initialization into
 OMAP directory
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-omap/omap4_twl6030_mmc.c | 18 ++++++++++++++++--
 drivers/mci/Makefile                   |  1 -
 drivers/mci/twl6030.c                  | 29 -----------------------------
 include/mci/twl6030.h                  | 10 ----------
 4 files changed, 16 insertions(+), 42 deletions(-)
 delete mode 100644 drivers/mci/twl6030.c
 delete mode 100644 include/mci/twl6030.h

diff --git a/arch/arm/mach-omap/omap4_twl6030_mmc.c b/arch/arm/mach-omap/omap4_twl6030_mmc.c
index 7d71eb8..3d34a44 100644
--- a/arch/arm/mach-omap/omap4_twl6030_mmc.c
+++ b/arch/arm/mach-omap/omap4_twl6030_mmc.c
@@ -16,7 +16,7 @@
 #include <common.h>
 #include <io.h>
 
-#include <mci/twl6030.h>
+#include <mfd/twl6030.h>
 
 /* MMC voltage */
 #define OMAP4_CONTROL_PBIASLITE			0x4A100600
@@ -24,6 +24,16 @@
 #define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
 #define OMAP4_MMC1_PWRDNZ				(1<<26)
 
+static void twl6030_mci_write(u8 address, u8 data)
+{
+	int ret;
+	struct twl6030 *twl6030 = twl6030_get();
+
+	ret = twl6030_reg_write(twl6030, address, data);
+	if (ret != 0)
+		printf("TWL6030 Write[0x%x] Error %d\n", address, ret);
+}
+
 void set_up_mmc_voltage_omap4(void)
 {
 	u32 value;
@@ -32,7 +42,11 @@ void set_up_mmc_voltage_omap4(void)
 	value &= ~(OMAP4_MMC1_PBIASLITE_PWRDNZ | OMAP4_MMC1_PWRDNZ);
 	writel(value, OMAP4_CONTROL_PBIASLITE);
 
-	twl6030_mci_power_init();
+	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_VOLTAGE,
+			  TWL6030_VMMC_VSEL_0 | TWL6030_VMMC_VSEL_2 |
+			  TWL6030_VMMC_VSEL_4);
+	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_STATE,
+			  TWL6030_VMMC_STATE0 | TWL6030_VMMC_GRP_APP);
 
 	value = readl(OMAP4_CONTROL_PBIASLITE);
 	value |= (OMAP4_MMC1_PBIASLITE_VMODE | OMAP4_MMC1_PBIASLITE_PWRDNZ |
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index d46d5f5..0fc31af 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -4,7 +4,6 @@ obj-$(CONFIG_MCI_S3C) += s3c.o
 obj-$(CONFIG_MCI_IMX) += imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC) += imx-esdhc.o
 obj-$(CONFIG_MCI_OMAP_HSMMC) += omap_hsmmc.o
-obj-$(CONFIG_MFD_TWL6030) += twl6030.o
 obj-$(CONFIG_MCI_PXA) += pxamci.o
 obj-$(CONFIG_MCI_ATMEL) += atmel_mci.o
 obj-$(CONFIG_MCI_SPI) += mci_spi.o
diff --git a/drivers/mci/twl6030.c b/drivers/mci/twl6030.c
deleted file mode 100644
index 4a875bd..0000000
--- a/drivers/mci/twl6030.c
+++ /dev/null
@@ -1,29 +0,0 @@
-/*
- * MCI pmic power.
- */
-
-#include <mfd/twl6030.h>
-#include <mci/twl6030.h>
-#include <asm/io.h>
-
-static int twl6030_mci_write(u8 address, u8 data)
-{
-	int ret;
-	struct twl6030 *twl6030 = twl6030_get();
-
-	ret = twl6030_reg_write(twl6030, address, data);
-	if (ret != 0)
-		printf("TWL6030:MCI:Write[0x%x] Error %d\n", address, ret);
-
-	return ret;
-}
-
-void twl6030_mci_power_init(void)
-{
-	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_VOLTAGE,
-			TWL6030_VMMC_VSEL_0 | TWL6030_VMMC_VSEL_2 |
-			TWL6030_VMMC_VSEL_4);
-	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_STATE,
-			TWL6030_VMMC_STATE0 | TWL6030_VMMC_GRP_APP);
-}
-
diff --git a/include/mci/twl6030.h b/include/mci/twl6030.h
deleted file mode 100644
index 0ca828c..0000000
--- a/include/mci/twl6030.h
+++ /dev/null
@@ -1,10 +0,0 @@
-/*
- * TWL6030 header file.
- */
-
-#ifndef __MCI_TWL6030_H__
-#define __MCI_TWL6030_H__
-
-void twl6030_mci_power_init(void);
-
-#endif
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
