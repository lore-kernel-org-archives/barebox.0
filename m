Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3v-0005WY-0s
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:32 +0100
Message-Id: <1458040952-6826-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ubiformat: Cleanly umount and detach the ubi before
 formating
To: Barebox List <barebox@lists.infradead.org>

From: Markus Pargmann <mpa@pengutronix.de>

This was an open fixme for some time. ubiformat does not care about used
ubi volumes or attached ubis.

This patch adds functionality that umounts all filesystems that are
mounted from this nand device. After that the ubi is detached. Then the
normal ubiformat code reformats the ubi. If a ubi was detached
previously, the code tries to reattach the ubi. Filesystems are not
remounted.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 0172654..2ffdd0c 100644
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
@@ -562,6 +563,7 @@ int do_ubiformat(int argc, char *argv[])
 	struct ubigen_info ui;
 	struct ubi_scan_info *si;
 	struct mtd_info_user mtd_user;
+	int ubi_num;
 
 	err = parse_opt(argc, argv);
 	if (err)
@@ -622,8 +624,15 @@ int do_ubiformat(int argc, char *argv[])
 		goto out_close;
 	}
 
-	/* Make sure this MTD device is not attached to UBI */
-	/* FIXME! Find a proper way to do this in barebox! */
+	ubi_num = ubi_num_get_by_mtd(mtd_user.mtd);
+	if (ubi_num >= 0) {
+		err = ubi_detach(ubi_num);
+		if (err) {
+			sys_errmsg("Cannot detach %d\n", err);
+			goto out_close;
+		}
+	}
+
 
 	eb_cnt = mtd_div_by_eb(mtd->size, mtd);
 
@@ -759,6 +768,17 @@ int do_ubiformat(int argc, char *argv[])
 	}
 
 	libscan_ubi_scan_free(si);
+
+	/* Reattach the ubi device in case it was attached in the beginning */
+	if (ubi_num >= 0) {
+		err = ubi_attach_mtd_dev(mtd_user.mtd, ubi_num, 0, 20);
+		if (err) {
+			pr_err("Failed to reattach ubi device to ubi number %d, %d\n",
+			       ubi_num, err);
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
