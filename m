Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cI-1k
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:02 +0200
Message-Id: <1375794428-29577-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] mtd: ubi: add ubi info functions
To: barebox@lists.infradead.org

Needed for ubifs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/kapi.c | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index fca8cc9..23ac234 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -25,6 +25,82 @@
 #include "ubi.h"
 
 /**
+ * ubi_do_get_device_info - get information about UBI device.
+ * @ubi: UBI device description object
+ * @di: the information is stored here
+ *
+ * This function is the same as 'ubi_get_device_info()', but it assumes the UBI
+ * device is locked and cannot disappear.
+ */
+void ubi_do_get_device_info(struct ubi_device *ubi, struct ubi_device_info *di)
+{
+	di->ubi_num = ubi->ubi_num;
+	di->leb_size = ubi->leb_size;
+	di->leb_start = ubi->leb_start;
+	di->min_io_size = ubi->min_io_size;
+	di->max_write_size = ubi->max_write_size;
+	di->ro_mode = ubi->ro_mode;
+}
+EXPORT_SYMBOL_GPL(ubi_do_get_device_info);
+
+/**
+ * ubi_get_device_info - get information about UBI device.
+ * @ubi_num: UBI device number
+ * @di: the information is stored here
+ *
+ * This function returns %0 in case of success, %-EINVAL if the UBI device
+ * number is invalid, and %-ENODEV if there is no such UBI device.
+ */
+int ubi_get_device_info(int ubi_num, struct ubi_device_info *di)
+{
+	struct ubi_device *ubi;
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return -EINVAL;
+	ubi = ubi_get_device(ubi_num);
+	if (!ubi)
+		return -ENODEV;
+	ubi_do_get_device_info(ubi, di);
+	ubi_put_device(ubi);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(ubi_get_device_info);
+
+/**
+ * ubi_do_get_volume_info - get information about UBI volume.
+ * @ubi: UBI device description object
+ * @vol: volume description object
+ * @vi: the information is stored here
+ */
+void ubi_do_get_volume_info(struct ubi_device *ubi, struct ubi_volume *vol,
+			    struct ubi_volume_info *vi)
+{
+	vi->vol_id = vol->vol_id;
+	vi->ubi_num = ubi->ubi_num;
+	vi->size = vol->reserved_pebs;
+	vi->used_bytes = vol->used_bytes;
+	vi->vol_type = vol->vol_type;
+	vi->corrupted = vol->corrupted;
+	vi->upd_marker = vol->upd_marker;
+	vi->alignment = vol->alignment;
+	vi->usable_leb_size = vol->usable_leb_size;
+	vi->name_len = vol->name_len;
+	vi->name = vol->name;
+}
+
+/**
+ * ubi_get_volume_info - get information about UBI volume.
+ * @desc: volume descriptor
+ * @vi: the information is stored here
+ */
+void ubi_get_volume_info(struct ubi_volume_desc *desc,
+			 struct ubi_volume_info *vi)
+{
+	ubi_do_get_volume_info(desc->vol->ubi, desc->vol, vi);
+}
+EXPORT_SYMBOL_GPL(ubi_get_volume_info);
+
+/**
  * ubi_open_volume - open UBI volume.
  * @ubi_num: UBI device number
  * @vol_id: volume ID
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
