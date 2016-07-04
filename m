Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Aw-00067K-34
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:31 +0200
Message-Id: <1467624459-16448-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] mtd: imx-nand: Move v3 register definitions to include
 file
To: Barebox List <barebox@lists.infradead.org>

Move v3 register definitions to include file so that they can
be reused for the early nand boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx-nand.h | 49 +++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_imx.c               | 49 -------------------------------
 2 files changed, 49 insertions(+), 49 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index b9305e2..0adba09 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -59,6 +59,55 @@ struct imx_nand_platform_data {
 
 #define NFC_V2_SPAS_SPARESIZE(spas)	((spas) >> 1)
 
+#define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
+#define NFC_V3_FLASH_ADDR0		(host->regs_axi + 0x04)
+
+#define NFC_V3_CONFIG1			(host->regs_axi + 0x34)
+#define NFC_V3_CONFIG1_SP_EN		(1 << 0)
+#define NFC_V3_CONFIG1_RBA(x)		(((x) & 0x7 ) << 4)
+
+#define NFC_V3_ECC_STATUS_RESULT	(host->regs_axi + 0x38)
+
+#define NFC_V3_LAUNCH			(host->regs_axi + 0x40)
+
+#define NFC_V3_WRPROT			(host->regs_ip + 0x0)
+#define NFC_V3_WRPROT_LOCK_TIGHT	(1 << 0)
+#define NFC_V3_WRPROT_LOCK		(1 << 1)
+#define NFC_V3_WRPROT_UNLOCK		(1 << 2)
+#define NFC_V3_WRPROT_BLS_UNLOCK	(2 << 6)
+
+#define NFC_V3_WRPROT_UNLOCK_BLK_ADD0   (host->regs_ip + 0x04)
+
+#define NFC_V3_CONFIG2			(host->regs_ip + 0x24)
+#define NFC_V3_CONFIG2_PS_512			(0 << 0)
+#define NFC_V3_CONFIG2_PS_2048			(1 << 0)
+#define NFC_V3_CONFIG2_PS_4096			(2 << 0)
+#define NFC_V3_CONFIG2_ONE_CYCLE		(1 << 2)
+#define NFC_V3_CONFIG2_ECC_EN			(1 << 3)
+#define NFC_V3_CONFIG2_2CMD_PHASES		(1 << 4)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE0		(1 << 5)
+#define NFC_V3_CONFIG2_ECC_MODE_8		(1 << 6)
+#define NFC_V3_MX51_CONFIG2_PPB(x)		(((x) & 0x3) << 7)
+#define NFC_V3_MX53_CONFIG2_PPB(x)		(((x) & 0x3) << 8)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE1(x)	(((x) & 0x3) << 12)
+#define NFC_V3_CONFIG2_INT_MSK			(1 << 15)
+#define NFC_V3_CONFIG2_ST_CMD(x)		(((x) & 0xff) << 24)
+#define NFC_V3_CONFIG2_SPAS(x)			(((x) & 0xff) << 16)
+
+#define NFC_V3_CONFIG3				(host->regs_ip + 0x28)
+#define NFC_V3_CONFIG3_ADD_OP(x)		(((x) & 0x3) << 0)
+#define NFC_V3_CONFIG3_FW8			(1 << 3)
+#define NFC_V3_CONFIG3_SBB(x)			(((x) & 0x7) << 8)
+#define NFC_V3_CONFIG3_NUM_OF_DEVICES(x)	(((x) & 0x7) << 12)
+#define NFC_V3_CONFIG3_RBB_MODE			(1 << 15)
+#define NFC_V3_CONFIG3_NO_SDMA			(1 << 20)
+
+#define NFC_V3_IPC			(host->regs_ip + 0x2C)
+#define NFC_V3_IPC_CREQ			(1 << 0)
+#define NFC_V3_IPC_INT			(1 << 31)
+
+#define NFC_V3_DELAY_LINE		(host->regs_ip + 0x34)
+
 /*
  * Operation modes for the NFC. Valid for v1, v2 and v3
  * type controllers.
diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index f54fe21..64bda1b 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -30,55 +30,6 @@
 #include <of_mtd.h>
 #include <errno.h>
 
-#define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
-#define NFC_V3_FLASH_ADDR0		(host->regs_axi + 0x04)
-
-#define NFC_V3_CONFIG1			(host->regs_axi + 0x34)
-#define NFC_V3_CONFIG1_SP_EN		(1 << 0)
-#define NFC_V3_CONFIG1_RBA(x)		(((x) & 0x7 ) << 4)
-
-#define NFC_V3_ECC_STATUS_RESULT	(host->regs_axi + 0x38)
-
-#define NFC_V3_LAUNCH			(host->regs_axi + 0x40)
-
-#define NFC_V3_WRPROT			(host->regs_ip + 0x0)
-#define NFC_V3_WRPROT_LOCK_TIGHT	(1 << 0)
-#define NFC_V3_WRPROT_LOCK		(1 << 1)
-#define NFC_V3_WRPROT_UNLOCK		(1 << 2)
-#define NFC_V3_WRPROT_BLS_UNLOCK	(2 << 6)
-
-#define NFC_V3_WRPROT_UNLOCK_BLK_ADD0   (host->regs_ip + 0x04)
-
-#define NFC_V3_CONFIG2			(host->regs_ip + 0x24)
-#define NFC_V3_CONFIG2_PS_512			(0 << 0)
-#define NFC_V3_CONFIG2_PS_2048			(1 << 0)
-#define NFC_V3_CONFIG2_PS_4096			(2 << 0)
-#define NFC_V3_CONFIG2_ONE_CYCLE		(1 << 2)
-#define NFC_V3_CONFIG2_ECC_EN			(1 << 3)
-#define NFC_V3_CONFIG2_2CMD_PHASES		(1 << 4)
-#define NFC_V3_CONFIG2_NUM_ADDR_PHASE0		(1 << 5)
-#define NFC_V3_CONFIG2_ECC_MODE_8		(1 << 6)
-#define NFC_V3_MX51_CONFIG2_PPB(x)		(((x) & 0x3) << 7)
-#define NFC_V3_MX53_CONFIG2_PPB(x)		(((x) & 0x3) << 8)
-#define NFC_V3_CONFIG2_NUM_ADDR_PHASE1(x)	(((x) & 0x3) << 12)
-#define NFC_V3_CONFIG2_INT_MSK			(1 << 15)
-#define NFC_V3_CONFIG2_ST_CMD(x)		(((x) & 0xff) << 24)
-#define NFC_V3_CONFIG2_SPAS(x)			(((x) & 0xff) << 16)
-
-#define NFC_V3_CONFIG3				(host->regs_ip + 0x28)
-#define NFC_V3_CONFIG3_ADD_OP(x)		(((x) & 0x3) << 0)
-#define NFC_V3_CONFIG3_FW8			(1 << 3)
-#define NFC_V3_CONFIG3_SBB(x)			(((x) & 0x7) << 8)
-#define NFC_V3_CONFIG3_NUM_OF_DEVICES(x)	(((x) & 0x7) << 12)
-#define NFC_V3_CONFIG3_RBB_MODE			(1 << 15)
-#define NFC_V3_CONFIG3_NO_SDMA			(1 << 20)
-
-#define NFC_V3_IPC			(host->regs_ip + 0x2C)
-#define NFC_V3_IPC_CREQ			(1 << 0)
-#define NFC_V3_IPC_INT			(1 << 31)
-
-#define NFC_V3_DELAY_LINE		(host->regs_ip + 0x34)
-
 struct imx_nand_host {
 	struct mtd_info		mtd;
 	struct nand_chip	nand;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
