Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22a.google.com ([2607:f8b0:400e:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSGax-0001wj-4G
 for barebox@lists.infradead.org; Sun, 07 Feb 2016 04:05:07 +0000
Received: by mail-pf0-x22a.google.com with SMTP id w123so91349041pfb.0
 for <barebox@lists.infradead.org>; Sat, 06 Feb 2016 20:04:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  6 Feb 2016 20:04:22 -0800
Message-Id: <1454817862-5050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] spi-nor: Port erase timeout fix from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Large SPI-NOR (>2MB) chips reuire more than 40 seconds to perform
all-chip erase. This patch adapts
09b6a377687b885565339e60bc62566433a0406f from Linux kernel, which
implements simple heuristics in order to calculate appropriate wait
time (see orignal commit's description for more details of the fix)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 41 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 27f4abc..05da178 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -15,6 +15,7 @@
 #include <driver.h>
 #include <errno.h>
 #include <linux/err.h>
+#include <linux/sizes.h>
 #include <linux/math64.h>
 #include <linux/mod_devicetable.h>
 #include <linux/mtd/mtd.h>
@@ -25,6 +26,18 @@
 
 #define SPI_NOR_MAX_ID_LEN	6
 
+/*
+ * For everything but full-chip erase; probably could be much smaller, but kept
+ * around for safety for now
+ */
+#define DEFAULT_READY_WAIT		(40 * SECOND)
+
+/*
+ * For full-chip erase, calibrated to a 2MB flash (M25P16); should be scaled up
+ * for larger flash
+ */
+#define CHIP_ERASE_2MB_READY_WAIT	(40 * SECOND)
+
 struct flash_info {
 	/*
 	 * This array stores the ID bytes.
@@ -228,14 +241,15 @@ static int spi_nor_ready(struct spi_nor *nor)
  * Service routine to read status register until ready, or timeout occurs.
  * Returns non-zero if error.
  */
-static int spi_nor_wait_till_ready(struct spi_nor *nor)
+static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
+						uint64_t timeout_ns)
 {
 	uint64_t start = get_time_ns();
 	int timeout = 0;
 	int ret;
 
 	while (!timeout) {
-		if (is_timeout(start, 40 * SECOND))
+		if (is_timeout(start, timeout_ns))
 			timeout = 1;
 
 		ret = spi_nor_ready(nor);
@@ -250,6 +264,12 @@ static int spi_nor_wait_till_ready(struct spi_nor *nor)
 	return -ETIMEDOUT;
 }
 
+static int spi_nor_wait_till_ready(struct spi_nor *nor)
+{
+	return spi_nor_wait_till_ready_with_timeout(nor,
+						    DEFAULT_READY_WAIT);
+}
+
 /*
  * Erase the whole flash memory
  *
@@ -318,6 +338,8 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 	/* whole-chip erase? */
 	if (len == mtd->size) {
+		uint64_t timeout;
+
 		write_enable(nor);
 
 		if (erase_chip(nor)) {
@@ -325,9 +347,18 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			goto erase_err;
 		}
 
-		ret = spi_nor_wait_till_ready(nor);
-		if (ret)
-			goto erase_err;
+		/*
+		 * Scale the timeout linearly with the size of the flash, with
+		 * a minimum calibrated to an old 2MB flash. We could try to
+		 * pull these from CFI/SFDP, but these values should be good
+		 * enough for now.
+		 */
+		timeout = max(CHIP_ERASE_2MB_READY_WAIT,
+			      CHIP_ERASE_2MB_READY_WAIT *
+			      (uint64_t)(mtd->size / SZ_2M));
+		ret = spi_nor_wait_till_ready_with_timeout(nor, timeout);
+ 		if (ret)
+ 			goto erase_err;
 
 	/* REVISIT in some cases we could speed up erasing large regions
 	 * by using SPINOR_OP_SE instead of SPINOR_OP_BE_4K.  We may have set up
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
