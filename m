Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auejP-0004da-Ls
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:43 +0200
Message-Id: <1461583844-32250-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
References: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] usb: fastboot: Use C API for ubiformat
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index aaf7849..1f56975 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -28,6 +28,8 @@
 #include <dma.h>
 #include <fs.h>
 #include <libfile.h>
+#include <ubiformat.h>
+#include <stdlib.h>
 #include <file-list.h>
 #include <progress.h>
 #include <environment.h>
@@ -687,9 +689,12 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 	}
 
 	if (filetype == filetype_ubi) {
-		char *cmd;
 		int fd;
 		struct mtd_info_user meminfo;
+		struct ubiformat_args args = {
+			.yes = 1,
+			.image = FASTBOOT_TMPFILE,
+		};
 
 		fd = open(filename, O_RDONLY);
 		if (fd < 0)
@@ -701,13 +706,9 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 		if (ret)
 			goto copy;
 
-		cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);
-
 		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
 
-		ret = run_command(cmd);
-
-		free(cmd);
+		ret = ubiformat(meminfo.mtd, &args);
 
 		if (ret) {
 			fastboot_tx_print(f_fb, "FAILwrite partition: %s", strerror(-ret));
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
