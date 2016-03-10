Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advzQ-0003KI-7L
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:37 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:59 +0100
Message-Id: <1457598600-10669-7-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
References: <1457598600-10669-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 7/8] ubi: Let ubidetach umount all filesystems before
 detaching
To: barebox@lists.infradead.org

This patch iterates through all ubi volumes and umounts all filesystems
that are mounted.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 7ee34bc62f30..edaa98b0973c 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -25,6 +25,7 @@
  * later using the "UBI control device".
  */
 
+#include <fs.h>
 #include <linux/err.h>
 #include <linux/stringify.h>
 #include <linux/stat.h>
@@ -713,6 +714,8 @@ out_free:
 int ubi_detach_mtd_dev(int ubi_num, int anyway)
 {
 	struct ubi_device *ubi;
+	int vol_id;
+	int ret;
 
 	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
 		return -EINVAL;
@@ -723,6 +726,32 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 
 	ubi->ref_count--;
 
+	ubi_volume_for_each(ubi_num, ubi, vol_id, ret) {
+		struct ubi_volume_desc *vol;
+
+		vol = ubi_open_volume(ubi_num, vol_id, UBI_READONLY);
+		if (IS_ERR(vol)) {
+			pr_err("Failed to open ubi volume %d %d, %ld\n",
+			       ubi_num, vol_id, PTR_ERR(vol));
+			if (anyway)
+				continue;
+
+			ubi_volume_abort(ubi);
+			return PTR_ERR(vol);
+		}
+
+		ret = umount_by_cdev(ubi_volume_get_cdev(vol));
+		ubi_close_volume(vol);
+		if (ret) {
+			pr_err("Failed umounting ubi volume %d %d, %d\n",
+			       ubi_num, vol_id, ret);
+			if (anyway)
+				continue;
+			ubi_volume_abort(ubi);
+			return ret;
+		}
+	}
+
 	if (ubi->ref_count)
 		return -EBUSY;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
