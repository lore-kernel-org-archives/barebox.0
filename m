Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvf6o-0008Fe-Ax
 for barebox@lists.infradead.org; Wed, 05 Apr 2017 07:12:04 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Apr 2017 09:11:35 +0200
Message-Id: <20170405071135.27974-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] mtd: ubi: add ubi_attach_mtd_path function
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Add funktion to attach mtd device by path. This will
reduce some code duplications.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/ubi.c          | 23 ++---------------------
 drivers/mtd/ubi/build.c | 34 ++++++++++++++++++++++++++++++++++
 include/mtd/ubi-user.h  |  1 +
 3 files changed, 37 insertions(+), 21 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 5e2758400..795ac3a53 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -174,8 +174,7 @@ BAREBOX_CMD_END
 static int do_ubiattach(int argc, char *argv[])
 {
 	int opt;
-	struct mtd_info_user user;
-	int fd, ret;
+	int ret;
 	int vid_hdr_offset = 0;
 	int devnum = UBI_DEV_NUM_AUTO;
 
@@ -195,25 +194,7 @@ static int do_ubiattach(int argc, char *argv[])
 	if (optind == argc)
 		return COMMAND_ERROR_USAGE;
 
-	fd = open(argv[optind], O_RDWR);
-	if (fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	ret = ioctl(fd, MEMGETINFO, &user);
-	if (ret) {
-		printf("MEMGETINFO failed: %s\n", strerror(-ret));
-		goto err;
-	}
-
-	ret = ubi_attach_mtd_dev(user.mtd, devnum, vid_hdr_offset, 20);
-	if (ret < 0)
-		printf("failed to attach: %s\n", strerror(-ret));
-	else
-		ret = 0;
-err:
-	close(fd);
+	ret = ubi_attach_mtd_path(argv[optind]);
 
 	return ret ? 1 : 0;
 }
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 2ea66ed06..de8aae729 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -25,6 +25,8 @@
  * later using the "UBI control device".
  */
 
+#include <fs.h>
+#include <ioctl.h>
 #include <linux/err.h>
 #include <linux/stringify.h>
 #include <linux/stat.h>
@@ -684,6 +686,38 @@ out_free:
 }
 
 /**
+ * ubi_attach_mtd_path - attach an MTD device by path.
+ * @path: path to MTD device.
+ */
+int ubi_attach_mtd_path(const char *path)
+{
+	struct mtd_info_user user;
+	int fd, ret;
+
+	fd = open(path, O_RDWR);
+	if (fd < 0) {
+		perror("open");
+		return fd;
+	}
+
+	ret = ioctl(fd, MEMGETINFO, &user);
+	if (ret) {
+		pr_err("MEMGETINFO failed: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0, 20);
+	if (ret < 0)
+		pr_err("failed to attach: %s\n", strerror(-ret));
+	else
+		ret = 0;
+err:
+	close(fd);
+
+	return ret;
+}
+
+/**
  * ubi_detach_mtd_dev - detach an MTD device.
  * @ubi_num: UBI device number to detach from
  * @anyway: detach MTD even if device reference count is not zero
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index 9425533d1..1a1dbb04a 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -408,6 +408,7 @@ struct ubi_set_vol_prop_req {
 
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024);
+int ubi_attach_mtd_path(const char *path);
 int ubi_detach(int ubi_num);
 int ubi_num_get_by_mtd(struct mtd_info *mtd);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
