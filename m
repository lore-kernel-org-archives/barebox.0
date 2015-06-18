Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000Ct-MO
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:42 +0200
Message-Id: <1434613424-19989-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] fs: ubifs: Implement Linux rootarg
To: Barebox List <barebox@lists.infradead.org>

Add the parameter to boot from ubifs fileystems. This assumes that
there will be only one UBI device registered in the kernel, otherwise
there is no way to predict the ubi number.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/kapi.c  |  1 +
 fs/ubifs/ubifs.c        | 23 +++++++++++++++++++++++
 include/linux/mtd/ubi.h |  1 +
 3 files changed, 25 insertions(+)

diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 08cb8dd..7fc1aa8 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -36,6 +36,7 @@ void ubi_do_get_device_info(struct ubi_device *ubi, struct ubi_device_info *di)
 	di->min_io_size = ubi->min_io_size;
 	di->max_write_size = ubi->max_write_size;
 	di->ro_mode = ubi->ro_mode;
+	di->mtd = ubi->mtd;
 }
 EXPORT_SYMBOL_GPL(ubi_do_get_device_info);
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 68d90b3..a9189f7 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -36,6 +36,7 @@
 #include <linux/zlib.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <linux/mtd/mtd.h>
 
 #include "ubifs.h"
 
@@ -584,6 +585,26 @@ static int ubifs_readlink(struct device_d *dev, const char *pathname, char *buf,
 	return 0;
 }
 
+static void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
+{
+	struct ubi_volume_info vi = {};
+	struct ubi_device_info di = {};
+	struct mtd_info *mtd;
+	char *str;
+
+	ubi_get_volume_info(priv->ubi, &vi);
+	ubi_get_device_info(vi.ubi_num, &di);
+
+	mtd = di.mtd;
+
+	str = asprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
+			vi.name, mtd->cdev.partname);
+
+	fsdev_set_linux_rootarg(fsdev, str);
+
+	free(str);
+}
+
 static int ubifs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -612,6 +633,8 @@ static int ubifs_probe(struct device_d *dev)
 		goto err;
 	}
 
+	ubifs_set_rootarg(priv, fsdev);
+
 	return 0;
 err:
 	ubi_close_volume(priv->ubi);
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index 274ec4e..0614681 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -154,6 +154,7 @@ struct ubi_device_info {
 	int max_write_size;
 	int ro_mode;
 	dev_t cdev;
+	struct mtd_info *mtd;
 };
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
