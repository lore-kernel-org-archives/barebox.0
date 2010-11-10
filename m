Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGC3p-0005Pm-7r
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 14:54:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Nov 2010 15:53:53 +0100
Message-Id: <1289400839-5937-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] imx nand: add V1_V2 namespace to registers
To: barebox@lists.infradead.org

This prepares the driver for v3 support. The v3 controller
has a completely different register layout, so add a V1_V2_
namespace to the register defines to avoid confusion with
the v3 regs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c |  220 +++++++++++++++++--------------------------
 1 files changed, 86 insertions(+), 134 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 62a23d5..99f6714 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -30,103 +30,55 @@
 #include <asm/io.h>
 #include <errno.h>
 
-#define DVR_VER "2.0"
-
 #define nfc_is_v21()		(cpu_is_mx25() || cpu_is_mx35())
 #define nfc_is_v1()		(cpu_is_mx31() || cpu_is_mx27() || cpu_is_mx21())
 
-/*
- * Addresses for NFC registers
- */
-#define NFC_BUF_SIZE			0x00
-#define NFC_BUF_ADDR			0x04
-#define NFC_FLASH_ADDR			0x06
-#define NFC_FLASH_CMD			0x08
-#define NFC_CONFIG			0x0a
-#define NFC_ECC_STATUS_RESULT		0x0c
-#define NFC_RSLTMAIN_AREA		0x0e
-#define NFC_RSLTSPARE_AREA		0x10
-#define NFC_SPAS			0x10
-#define NFC_WRPROT			0x12
+#define NFC_V1_ECC_STATUS_RESULT	0x0c
+#define NFC_V1_RSLTMAIN_AREA		0x0e
+#define NFC_V1_RSLTSPARE_AREA		0x10
+
+#define NFC_V2_ECC_STATUS_RESULT1	0x0c
+#define NFC_V2_ECC_STATUS_RESULT2	0x0e
+#define NFC_V2_SPAS			0x10
+
+#define NFC_V1_V2_BUF_SIZE		0x00
+#define NFC_V1_V2_BUF_ADDR		0x04
+#define NFC_V1_V2_FLASH_ADDR		0x06
+#define NFC_V1_V2_FLASH_CMD		0x08
+#define NFC_V1_V2_CONFIG		0x0a
+
+#define NFC_V1_V2_WRPROT		0x12
 #define NFC_V1_UNLOCKSTART_BLKADDR	0x14
 #define NFC_V1_UNLOCKEND_BLKADDR	0x16
 #define NFC_V21_UNLOCKSTART_BLKADDR	0x20
 #define NFC_V21_UNLOCKEND_BLKADDR	0x22
-#define NFC_NF_WRPRST			0x18
-#define NFC_CONFIG1			0x1a
-#define NFC_CONFIG2			0x1c
+#define NFC_V1_V2_NF_WRPRST		0x18
+#define NFC_V1_V2_CONFIG1		0x1a
+#define NFC_V1_V2_CONFIG2		0x1c
 
-/*
- * Addresses for NFC RAM BUFFER Main area 0
- */
-#define MAIN_AREA0		0x000
-#define MAIN_AREA1		0x200
-#define MAIN_AREA2		0x400
-#define MAIN_AREA3		0x600
+#define NFC_V2_CONFIG1_ECC_MODE_4       (1 << 0)
+#define NFC_V1_V2_CONFIG1_SP_EN		(1 << 2)
+#define NFC_V1_V2_CONFIG1_ECC_EN	(1 << 3)
+#define NFC_V1_V2_CONFIG1_INT_MSK	(1 << 4)
+#define NFC_V1_V2_CONFIG1_BIG		(1 << 5)
+#define NFC_V1_V2_CONFIG1_RST		(1 << 6)
+#define NFC_V1_V2_CONFIG1_CE		(1 << 7)
+#define NFC_V1_V2_CONFIG1_ONE_CYCLE	(1 << 8)
 
-/*
- * Addresses for NFC SPARE BUFFER Spare area 0
- */
-#define SPARE_AREA0		0x800
-#define SPARE_AREA1		0x810
-#define SPARE_AREA2		0x820
-#define SPARE_AREA3		0x830
-
-/*
- * Set INT to 0, FCMD to 1, rest to 0 in NFC_CONFIG2 Register for Command
- * operation
- */
-#define NFC_CMD            0x1
+#define NFC_V1_V2_CONFIG2_INT		(1 << 15)
 
