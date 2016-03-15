Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxX-0005OM-Te
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:24 +0100
Message-Id: <1458040534-6171-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/16] mtd: Introduce mtd_check_pattern
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c      | 19 +++++++++++++++++++
 include/linux/mtd/mtd.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ff53a4a..dcf94bf 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -74,6 +74,25 @@ int mtd_buf_all_ff(const void *buf, unsigned int len)
 	return 1;
 }
 
+/**
+ * mtd_buf_check_pattern - check if buffer contains only a certain byte pattern.
+ * @buf: buffer to check
+ * @patt: the pattern to check
+ * @size: buffer size in bytes
+ *
+ * This function returns %1 in there are only @patt bytes in @buf, and %0 if
+ * something else was also found.
+ */
+int mtd_buf_check_pattern(const void *buf, uint8_t patt, int size)
+{
+	int i;
+
+	for (i = 0; i < size; i++)
+		if (((const uint8_t *)buf)[i] != patt)
+			return 0;
+	return 1;
+}
+
 static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
 			  loff_t offset, ulong flags)
 {
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 4374882..18d8866 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -313,6 +313,7 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs);
 int mtd_block_markgood(struct mtd_info *mtd, loff_t ofs);
 
 int mtd_buf_all_ff(const void *buf, unsigned int len);
+int mtd_buf_check_pattern(const void *buf, uint8_t patt, int size);
 
 /*
  * Debugging macro and defines
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
