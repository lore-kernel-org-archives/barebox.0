Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afn0r-0006mX-6r
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:07 +0100
Message-Id: <1458040754-32240-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] imx-bbu-nand-fcb: Use mtd-peb API to write firmware
To: Barebox List <barebox@lists.infradead.org>

With this patch we verify the firmware written to the NAND and thus
can react on write failures. We torture the block and if it went
bad we mark it as bad.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 44 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 35 insertions(+), 9 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 26b0b29..f1fc404 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -33,6 +33,7 @@
 #include <linux/mtd/mtd.h>
 #include <linux/stat.h>
 #include <io.h>
+#include <mtd/mtd-peb.h>
 
 struct dbbt_block {
 	uint32_t Checksum;
@@ -300,6 +301,27 @@ static int imx_bbu_erase(struct mtd_info *mtd)
 	return 0;
 }
 
+static int mtd_peb_write_block(struct mtd_info *mtd, void *buf, int block, int len)
+{
+	int ret;
+	int retries = 0;
+
+	if (mtd_peb_is_bad(mtd, block))
+		return -EINVAL;
+again:
+	ret = mtd_peb_write(mtd, buf, block, 0, len);
+	if (!ret)
+		return 0;
+
+	if (ret == -EBADMSG) {
+		ret = mtd_peb_torture(mtd, block);
+		if (!ret && retries++ < 3)
+			goto again;
+	}
+
+	return ret;
+}
+
 /**
  * imx_bbu_firmware_max_blocks - get max number of blocks for firmware
  * @mtd: The mtd device
@@ -332,10 +354,8 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 				  size_t len)
 {
 	int ret;
-	size_t written;
 	int num_blocks = imx_bbu_firmware_max_blocks(mtd);
 	int block = imx_bbu_firmware_start_block(mtd, num);
-	uint64_t offset = block * mtd->erasesize;
 
 	pr_info("writing firmware %d to block %d (ofs 0x%08x)\n",
 			num, block, block * mtd->erasesize);
@@ -346,21 +366,27 @@ static int imx_bbu_write_firmware(struct mtd_info *mtd, unsigned num, void *buf,
 		if (!num_blocks)
 			return -ENOSPC;
 
-		pr_debug("writing %p at 0x%08llx, left 0x%08x\n",
-				buf, offset, len);
+		pr_debug("writing %p peb %d, left 0x%08x\n",
+				buf, block, len);
 
-		if (mtd_block_isbad(mtd, offset)) {
-			pr_debug("write skip block @ 0x%08llx\n", offset);
-			offset += mtd->erasesize;
+		if (mtd_peb_is_bad(mtd, block)) {
+			pr_debug("skipping block %d\n", block);
+			num_blocks--;
+			block++;
+			continue;
+		}
+
+		ret = mtd_peb_write_block(mtd, buf, block, now);
+
+		if (ret == -EIO) {
 			block++;
+			num_blocks--;
 			continue;
 		}
 
-		ret = mtd_write(mtd, offset, now, &written, buf);
 		if (ret)
 			return ret;
 
-		offset += now;
 		len -= now;
 		buf += now;
 		block++;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