-/*
- * Set INT to 0, FADD to 1, rest to 0 in NFC_CONFIG2 Register for Address
- * operation
- */
-#define NFC_ADDR           0x2
+#define NFC_V2_SPAS_SPARESIZE(spas)	((spas) >> 1)
 
 /*
- * Set INT to 0, FDI to 1, rest to 0 in NFC_CONFIG2 Register for Input
- * operation
+ * Operation modes for the NFC. Valid for v1, v2 and v3
+ * type controllers.
  */
-#define NFC_INPUT          0x4
-
-/*
- * Set INT to 0, FDO to 001, rest to 0 in NFC_CONFIG2 Register for Data Output
- * operation
- */
-#define NFC_OUTPUT         0x8
-
-/*
- * Set INT to 0, FD0 to 010, rest to 0 in NFC_CONFIG2 Register for Read ID
- * operation
- */
-#define NFC_ID             0x10
-
-/*
- * Set INT to 0, FDO to 100, rest to 0 in NFC_CONFIG2 Register for Read Status
- * operation
- */
-#define NFC_STATUS         0x20
-
-/*
- * Set INT to 1, rest to 0 in NFC_CONFIG2 Register for Read Status
- * operation
- */
-#define NFC_INT            0x8000
-
-#define NFC_ECC_MODE        (1 << 0)
-#define NFC_SP_EN           (1 << 2)
-#define NFC_ECC_EN          (1 << 3)
-#define NFC_INT_MSK         (1 << 4)
-#define NFC_BIG             (1 << 5)
-#define NFC_RST             (1 << 6)
-#define NFC_CE              (1 << 7)
-#define NFC_ONE_CYCLE       (1 << 8)
-
-#define NFC_SPAS_16			 8
-#define NFC_SPAS_64			 32
-#define NFC_SPAS_128			 64
-#define NFC_SPAS_218			 109
+#define NFC_CMD				(1 << 0)
+#define NFC_ADDR			(1 << 1)
+#define NFC_INPUT			(1 << 2)
+#define NFC_OUTPUT			(1 << 3)
+#define NFC_ID				(1 << 4)
+#define NFC_STATUS			(1 << 5)
 
 #ifdef CONFIG_NAND_IMX_BOOT
 #define __nand_boot_init __bare_init
