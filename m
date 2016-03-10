Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advza-0003k6-7R
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:47 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:29:58 +0100
Message-Id: <1457598600-10669-6-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 6/8] ubi: Add function to detach a UBI by using mtd_info
To: barebox@lists.infradead.org

We may don't know which UBI is attached on a given MTD device. This adds
a function to detach a UBI given a MTD device.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 21 +++++++++++++++++++++
 include/mtd/ubi-user.h  |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index f51d10cf0d21..7ee34bc62f30 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -750,3 +750,24 @@ int ubi_detach_mtd_dev(int ubi_num, int anyway)
 
 	return 0;
 }
+
+/**
+ * ubi_detach_by_mtd detaches any ubi that of the given MTD
+ * @param mtd MTD used
+ * @param anyway detach MTD even if device reference count is not zero
+ * @return 0 on success, negative errno otherwise
+ *
+ * This function returns -EINVAL if the device is not attached
+ */
+int ubi_detach_by_mtd(struct mtd_info *mtd, bool anyway)
+{
+	int ubi_num = ubi_num_get_by_mtd(mtd);
+
+	if (ubi_num < 0) {
+		if (ubi_num == -ENOENT)
+			return -EINVAL;
+		return ubi_num;
+	}
+
+	return ubi_detach_mtd_dev(ubi_num, anyway);
+}
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index ab1a6630f5ee..90982743cb58 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -407,6 +407,7 @@ struct ubi_set_vol_prop_req {
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024);
 int ubi_detach_mtd_dev(int ubi_num, int anyway);
+int ubi_detach_by_mtd(struct mtd_info *mtd, bool anyway);
 int ubi_num_get_by_mtd(struct mtd_info *mtd);
 
 #endif /* __UBI_USER_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
