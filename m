Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ada8p-0001Ix-Hw
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 09:10:52 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  9 Mar 2016 10:10:20 +0100
Message-Id: <1457514620-14689-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] fastboot: Umount filesystems of target devices before flashing
To: barebox@lists.infradead.org

Before flashing data to some device, we should check whether this device
is in use. If it is mounted it is umounted and flashed afterwards.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
Hi,

This patch requires the for_each_fs_device_safe() macro which was sent as a
patch yesterday.

Best Regards,

Markus


 drivers/usb/gadget/f_fastboot.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 9a1058a9670b..e81392f38ae9 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -664,6 +664,37 @@ static void __maybe_unused cb_boot(struct usb_ep *ep, struct usb_request *req,
 	fastboot_tx_print(f_fb, "OKAY");
 }
 
+/**
+ * fastboot_flash_umount_target checks whether the target file is a device and
+ * umounts mounted filesystems
+ * @param filename Target file name
+ * @return 0 on success, < 0 otherwise
+ */
+static int fastboot_flash_umount_target(const char *filename)
+{
+	struct cdev *tgt_cdev;
+	struct fs_device_d *fs;
+	struct fs_device_d *fs_tmp;
+
+	tgt_cdev = cdev_by_path(filename);
+	if (!tgt_cdev)
+		return 0;
+
+	for_each_fs_device_safe(fs_tmp, fs) {
+		int ret;
+
+		if (fs->cdev == tgt_cdev) {
+			ret = umount(fs->path);
+			if (ret) {
+				pr_err("Failed umounting %s, %d, continuing anyway\n",
+				       fs->path, ret);
+			}
+		}
+	}
+
+	return 0;
+}
+
 static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd)
 {
 	struct f_fastboot *f_fb = req->context;
@@ -745,6 +776,8 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 		goto out;
 	}
 
+	fastboot_flash_umount_target(filename);
+
 copy:
 	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 	if (ret) {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
