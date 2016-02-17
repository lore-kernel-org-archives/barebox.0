Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW0Hy-0003LT-Nl
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 11:28:59 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 17 Feb 2016 12:28:19 +0100
Message-Id: <1455708500-980-3-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
References: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 3/4] fastboot: Fix usage of ubiformat for UBI image
 transfers
To: barebox@lists.infradead.org

Currently all fastboot flash commands with UBI images are handled by a
final call to 'ubiformat'. This only makes sense for flash commands
where the target file is a mtd device. If we just want to transfer a UBI
image we would expect a simple copy to the correct location.

This patch checks if the destination file is a MTD device by opening it
and calling an ioctl MEMGETINFO. Only for MTD devices, ubiformat is
called.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index bf28f7c22aaa..bc06c58d8dcb 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -686,7 +686,21 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 	}
 
 	if (filetype == filetype_ubi) {
-		char *cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);
+		char *cmd;
+		int fd;
+		struct mtd_info_user meminfo;
+
+		fd = open(filename, O_RDONLY);
+		if (fd < 0)
+			goto copy;
+
+		ret = ioctl(fd, MEMGETINFO, &meminfo);
+		close(fd);
+		/* Not a MTD device, ubiformat is not a valid operation */
+		if (ret)
+			goto copy;
+
+		cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);
 
 		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
 
@@ -702,6 +716,7 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 		goto out;
 	}
 
+copy:
 	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
 	if (ret) {
 		fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
