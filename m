Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adFJi-0002Pz-FH
 for barebox@lists.infradead.org; Tue, 08 Mar 2016 10:56:43 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue,  8 Mar 2016 11:56:09 +0100
Message-Id: <1457434569-32054-5-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1457434569-32054-1-git-send-email-mpa@pengutronix.de>
References: <1457434569-32054-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 5/5] ubiformat: Cleanly umount and detach the ubi before
 formating
To: barebox@lists.infradead.org

This was an open fixme for some time. ubiformat does not care about used
ubi volumes or attached ubis.

This patch adds functionality that umounts all filesystems that are
mounted from this nand device. After that the ubi is detached. Then the
normal ubiformat code reformats the ubi. If a ubi was detached
previously, the code tries to reattach the ubi. Filesystems are not
remounted.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 commands/ubiformat.c | 87 ++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 85 insertions(+), 2 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index f9c50b7936eb..d25c2815e066 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -42,6 +42,7 @@
 #include <libbb.h>
 #include <libfile.h>
 #include <linux/mtd/mtd.h>
+#include <linux/mtd/ubi.h>
 #include <linux/kernel.h>
 #include <linux/stat.h>
 #include <linux/log2.h>
@@ -549,12 +550,68 @@ out_free:
 	return -1;
 }
 
+static int ubi_umount_all(const char *mtddev, struct mtd_info_user *ui,
+			  int *ubi_detached_num)
+{
+	struct ubi_device_info ubi_info;
+	struct cdev *ubi_cdev;
+	struct fs_device_d *fsdev;
+	struct fs_device_d *fsdev_tmp;
+	struct ubi_device *ubi_dev;
+	int ret;
+	int ubi_num;
+	int vol_id;
+
+
+	ubi_num = ubi_num_get_by_mtd(ui->mtd);
+	if (ubi_num < 0) /* No attached ubi found */
+		return 0;
+
+	ubi_get_device_info(ubi_num, &ubi_info);
+
+	ubi_volume_for_each(ubi_num, ubi_dev, vol_id, ret) {
+		struct ubi_volume_desc *vol;
+
+		vol = ubi_open_volume(ubi_num, vol_id, UBI_READONLY);
+		if (IS_ERR(vol)) {
+			pr_err("Failed to open ubi volume %d %d, %ld. Continuing\n",
+			       ubi_num, vol_id, PTR_ERR(vol));
+			continue;
+		}
+
+		for_each_fs_device_safe(fsdev_tmp, fsdev) {
+			ubi_cdev = ubi_volume_get_cdev(vol);
+
+			if (fsdev->cdev == ubi_volume_get_cdev(vol)) {
+				ret = umount(fsdev->path);
+				if (ret) {
+					pr_err("Failed umounting %s, %d, continuing anyway\n",
+					       fsdev->path, ret);
+				}
+			}
+		}
+
+		ubi_close_volume(vol);
+	}
+
+	ret = ubi_detach_mtd_dev(ubi_info.ubi_num, 1);
+	if (ret) {
+		pr_err("Failed force-detaching ubi device. Can't continue\n");
+		return ret;
+	}
+	*ubi_detached_num = ubi_info.ubi_num;
+
+	return 0;
+}
+
 int do_ubiformat(int argc, char *argv[])
 {
 	int err, verbose;
 	struct mtd_dev_info mtd;
 	struct ubigen_info ui;
 	struct ubi_scan_info *si;
+	int ubi_detached = -1;
+	struct mtd_info_user mtd_info;
 
 	err = parse_opt(argc, argv);
 	if (err)
@@ -614,8 +671,23 @@ int do_ubiformat(int argc, char *argv[])
 		goto out_close;
 	}
 
-	/* Make sure this MTD device is not attached to UBI */
-	/* FIXME! Find a proper way to do this in barebox! */
+	err = ioctl(args.node_fd, MEMGETINFO, &mtd_info);
+	if (err) {
+		sys_errmsg("Failed to get user info %d\n", err);
+		goto out_close;
+	}
+
+	/*
+	 * Umount all filesystems, detach and store the number of the detached
+	 * ubi so we can later reattach
+	 */
+	err = ubi_umount_all(args.node, &mtd_info, &ubi_detached);
+	if (err) {
+		sys_errmsg("Cannot umount all filesystems and detach %d\n",
+			   err);
+		goto out_close;
+	}
+
 
 	if (!args.quiet) {
 		normsg_cont("%s (%s), size %lld bytes (%s)", mtd.node, mtd.type_str,
@@ -750,6 +822,17 @@ int do_ubiformat(int argc, char *argv[])
 
 	libscan_ubi_scan_free(si);
 	close(args.node_fd);
+
+	/* Reattach the ubi device in case it was attached in the beginning */
+	if (ubi_detached != -1) {
+		err = ubi_attach_mtd_dev(mtd_info.mtd, ubi_detached, 0, 20);
+		if (err) {
+			pr_err("Failed to reattach ubi device to ubi number %d, %d\n",
+			       ubi_detached, err);
+			return err;
+		}
+	}
+
 	return 0;
 
 out_free:
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
