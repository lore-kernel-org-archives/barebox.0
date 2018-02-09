Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005xF-Ub
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:12 +0100
Message-Id: <20180209094316.8523-6-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] usb: gadget: fastboot: Always remove temporary file
To: Barebox List <barebox@lists.infradead.org>

We should consistently remove the temporary image file, regardless
of the error code. To do so, always jump to the end of the function
where the temporary file is removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 34 ++++++++++++++--------------------
 1 file changed, 14 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 62b13bcb8c..db9b906b2b 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -895,7 +895,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 
 	if (!fentry) {
 		fastboot_tx_print(f_fb, "FAILNo such partition: %s", cmd);
-		return;
+		ret = -ENOENT;
+		goto out;
 	}
 
 	filename = fentry->filename;
@@ -903,22 +904,21 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 	if (filetype == filetype_android_sparse) {
 		if (!IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)) {
 			fastboot_tx_print(f_fb, "FAILsparse image not supported");
-			return;
+			ret = -EOPNOTSUPP;
+			goto out;
 		}
 
 		ret = fastboot_handle_sparse(f_fb, fentry);
-		if (ret) {
+		if (ret)
 			fastboot_tx_print(f_fb, "FAILwriting sparse image: %s",
 					  strerror(-ret));
-			return;
-		}
 
 		goto out;
 	}
 
 	ret = check_ubi(f_fb, fentry, filetype);
 	if (ret < 0)
-		return;
+		goto out;
 
 	if (ret > 0) {
 		struct mtd_info *mtd;
@@ -926,11 +926,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		mtd = get_mtd(f_fb, fentry->filename);
 
 		ret = do_ubiformat(f_fb, mtd, FASTBOOT_TMPFILE);
-		if (ret) {
+		if (ret)
 			fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
-			return;
-		}
-
 		goto out;
 	}
 
@@ -951,7 +948,7 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 				  f_fb->download_size);
 		if (ret) {
 			fastboot_tx_print(f_fb, "FAILreading barebox");
-			return;
+			goto out;
 		}
 
 		data.image = image;
@@ -960,10 +957,8 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 
 		free(image);
 
-		if (ret) {
+		if (ret)
 			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
-			return;
-		}
 
 		goto out;
 	}
@@ -971,15 +966,14 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 copy:
 	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 
-	unlink(FASTBOOT_TMPFILE);
-
-	if (ret) {
+	if (ret)
 		fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
-		return;
-	}
 
 out:
-	fastboot_tx_print(f_fb, "OKAY");
+	if (!ret)
+		fastboot_tx_print(f_fb, "OKAY");
+
+	unlink(FASTBOOT_TMPFILE);
 }
 
 static void cb_erase(struct f_fastboot *f_fb, const char *cmd)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
