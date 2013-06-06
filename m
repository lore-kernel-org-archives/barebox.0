Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb3O-00025e-0H
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:20:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:20:20 +0200
Message-Id: <1370528420-4388-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: Align erase_op to eraseblock boundaries
To: barebox@lists.infradead.org

Our erase command used to align to eraseblocks when necessary.
This worked well until recently when the m25p80, mtd_dataflash
and cfi flash were added / converted to mtd. This patch aligns
the input to the erase fileoperation to eraseblock boundaries.
Also tested with non uniform flashes with multiple eraseregions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f358098..fe9ec1d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -98,12 +98,60 @@ static ssize_t mtd_op_write(struct cdev* cdev, const void *buf, size_t _count,
 	return ret ? ret : _count;
 }
 
+static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd, loff_t offset)
+{
+	int i;
+
+	for (i = 0; i < mtd->numeraseregions; i++) {
+		struct mtd_erase_region_info *e = &mtd->eraseregions[i];
+		if (offset > e->offset + e->erasesize * e->numblocks)
+			continue;
+		return e;
+	}
+
+	return NULL;
+}
+
+static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
+{
+	struct mtd_erase_region_info *e;
+	loff_t ofs;
+
+	if (mtd->numeraseregions == 0) {
+		ofs = *offset & ~(mtd->erasesize - 1);
+		*count += (*offset - ofs);
+		*count = ALIGN(*count, mtd->erasesize);
+		*offset = ofs;
+		return 0;
+	}
+
+	e = mtd_find_erase_region(mtd, *offset);
+	if (!e)
+		return -EINVAL;
+
+	ofs = *offset & ~(e->erasesize - 1);
+	*count += (*offset - ofs);
+
+	e = mtd_find_erase_region(mtd, *offset + *count);
+	if (!e)
+		return -EINVAL;
+
+	*count = ALIGN(*count, e->erasesize);
+	*offset = ofs;
+
+	return 0;
+}
+
 static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
 	int ret;
 
+	ret = mtd_erase_align(mtd, &count, &offset);
+	if (ret)
+		return ret;
+
 	memset(&erase, 0, sizeof(erase));
 	erase.mtd = mtd;
 	erase.addr = offset;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
