Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advzM-0002xA-LB
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:34 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:56 +0100
Message-Id: <1457598600-10669-4-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 4/8] ubi: Add helper to map a mtd device to a ubi number
To: barebox@lists.infradead.org

ubi_num_get_by_mtd() searches for attached ubi devices for the given mtd
and returns the number of the ubi device.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 35 ++++++++++++++++++++++++++---------
 include/mtd/ubi-user.h  |  1 +
 2 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 797022636dcb..f51d10cf0d21 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -482,6 +482,28 @@ static int autoresize(struct ubi_device *ubi, int vol_id)
 }
 
 /**
+ * ubi_num_get_by_mtd finds the ubi number to the given mtd
+ * @param mtd mtd_info to the mtd device
+ * @return positive or null for a UBI number, negative errno otherwise
+ */
+int ubi_num_get_by_mtd(struct mtd_info *mtd)
+{
+	int i;
+	struct ubi_device *ubi;
+
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		ubi = ubi_devices[i];
+		if (ubi && mtd == ubi->mtd) {
+			ubi_debug("mtd%d is already attached to ubi%d",
+				mtd->index, i);
+			return ubi->ubi_num;
+		}
+	}
+
+	return -ENOENT;
+}
+
+/**
  * ubi_attach_mtd_dev - attach an MTD device.
  * @mtd: MTD device description object
  * @ubi_num: number to assign to the new UBI device
@@ -501,7 +523,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024)
 {
 	struct ubi_device *ubi;
-	int i, err, ref = 0;
+	int ubi_id, err, ref = 0;
 
 	if (max_beb_per1024 < 0 || max_beb_per1024 > MAX_MTD_UBI_BEB_LIMIT)
 		return -EINVAL;
@@ -515,14 +537,9 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	 * Note, this function assumes that UBI devices creations and deletions
 	 * are serialized, so it does not take the &ubi_devices_lock.
 	 */
-	for (i = 0; i < UBI_MAX_DEVICES; i++) {
-		ubi = ubi_devices[i];
-		if (ubi && mtd == ubi->mtd) {
-			ubi_debug("mtd%d is already attached to ubi%d",
-				mtd->index, i);
-			return -EEXIST;
-		}
-	}
+	ubi_id = ubi_num_get_by_mtd(mtd);
+	if (ubi_id >= 0)
+		return -EEXIST;
 
 	/*
 	 * Make sure this MTD device is not emulated on top of an UBI volume
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index 2000ef2fd00d..ab1a6630f5ee 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -407,5 +407,6 @@ struct ubi_set_vol_prop_req {
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024);
 int ubi_detach_mtd_dev(int ubi_num, int anyway);
+int ubi_num_get_by_mtd(struct mtd_info *mtd);
 
 #endif /* __UBI_USER_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
