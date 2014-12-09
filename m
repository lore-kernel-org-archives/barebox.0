Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyIcK-0003ZS-VD
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 11:06:09 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XyIby-0008IO-Qq
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 12:05:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  9 Dec 2014 12:05:42 +0100
Message-Id: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/5] usb: gadget: fastboot: allow to build without BOOTM
To: barebox@lists.infradead.org

This will disable the capability to boot an uploaded image directly,
but keeps other fastboot functionality. This seems like a valid config.

Fixes:
In function `do_bootm_on_complete': undefined reference to `bootm_boot'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 92a1a218c643..76879db1f15d 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -653,7 +653,8 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
 		pr_err("Booting failed\n");
 }
 
-static void cb_boot(struct usb_ep *ep, struct usb_request *req, const char *opt)
+static void __maybe_unused cb_boot(struct usb_ep *ep, struct usb_request *req,
+				   const char *opt)
 {
 	struct f_fastboot *f_fb = req->context;
 
@@ -857,9 +858,11 @@ static const struct cmd_dispatch_info cmd_dispatch_info[] = {
 	}, {
 		.cmd = "download:",
 		.cb = cb_download,
+#if defined(CONFIG_BOOTM)
 	}, {
 		.cmd = "boot",
 		.cb = cb_boot,
+#endif
 	}, {
 		.cmd = "flash:",
 		.cb = cb_flash,
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
