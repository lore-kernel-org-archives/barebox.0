Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xyxrg-0000r0-Gc
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 07:08:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Dec 2014 08:08:19 +0100
Message-Id: <1418281699-26118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] treewide: Fix typo collumn -> column
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/config.h              | 2 +-
 arch/arm/boards/a9m2440/lowlevel_init.S       | 8 ++++----
 arch/arm/boards/friendlyarm-mini2440/config.h | 2 +-
 drivers/mtd/nand/nand_s3c24xx.c               | 6 +++---
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/a9m2410/config.h b/arch/arm/boards/a9m2410/config.h
index 1274ce7..1da99ea 100644
--- a/arch/arm/boards/a9m2410/config.h
+++ b/arch/arm/boards/a9m2410/config.h
@@ -58,7 +58,7 @@
  * 32MiB SDRAM in bank6
  *  - MT = 11 (= sync dram type)
  *  - Trcd = 00 (= CL2)
- *  - SCAN = 01 (= 9 bit collumns)
+ *  - SCAN = 01 (= 9 bit columns)
  */
 #define BOARD_SPECIFIC_BANKCON6 ((0x3 << 15) + (0x0 << 2) + 0x1)
 /*
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 916ab72..8711201 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -84,7 +84,7 @@ SDRAMDATA:
 	/*
 	 *  - MT = 11 (= sync dram type)
 	 *  - Trcd = 01 (= CL3)
-	 *  - SCAN = 00 (= 8 bit collumns)
+	 *  - SCAN = 00 (= 8 bit columns)
 	 */
 	.word ((0x3 << 15) + (0x1 << 2) + (0x0))
 	.word ((0x3 << 15) + (0x1 << 2) + (0x0))
@@ -117,7 +117,7 @@ SDRAMDATA:
 	/*
 	 *  - MT = 11 (= sync dram type)
 	 *  - Trcd = 00 (= CL2)
-	 *  - SCAN = 01 (= 9 bit collumns)
+	 *  - SCAN = 01 (= 9 bit columns)
 	 */
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
@@ -150,7 +150,7 @@ SDRAMDATA:
 	/*
 	 *  - MT = 11 (= sync dram type)
 	 *  - Trcd = 00 (= CL2)
-	 *  - SCAN = 01 (= 9 bit collumns)
+	 *  - SCAN = 01 (= 9 bit columns)
 	 */
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
@@ -183,7 +183,7 @@ SDRAMDATA:
 	/*
 	 *  - MT = 11 (= sync dram type)
 	 *  - Trcd = 00 (= CL2)
-	 *  - SCAN = 01 (= 9 bit collumns)
+	 *  - SCAN = 01 (= 9 bit columns)
 	 */
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
 	.word ((0x3 << 15) + (0x0 << 2) + (0x1))
diff --git a/arch/arm/boards/friendlyarm-mini2440/config.h b/arch/arm/boards/friendlyarm-mini2440/config.h
index 3479302..489697f 100644
--- a/arch/arm/boards/friendlyarm-mini2440/config.h
+++ b/arch/arm/boards/friendlyarm-mini2440/config.h
@@ -96,7 +96,7 @@
 /*
  *  - MT = 11 (= sync dram type)
  *  - Trcd = 00 (= CL2)
- *  - SCAN = 01 (= 9 bit collumns)
+ *  - SCAN = 01 (= 9 bit columns)
  */
 #define BOARD_SPECIFIC_BANKCON6 ((0x3 << 15) + (0x0 << 2) + (0x1))
 #define BOARD_SPECIFIC_BANKCON7 0 /* disabled */
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index bee037b..37bba39 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -516,12 +516,12 @@ static void __nand_boot_init wait_for_completion(void __iomem *host)
  *
  * Uses the offset of the page to generate an page address into the NAND. This
  * differs when using a 512 byte or 2048 bytes per page NAND.
- * The collumn part of the page address to be generated is always forced to '0'.
+ * The column part of the page address to be generated is always forced to '0'.
  */
 static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
 					int ps, int c)
 {
-	send_addr(host, 0); /* collumn part 1 */
+	send_addr(host, 0); /* column part 1 */
 
 	if (ps == 512) {
 		send_addr(host, offs >> 9);
@@ -529,7 +529,7 @@ static void __nand_boot_init nfc_addr(void __iomem *host, uint32_t offs,
 		if (c > 3)
 			send_addr(host, offs >> 25);
 	} else {
-		send_addr(host, 0); /* collumn part 2 */
+		send_addr(host, 0); /* column part 2 */
 		send_addr(host, offs >> 11);
 		send_addr(host, offs >> 19);
 		if (c > 4)
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
