Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pg-7N
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:48 +0100
Message-Id: <1289400839-5937-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
References: <1289400839-5937-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] imx_nand: remove 0xe00 offset from registers
To: barebox@lists.infradead.org

Add the offset to the register base instead. This is done
in preparation for v3 controller support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |   42 +++++++++++++++++++++---------------------
 1 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 63ba188..d5503a1 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -38,23 +38,23 @@
 /*
  * Addresses for NFC registers
  */
-#define NFC_BUF_SIZE		0xE00
-#define NFC_BUF_ADDR		0xE04
-#define NFC_FLASH_ADDR		0xE06
-#define NFC_FLASH_CMD		0xE08
-#define NFC_CONFIG		0xE0A
-#define NFC_ECC_STATUS_RESULT	0xE0C
-#define NFC_RSLTMAIN_AREA	0xE0E
-#define NFC_RSLTSPARE_AREA	0xE10
-#define NFC_SPAS		0xe10
-#define NFC_WRPROT		0xE12
-#define NFC_V1_UNLOCKSTART_BLKADDR	0xe14
-#define NFC_V1_UNLOCKEND_BLKADDR	0xe16
-#define NFC_V21_UNLOCKSTART_BLKADDR	0xe20
-#define NFC_V21_UNLOCKEND_BLKADDR	0xe22
-#define NFC_NF_WRPRST		0xE18
-#define NFC_CONFIG1		0xE1A
-#define NFC_CONFIG2		0xE1C
+#define NFC_BUF_SIZE			0x00
+#define NFC_BUF_ADDR			0x04
+#define NFC_FLASH_ADDR			0x06
+#define NFC_FLASH_CMD			0x08
+#define NFC_CONFIG			0x0a
+#define NFC_ECC_STATUS_RESULT		0x0c
+#define NFC_RSLTMAIN_AREA		0x0e
+#define NFC_RSLTSPARE_AREA		0x10
+#define NFC_SPAS			0x10
+#define NFC_WRPROT			0x12
+#define NFC_V1_UNLOCKSTART_BLKADDR	0x14
+#define NFC_V1_UNLOCKEND_BLKADDR	0x16
+#define NFC_V21_UNLOCKSTART_BLKADDR	0x20
+#define NFC_V21_UNLOCKEND_BLKADDR	0x22
+#define NFC_NF_WRPRST			0x18
+#define NFC_CONFIG1			0x1a
+#define NFC_CONFIG2			0x1c
 
 /*
  * Addresses for NFC RAM BUFFER Main area 0
@@ -861,13 +861,13 @@ static int __init imxnd_probe(struct device_d *dev)
 	host->main_area1 = host->base + 0x200;
 
 	if (nfc_is_v21()) {
-		host->regs = host->base + 0x1000;
+		host->regs = host->base + 0x1e00;
 		host->spare0 = host->base + 0x1000;
 		host->spare_len = 64;
 		oob_smallpage = &nandv2_hw_eccoob_smallpage;
 		oob_largepage = &nandv2_hw_eccoob_largepage;
 	} else if (nfc_is_v1()) {
-		host->regs = host->base;
+		host->regs = host->base + 0xe00;
 		host->spare0 = host->base + 0x800;
 		host->spare_len = 16;
 		oob_smallpage = &nandv1_hw_eccoob_smallpage;
@@ -1159,10 +1159,10 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 
 	base = (void __iomem *)IMX_NFC_BASE;
 	if (nfc_is_v21()) {
-		regs = base + 0x1000;
+		regs = base + 0x1e00;
 		spare0 = base + 0x1000;
 	} else if (nfc_is_v1()) {
-		regs = base;
+		regs = base + 0xe00;
 		spare0 = base + 0x800;
 	}
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
