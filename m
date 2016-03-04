Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abkFj-0005Rv-UH
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:34:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Mar 2016 08:33:33 +0100
Message-Id: <1457076814-29170-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: mtd_[read|write|erase]: check for valid input data
To: Barebox List <barebox@lists.infradead.org>

mtd_[read|write|erase] are input functions to the mtd subsystem, so
check for valid input data here rather than relying on the drivers doing
this. The checks are copied from the Kernel as of 4.5-rc5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 22 ++++++++++++++++++++++
 include/linux/mtd/mtd.h |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index e35571d..161c6ad 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -326,6 +326,11 @@ int mtd_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
 	int ret_code;
 	*retlen = 0;
 
+	if (from < 0 || from >= mtd->size || len > mtd->size - from)
+		return -EINVAL;
+	if (!len)
+		return 0;
+
 	/*
 	 * In the absence of an error, drivers return a non-negative integer
 	 * representing the maximum number of bitflips that were corrected on
@@ -344,11 +349,28 @@ int mtd_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 {
 	*retlen = 0;
 
+	if (to < 0 || to >= mtd->size || len > mtd->size - to)
+		return -EINVAL;
+	if (!mtd->write || !(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	if (!len)
+		return 0;
+
 	return mtd->write(mtd, to, len, retlen, buf);
 }
 
 int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
+	if (instr->addr >= mtd->size || instr->len > mtd->size - instr->addr)
+		return -EINVAL;
+	if (!(mtd->flags & MTD_WRITEABLE))
+		return -EROFS;
+	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
+	if (!instr->len) {
+		instr->state = MTD_ERASE_DONE;
+		mtd_erase_callback(instr);
+		return 0;
+	}
 	return mtd->erase(mtd, instr);
 }
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index e430217..421a941 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -26,6 +26,8 @@
 #define MTD_ERASE_DONE          0x08
 #define MTD_ERASE_FAILED        0x10
 
+#define MTD_FAIL_ADDR_UNKNOWN -1LL
+
 /* If the erase fails, fail_addr might indicate exactly which block failed.  If
    fail_addr = 0xffffffff, the failure was not at the device level or was not
    specific to any particular block. */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
