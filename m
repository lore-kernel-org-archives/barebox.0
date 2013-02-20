Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U87DN-0005s1-J9
 for barebox@lists.infradead.org; Wed, 20 Feb 2013 10:47:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Feb 2013 11:47:49 +0100
Message-Id: <1361357270-8700-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361357270-8700-1-git-send-email-s.hauer@pengutronix.de>
References: <1361357270-8700-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: do not write empty pages
To: barebox@lists.infradead.org

Do not write pages which only contain 0xff. UBI expects pages which
seem empty to be writable. This got lost with:

| commit 3139c3e9a61e70846be8c4f95bb9cffd4465d88a
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Thu Nov 29 11:16:40 2012 +0100
|
|    mtd core: call driver write function with complete buffer
|
|    mtd->write is supposed to loop around pages internally, no need
|    to do this in mtd_write. This fixes a huge write performance drop
|    with the m25p80 driver when it was converted to a mtd driver recently.
|    Since mtd->writesize is 1 for this driver mtd_write ended up doing
|    single byte writes on the flash.

Introduce mtd_all_ff as a global function since UBI currently has its own
implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c            |   32 ++++++++++++++++++++++++++++++++
 drivers/mtd/nand/nand_write.c |   10 ++++++----
 include/linux/mtd/mtd.h       |    2 ++
 3 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 070fda6..ef98556 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -30,6 +30,38 @@
 
 static LIST_HEAD(mtd_register_hooks);
 
+int mtd_all_ff(const void *buf, unsigned int len)
+{
+	while ((unsigned long)buf & 0x3) {
+		if (*(const uint8_t *)buf != 0xff)
+			return 0;
+		len--;
+		if (!len)
+			return 1;
+		buf++;
+	}
+
+	while (len > 0x3) {
+		if (*(const uint32_t *)buf != 0xffffffff)
+			return 0;
+
+		len -= sizeof(uint32_t);
+		if (!len)
+			return 1;
+
+		buf += sizeof(uint32_t);
+	}
+
+	while (len) {
+		if (*(const uint8_t *)buf != 0xff)
+			return 0;
+		len--;
+		buf++;
+	}
+
+	return 1;
+}
+
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 {
 	if (!mtd->block_isbad)
diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 12a57a0..cd8ee06 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -320,10 +320,12 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 			memset(chip->oob_poi, 0xff, mtd->oobsize);
 		}
 
-		ret = chip->write_page(mtd, chip, wbuf, page, cached,
-				       (ops->mode == MTD_OOB_RAW));
-		if (ret)
-			break;
+		if (!mtd_all_ff(wbuf, mtd->writesize)) {
+			ret = chip->write_page(mtd, chip, wbuf, page, cached,
+					       (ops->mode == MTD_OOB_RAW));
+			if (ret)
+				break;
+		}
 
 		writelen -= bytes;
 		if (!writelen)
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index cb8b3bc..bd059ba 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -253,6 +253,8 @@ static inline void mtd_erase_callback(struct erase_info *instr)
 
 int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs);
 
+int mtd_all_ff(const void *buf, unsigned int len);
+
 /*
  * Debugging macro and defines
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
