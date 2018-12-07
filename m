Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVDT8-00071o-Lz
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 10:34:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Dec 2018 11:34:03 +0100
Message-Id: <20181207103405.27365-6-s.hauer@pengutronix.de>
In-Reply-To: <20181207103405.27365-1-s.hauer@pengutronix.de>
References: <20181207103405.27365-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/7] usb: gadget: fastboot: be more informative on booting
To: Barebox List <barebox@lists.infradead.org>

We used to end the fastboot session once we received the boot command.
Now that we end the session during shutdown we can do better: We can
end the session once we actually shutdown, or more importantly in the
case of an error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 08ea9bce6b..f6eb30dec4 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -759,7 +759,7 @@ static void cb_download(struct f_fastboot *f_fb, const char *cmd)
 	}
 }
 
-static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
+static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
 {
 	int ret;
 	struct bootm_data data = {
@@ -767,7 +767,7 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
 		.os_address = UIMAGE_SOME_ADDRESS,
 	};
 
-	pr_info("Booting kernel..\n");
+	fastboot_tx_print(f_fb, FASTBOOT_MSG_INFO, "Booting kernel..\n");
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set_match("bootm.", "");
@@ -775,14 +775,12 @@ static void do_bootm_on_complete(struct usb_ep *ep, struct usb_request *req)
 	data.os_file = xstrdup(FASTBOOT_TMPFILE);
 
 	ret = bootm_boot(&data);
-	if (ret)
-		pr_err("Booting failed\n");
-}
 
-static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
-{
-	f_fb->in_req->complete = do_bootm_on_complete;
-	fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
+	if (ret)
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_FAIL, "Booting failed: %s",
+				   strerror(-ret));
+	else
+		fastboot_tx_print(f_fb, FASTBOOT_MSG_OKAY, "");
 }
 
 static struct mtd_info *get_mtd(struct f_fastboot *f_fb, const char *filename)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
