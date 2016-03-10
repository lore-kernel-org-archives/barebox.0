Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1advzM-0002xY-Kz
 for barebox@lists.infradead.org; Thu, 10 Mar 2016 08:30:35 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Thu, 10 Mar 2016 09:30:00 +0100
Message-Id: <1457598600-10669-8-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 8/8] ubiformat: Cleanly umount and detach the ubi before
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
 commands/ubiformat.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index f9c50b7936eb..4a80952dca61 100644
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
@@ -555,6 +556,8 @@ int do_ubiformat(int argc, char *argv[])
 	struct mtd_dev_info mtd;
 	struct ubigen_info ui;
 	struct ubi_scan_info *si;
+	int ubi_detached = -1;
+	struct mtd_info_user mtd_info;
 
 	err = parse_opt(argc, argv);
 	if (err)
@@ -614,8 +617,19 @@ int do_ubiformat(int argc, char *argv[])
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
+	ubi_detached = ubi_num_get_by_mtd(mtd_info.mtd);
+	err = ubi_detach_by_mtd(mtd_info.mtd, args.yes);
+	if (err) {
+		sys_errmsg("Cannot detach %d\n", err);
+		goto out_close;
+	}
+
 
 	if (!args.quiet) {
 		normsg_cont("%s (%s), size %lld bytes (%s)", mtd.node, mtd.type_str,
@@ -750,6 +764,17 @@ int do_ubiformat(int argc, char *argv[])
 
 	libscan_ubi_scan_free(si);
 	close(args.node_fd);
+
+	/* Reattach the ubi device in case it was attached in the beginning */
+	if (ubi_detached < 0) {
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
