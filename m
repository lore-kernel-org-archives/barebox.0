Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cJ-1s
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:04 +0200
Message-Id: <1375794428-29577-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] mtd: ubi: Add support for opening a volume by cdev
To: barebox@lists.infradead.org

Needed by ubifs support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/cdev.c  |  6 ++++++
 drivers/mtd/ubi/kapi.c  | 17 +++++++++++++++++
 drivers/mtd/ubi/ubi.h   |  2 ++
 include/linux/mtd/ubi.h |  1 +
 4 files changed, 26 insertions(+)

diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 3907673..129f2e2 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -5,6 +5,8 @@
 #include "ubi-barebox.h"
 #include "ubi.h"
 
+LIST_HEAD(ubi_volumes_list);
+
 struct ubi_volume_cdev_priv {
 	struct ubi_device *ubi;
 	struct ubi_volume *vol;
@@ -184,6 +186,8 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 		free(cdev->name);
 	}
 
+	list_add_tail(&vol->list, &ubi_volumes_list);
+
 	return 0;
 }
 
@@ -192,6 +196,8 @@ void ubi_volume_cdev_remove(struct ubi_volume *vol)
 	struct cdev *cdev = &vol->cdev;
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
+	list_del(&vol->list);
+
 	devfs_remove(cdev);
 	kfree(cdev->name);
 	kfree(priv);
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 23ac234..31571ad 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -265,6 +265,23 @@ struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num, const char *name,
 }
 EXPORT_SYMBOL_GPL(ubi_open_volume_nm);
 
+extern struct list_head ubi_volumes_list;
+
+struct ubi_volume_desc *ubi_open_volume_cdev(struct cdev *cdev, int mode)
+{
+	struct ubi_volume *vol;
+
+	list_for_each_entry(vol, &ubi_volumes_list, list) {
+		if (cdev == &vol->cdev)
+			goto found;
+	}
+
+	return ERR_PTR(-ENOENT);
+
+found:
+	return ubi_open_volume(vol->ubi->ubi_num, vol->vol_id, mode);
+}
+
 /**
  * ubi_close_volume - close UBI volume.
  * @desc: volume descriptor
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 11877a3..aa2cf02 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -322,6 +322,8 @@ struct ubi_volume {
 	unsigned int updating:1;
 	unsigned int changing_leb:1;
 	unsigned int direct_writes:1;
+
+	struct list_head list;
 };
 
 /**
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index b3288d1..274ec4e 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -200,6 +200,7 @@ void ubi_get_volume_info(struct ubi_volume_desc *desc,
 struct ubi_volume_desc *ubi_open_volume(int ubi_num, int vol_id, int mode);
 struct ubi_volume_desc *ubi_open_volume_nm(int ubi_num, const char *name,
 					   int mode);
+struct ubi_volume_desc *ubi_open_volume_cdev(struct cdev *cdev, int mode);
 struct ubi_volume_desc *ubi_open_volume_path(const char *pathname, int mode);
 
 void ubi_close_volume(struct ubi_volume_desc *desc);
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
