Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwkmL-0006WX-6w
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 06:55:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Oct 2016 08:54:46 +0200
Message-Id: <20161019065446.3580-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: Make UBI detection more robust
To: Barebox List <barebox@lists.infradead.org>

When we want to detect if a mtd device contains an UBI image then
testing the first block is not enough since it can always happen that
UBI has just erased the block before the power failed during last boot.
Since UBI only ever erases one block at a time and directly writes the
ec header to it afterwards, it shouldn't be necessary to scan the whole
device for UBI data. Scan the first 64 blocks. The first non-empty block
then must contain UBI data, if instead we find foreign data we assume
that no UBI is on that mtd device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 35 ++++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 6d04b88..90b800c 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -18,6 +18,7 @@
 #include <common.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/mtd.h>
+#include <mtd/mtd-peb.h>
 #include <mtd/ubi-user.h>
 #include <cmdlinepart.h>
 #include <filetype.h>
@@ -622,9 +623,11 @@ static int mtd_detect(struct device_d *dev)
 	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
 	int bufsize = 512;
 	void *buf;
-	int ret;
+	int ret = 0, i;
 	enum filetype filetype;
-	size_t retlen;
+	int npebs = mtd_div_by_eb(mtd->size, mtd);
+
+	npebs = max(npebs, 64);
 
 	/*
 	 * Do not try to attach an UBI device if this device has partitions
@@ -636,17 +639,27 @@ static int mtd_detect(struct device_d *dev)
 
 	buf = xmalloc(bufsize);
 
-	ret = mtd_read(mtd, 0, bufsize, &retlen, buf);
-	if (ret)
-		goto out;
+	for (i = 0; i < npebs; i++) {
+		if (mtd_peb_is_bad(mtd, i))
+			continue;
 
-	filetype = file_detect_type(buf, bufsize);
-	if (filetype == filetype_ubi) {
-		ret = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO, 0, 20);
-		if (ret == -EEXIST)
-			ret = 0;
+		ret = mtd_peb_read(mtd, buf, i, 0, 512);
+		if (ret)
+			continue;
+
+		if (mtd_buf_all_ff(buf, 512))
+			continue;
+
+		filetype = file_detect_type(buf, bufsize);
+		if (filetype == filetype_ubi) {
+			ret = ubi_attach_mtd_dev(mtd, UBI_DEV_NUM_AUTO, 0, 20);
+			if (ret == -EEXIST)
+				ret = 0;
+		}
+
+		break;
 	}
-out:
+
 	free(buf);
 
 	return ret;
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