@@ -237,10 +189,10 @@ static void wait_op_done(struct imx_nand_host *host)
 	 * here as we might be here from nand booting.
 	 */
 	for (i = 0; i < 100000; i++) {
-		if (readw(host->regs + NFC_CONFIG2) & NFC_INT) {
-			tmp = readw(host->regs + NFC_CONFIG2);
-			tmp  &= ~NFC_INT;
-			writew(tmp, host->regs + NFC_CONFIG2);
+		if (readw(host->regs + NFC_V1_V2_CONFIG2) & NFC_V1_V2_CONFIG2_INT) {
+			tmp = readw(host->regs + NFC_V1_V2_CONFIG2);
+			tmp  &= ~NFC_V1_V2_CONFIG2_INT;
+			writew(tmp, host->regs + NFC_V1_V2_CONFIG2);
 			return;
 		}
 	}
@@ -256,15 +208,15 @@ static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_cmd(host, 0x%x)\n", cmd);
 
-	writew(cmd, host->regs + NFC_FLASH_CMD);
-	writew(NFC_CMD, host->regs + NFC_CONFIG2);
+	writew(cmd, host->regs + NFC_V1_V2_FLASH_CMD);
+	writew(NFC_CMD, host->regs + NFC_V1_V2_CONFIG2);
 
 	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
 		/* Reset completion is indicated by NFC_CONFIG2 */
 		/* being set to 0 */
 		int i;
 		for (i = 0; i < 100000; i++) {
-			if (readw(host->regs + NFC_CONFIG2) == 0) {
+			if (readw(host->regs + NFC_V1_V2_CONFIG2) == 0) {
 				break;
 			}
 		}
@@ -285,8 +237,8 @@ static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
 {
 	MTD_DEBUG(MTD_DEBUG_LEVEL3, "send_addr(host, 0x%x %d)\n", addr, islast);
 
-	writew(addr, host->regs + NFC_FLASH_ADDR);
-	writew(NFC_ADDR, host->regs + NFC_CONFIG2);
+	writew(addr, host->regs + NFC_V1_V2_FLASH_ADDR);
+	writew(NFC_ADDR, host->regs + NFC_V1_V2_CONFIG2);
 
 	/* Wait for operation to complete */
 	wait_op_done(host);
@@ -311,9 +263,9 @@ static void send_page_v1_v2(struct imx_nand_host *host,
 
 	for (i = 0; i < bufs; i++) {
 		/* NANDFC buffer 0 is used for page read/write */
-		writew(i, host->regs + NFC_BUF_ADDR);
+		writew(i, host->regs + NFC_V1_V2_BUF_ADDR);
 
-		writew(ops, host->regs + NFC_CONFIG2);
+		writew(ops, host->regs + NFC_V1_V2_CONFIG2);
 
 		/* Wait for operation to complete */
 		wait_op_done(host);
@@ -329,9 +281,9 @@ static void send_read_id_v1_v2(struct imx_nand_host *host)
 	struct nand_chip *this = &host->nand;
 
 	/* NANDFC buffer 0 is used for device ID output */
-	writew(0x0, host->regs + NFC_BUF_ADDR);
+	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
 
-	writew(NFC_ID, host->regs + NFC_CONFIG2);
+	writew(NFC_ID, host->regs + NFC_V1_V2_CONFIG2);
 
 	/* Wait for operation to complete */
 	wait_op_done(host);
@@ -364,7 +316,7 @@ static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
 	u32 store;
 	u16 ret;
 
-	writew(0x0, host->regs + NFC_BUF_ADDR);
+	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
 
 	/*
 	 * The device status is stored in main_area0. To
@@ -373,7 +325,7 @@ static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
 	 */
 	store = readl(main_buf);
 
-	writew(NFC_STATUS, host->regs + NFC_CONFIG2);
+	writew(NFC_STATUS, host->regs + NFC_V1_V2_CONFIG2);
 
 	/* Wait for operation to complete */
 	wait_op_done(host);
@@ -422,7 +374,7 @@ static int imx_nand_correct_data(struct mtd_info *mtd, u_char * dat,
 	 * additional correction.  2-Bit errors cannot be corrected by
 	 * HW ECC, so we need to return failure
 	 */
-	u16 ecc_status = readw(host->regs + NFC_ECC_STATUS_RESULT);
+	u16 ecc_status = readw(host->regs + NFC_V1_ECC_STATUS_RESULT);
 
 	if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
 		MTD_DEBUG(MTD_DEBUG_LEVEL0,
@@ -902,13 +854,13 @@ static int __init imxnd_probe(struct device_d *dev)
 	clk_enable(host->clk);
 #endif
 
-	tmp = readw(host->regs + NFC_CONFIG1);
-	tmp |= NFC_INT_MSK;
-	tmp &= ~NFC_SP_EN;
+	tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
+	tmp |= NFC_V1_V2_CONFIG1_INT_MSK;
+	tmp &= ~NFC_V1_V2_CONFIG1_SP_EN;
 	if (nfc_is_v21())
 		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_ECC_MODE;
-	writew(tmp, host->regs + NFC_CONFIG1);
+		tmp |= NFC_V2_CONFIG1_ECC_MODE_4;
+	writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
 
 	if (pdata->hw_ecc) {
 		this->ecc.calculate = imx_nand_calculate_ecc;
@@ -916,15 +868,15 @@ static int __init imxnd_probe(struct device_d *dev)
 		this->ecc.correct = imx_nand_correct_data;
 		this->ecc.mode = NAND_ECC_HW;
 		this->ecc.size = 512;
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp |= NFC_ECC_EN;
-		writew(tmp, host->regs + NFC_CONFIG1);
+		tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
+		tmp |= NFC_V1_V2_CONFIG1_ECC_EN;
+		writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
 	} else {
 		this->ecc.size = 512;
 		this->ecc.mode = NAND_ECC_SOFT;
-		tmp = readw(host->regs + NFC_CONFIG1);
-		tmp &= ~NFC_ECC_EN;
-		writew(tmp, host->regs + NFC_CONFIG1);
+		tmp = readw(host->regs + NFC_V1_V2_CONFIG1);
+		tmp &= ~NFC_V1_V2_CONFIG1_ECC_EN;
+		writew(tmp, host->regs + NFC_V1_V2_CONFIG1);
 	}
 
 	/* Reset NAND */
@@ -932,7 +884,7 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	/* preset operation */
 	/* Unlock the internal RAM Buffer */
-	writew(0x2, host->regs + NFC_CONFIG);
+	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
 
 	/* Blocks to be unlocked */
 	if (nfc_is_v21()) {
@@ -946,7 +898,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	}
 
 	/* Unlock Block Command for given address range */
-	writew(0x4, host->regs + NFC_WRPROT);
+	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
 
 	this->ecc.layout = oob_smallpage;
 
@@ -976,10 +928,10 @@ static int __init imxnd_probe(struct device_d *dev)
 		this->ecc.layout = oob_largepage;
 		host->pagesize_2k = 1;
 		if (nfc_is_v21())
-			writew(NFC_SPAS_64, host->regs + NFC_SPAS);
+			writew(NFC_V2_SPAS_SPARESIZE(64), host->regs + NFC_V2_SPAS);
 	} else {
 		if (nfc_is_v21())
-			writew(NFC_SPAS_16, host->regs + NFC_SPAS);
+			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
 	}
 
 	/* second phase scan */
@@ -1012,14 +964,14 @@ static void __nand_boot_init noinline imx_nandboot_wait_op_done(void *regs)
 	u32 r;
 
 	while (1) {
-		r = readw(regs + NFC_CONFIG2);
-		if (r & NFC_INT)
+		r = readw(regs + NFC_V1_V2_CONFIG2);
+		if (r & NFC_V1_V2_CONFIG2_INT)
 			break;
 	};
 
-	r &= ~NFC_INT;
+	r &= ~NFC_V1_V2_CONFIG2_INT;
 
-	writew(r, regs + NFC_CONFIG2);
+	writew(r, regs + NFC_V1_V2_CONFIG2);
 }
 
 /*
@@ -1030,8 +982,8 @@ static void __nand_boot_init noinline imx_nandboot_wait_op_done(void *regs)
  */
 static void __nand_boot_init imx_nandboot_send_cmd(void *regs, u16 cmd)
 {
-	writew(cmd, regs + NFC_FLASH_CMD);
-	writew(NFC_CMD, regs + NFC_CONFIG2);
+	writew(cmd, regs + NFC_V1_V2_FLASH_CMD);
+	writew(NFC_CMD, regs + NFC_V1_V2_CONFIG2);
 
 	imx_nandboot_wait_op_done(regs);
 }
@@ -1046,8 +998,8 @@ static void __nand_boot_init imx_nandboot_send_cmd(void *regs, u16 cmd)
  */
 static void __nand_boot_init noinline imx_nandboot_send_addr(void *regs, u16 addr)
 {
-	writew(addr, regs + NFC_FLASH_ADDR);
-	writew(NFC_ADDR, regs + NFC_CONFIG2);
+	writew(addr, regs + NFC_V1_V2_FLASH_ADDR);
+	writew(NFC_ADDR, regs + NFC_V1_V2_CONFIG2);
 
 	/* Wait for operation to complete */
 	imx_nandboot_wait_op_done(regs);
@@ -1082,9 +1034,9 @@ static void __nand_boot_init imx_nandboot_send_page(void *regs,
 
 	for (i = 0; i < bufs; i++) {
 		/* NANDFC buffer 0 is used for page read/write */
-		writew(i, regs + NFC_BUF_ADDR);
+		writew(i, regs + NFC_V1_V2_BUF_ADDR);
 
-		writew(ops, regs + NFC_CONFIG2);
+		writew(ops, regs + NFC_V1_V2_CONFIG2);
 
 		/* Wait for operation to complete */
 		imx_nandboot_wait_op_done(regs);
@@ -1164,24 +1116,24 @@ void __nand_boot_init imx_nand_load_image(void *dest, int size)
 
 	/* preset operation */
 	/* Unlock the internal RAM Buffer */
-	writew(0x2, regs + NFC_CONFIG);
+	writew(0x2, regs + NFC_V1_V2_CONFIG);
 
 	/* Unlock Block Command for given address range */
-	writew(0x4, regs + NFC_WRPROT);
+	writew(0x4, regs + NFC_V1_V2_WRPROT);
 
-	tmp = readw(regs + NFC_CONFIG1);
-	tmp |= NFC_ECC_EN;
+	tmp = readw(regs + NFC_V1_V2_CONFIG1);
+	tmp |= NFC_V1_V2_CONFIG1_ECC_EN;
 	if (nfc_is_v21())
 		/* currently no support for 218 byte OOB with stronger ECC */
-		tmp |= NFC_ECC_MODE;
-	tmp &= ~(NFC_SP_EN | NFC_INT_MSK);
-	writew(tmp, regs + NFC_CONFIG1);
+		tmp |= NFC_V2_CONFIG1_ECC_MODE_4;
+	tmp &= ~(NFC_V1_V2_CONFIG1_SP_EN | NFC_V1_V2_CONFIG1_INT_MSK);
+	writew(tmp, regs + NFC_V1_V2_CONFIG1);
 
 	if (nfc_is_v21()) {
 		if (pagesize_2k)
-			writew(NFC_SPAS_64, regs + NFC_SPAS);
+			writew(NFC_V2_SPAS_SPARESIZE(64), regs + NFC_V2_SPAS);
 		else
-			writew(NFC_SPAS_16, regs + NFC_SPAS);
+			writew(NFC_V2_SPAS_SPARESIZE(16), regs + NFC_V2_SPAS);
 	}
 
 	block = page = 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
