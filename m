Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6q-0005i4-1p
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:03 +0200
Message-Id: <1435303867-12889-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] ubi: Use preditable device names
To: Barebox List <barebox@lists.infradead.org>

Instead of naming all ubi devices and cdev names ubi<num> append
'.ubi' to the original mtd name. This makes ubi device and cdev
names predictable. With this ubi0 becomes nand0.root.ubi. Also
do the same for volume names, so ubi0.root becomes nand0.root.ubi.root.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 7 ++-----
 drivers/mtd/ubi/cdev.c  | 4 ++--
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index b02880e..1074feb 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -155,8 +155,8 @@ static int uif_init(struct ubi_device *ubi, int *ref)
 	*ref = 0;
 	sprintf(ubi->ubi_name, UBI_NAME_STR "%d", ubi->ubi_num);
 
-	sprintf(ubi->dev.name, "ubi");
-	ubi->dev.id = DEVICE_ID_DYNAMIC;
+	sprintf(ubi->dev.name, "%s.ubi", ubi->mtd->cdev.name);
+	ubi->dev.id = DEVICE_ID_SINGLE;
 	ubi->dev.parent = &ubi->mtd->class_dev;
 
 	err = register_device(&ubi->dev);
@@ -596,9 +596,6 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 #else
 	ubi->fm_disabled = 1;
 #endif
-
-	ubi_msg("attaching mtd%d to ubi%d", mtd->index, ubi_num);
-
 	err = io_init(ubi, max_beb_per1024);
 	if (err)
 		goto out_free;
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 90d5b2d..fe71a8d 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -176,7 +176,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	priv->ubi = ubi;
 
 	cdev->ops = &ubi_volume_fops;
-	cdev->name = asprintf("ubi%d.%s", ubi->ubi_num, vol->name);
+	cdev->name = asprintf("%s.%s", ubi->cdev.name, vol->name);
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
 	cdev->dev = &vol->dev;
@@ -239,7 +239,7 @@ int ubi_cdev_add(struct ubi_device *ubi)
 	int ret;
 
 	cdev->ops = &ubi_fops;
-	cdev->name = asprintf("ubi%d", ubi->ubi_num);
+	cdev->name = asprintf("%s.ubi", ubi->mtd->cdev.name);
 	cdev->priv = ubi;
 	cdev->size = 0;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
