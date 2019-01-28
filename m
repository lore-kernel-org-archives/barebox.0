Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go6mK-0004me-BO
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 13:16:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Jan 2019 14:16:39 +0100
Message-Id: <20190128131640.3692-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] mtd: peb: Add function to skip bad blocks
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This adds a function that given a pointer to a PEB number increases the
number until the corresponding PEB is good. It also checks for the PEB
number being inside the mtd device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c     | 27 +++++++++++++++++++++++++++
 include/mtd/mtd-peb.h |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index c35b63f2fd..388db7f587 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -129,6 +129,33 @@ int mtd_num_pebs(struct mtd_info *mtd)
 	return mtd_div_by_eb(mtd->size, mtd);
 }
 
+/**
+ * mtd_skip_bad - skip bad blocks
+ * @mtd: mtd device
+ * @pnum: The number of the block
+ *
+ * This function skips bad blocks beginning from @pnum. Returns 0 for success and
+ * a negative error code otherwise. on successful exit @pnum points to the next
+ * good block.
+ */
+int mtd_skip_bad(struct mtd_info *mtd, int *pnum)
+{
+	if (*pnum < 0)
+		return -EINVAL;
+
+	while (1) {
+		loff_t offset = (uint64_t)mtd->erasesize * *pnum;
+
+		if (offset >= mtd->size)
+			return -ENOSPC;
+
+		if (!mtd_block_isbad(mtd, offset))
+		    return 0;
+
+		*pnum = *pnum + 1;
+	}
+}
+
 /**
  * mtd_peb_mark_bad - mark a physical eraseblock as bad
  * @mtd: mtd device
diff --git a/include/mtd/mtd-peb.h b/include/mtd/mtd-peb.h
index e4fd01df90..23f89d89a8 100644
--- a/include/mtd/mtd-peb.h
+++ b/include/mtd/mtd-peb.h
@@ -12,6 +12,7 @@ int mtd_peb_torture(struct mtd_info *mtd, int pnum);
 int mtd_peb_erase(struct mtd_info *mtd, int pnum);
 int mtd_peb_mark_bad(struct mtd_info *mtd, int pnum);
 int mtd_peb_is_bad(struct mtd_info *mtd, int pnum);
+int mtd_skip_bad(struct mtd_info *mtd, int *pnum);
 int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 			 int warn);
 int mtd_peb_verify(struct mtd_info *mtd, const void *buf, int pnum,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
