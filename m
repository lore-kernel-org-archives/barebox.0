Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn4A-0005WZ-0i
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:23:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:28 +0100
Message-Id: <1458040952-6826-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] mtd: ubi: make ubi_detach_mtd_dev ubi internal
To: Barebox List <barebox@lists.infradead.org>

We want to extend the functionality of the ubi detach function,
but we don't want to change the original detach function to make
UBI updates easier. This adds a barebox specific detach function
which encapsulates the original UBI function. Also this makes the
original ubi detach function internal to ubi.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubi.c            |  2 +-
 drivers/mtd/ubi/barebox.c | 20 ++++++++++++++++++++
 drivers/mtd/ubi/ubi.h     |  1 +
 include/mtd/ubi-user.h    |  2 +-
 4 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 9463127..8e35787 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -128,7 +128,7 @@ static int do_ubidetach(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	ubi_num = simple_strtoul(argv[1], NULL, 0);
-	ret = ubi_detach_mtd_dev(ubi_num, 1);
+	ret = ubi_detach(ubi_num);
 
 	if (ret)
 		printf("failed to detach: %s\n", strerror(-ret));
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index fe71a8d..1643f7c 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -260,3 +260,23 @@ void ubi_cdev_remove(struct ubi_device *ubi)
 	devfs_remove(cdev);
 	kfree(cdev->name);
 }
+
+/**
+ * ubi_detach - detach an UBI device
+ * @ubi_num: The UBI device number
+ *
+ * @return: 0 for success, negative error code otherwise
+ */
+int ubi_detach(int ubi_num)
+{
+	struct ubi_device *ubi;
+
+	if (ubi_num < 0 || ubi_num >= UBI_MAX_DEVICES)
+		return -EINVAL;
+
+	ubi = ubi_devices[ubi_num];
+	if (!ubi)
+		return -ENOENT;
+
+	return ubi_detach_mtd_dev(ubi_num, 1);
+}
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index 03a36d2..a8ed0d7 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -809,6 +809,7 @@ int ubi_io_write_vid_hdr(struct ubi_device *ubi, int pnum,
 			 struct ubi_vid_hdr *vid_hdr);
 
 /* build.c */
+int ubi_detach_mtd_dev(int ubi_num, int anyway);
 struct ubi_device *ubi_get_device(int ubi_num);
 void ubi_put_device(struct ubi_device *ubi);
 struct ubi_device *ubi_get_by_major(int major);
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index 2000ef2..2002548 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -406,6 +406,6 @@ struct ubi_set_vol_prop_req {
 
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024);
-int ubi_detach_mtd_dev(int ubi_num, int anyway);
+int ubi_detach(int ubi_num);
 
 #endif /* __UBI_USER_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
