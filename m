Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cltaX-00059X-LH
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 08:38:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Mar 2017 09:37:59 +0100
Message-Id: <20170309083759.32239-2-s.hauer@pengutronix.de>
In-Reply-To: <20170309083759.32239-1-s.hauer@pengutronix.de>
References: <20170309083759.32239-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] usb: gadget: properly release f_multi_opts
To: Barebox List <barebox@lists.infradead.org>

The usbgadget commands uses statically allocated f_multi_opts and passes
this to usb_multi_register(). These f_multi_opts are of course no
longer valid when we leave the usbgadget command. Luckily we do not use
the data after we left the usbgadget command, so this never has been a
problem. However, f_multi_opts has some allocated members which we can
not free anymore on gadget unregistration because we no longer have the
pointer to them.

Fix this by adding a release function to struct f_multi_opts. This way
we can allocate all memory dynamically and properly free it when not
used anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbgadget.c       | 19 +++++++++++++------
 drivers/usb/gadget/multi.c | 18 ++++++++++++++++--
 include/usb/gadget-multi.h |  2 ++
 3 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index a7e8d6c0c3..314884aee8 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -31,10 +31,10 @@
 
 static int do_usbgadget(int argc, char *argv[])
 {
-	int opt;
+	int opt, ret;
 	int acm = 1, create_serial = 0;
 	char *fastboot_opts = NULL, *dfu_opts = NULL;
-	struct f_multi_opts opts = {};
+	struct f_multi_opts *opts;
 
 	while ((opt = getopt(argc, argv, "asdA:D:")) > 0) {
 		switch (opt) {
@@ -73,19 +73,26 @@ static int do_usbgadget(int argc, char *argv[])
 		return -EINVAL;
 	}
 
+	opts = xzalloc(sizeof(*opts));
+	opts->release = usb_multi_opts_release;
+
 	if (fastboot_opts) {
-		opts.fastboot_opts.files = file_list_parse(fastboot_opts);
+		opts->fastboot_opts.files = file_list_parse(fastboot_opts);
 	}
 
 	if (dfu_opts) {
-		opts.dfu_opts.files = file_list_parse(dfu_opts);
+		opts->dfu_opts.files = file_list_parse(dfu_opts);
 	}
 
 	if (create_serial) {
-		opts.create_acm = acm;
+		opts->create_acm = acm;
 	}
 
-	return usb_multi_register(&opts);
+	ret = usb_multi_register(opts);
+	if (ret)
+		usb_multi_opts_release(opts);
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index a2cfc8d850..6385c16186 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -246,8 +246,22 @@ int usb_multi_register(struct f_multi_opts *opts)
 
 void usb_multi_unregister(void)
 {
-	if (gadget_multi_opts)
-		usb_composite_unregister(&multi_driver);
+	if (!gadget_multi_opts)
+		return;
+
+	usb_composite_unregister(&multi_driver);
+	if (gadget_multi_opts->release)
+		gadget_multi_opts->release(gadget_multi_opts);
 
 	gadget_multi_opts = NULL;
 }
+
+void usb_multi_opts_release(struct f_multi_opts *opts)
+{
+	if (opts->fastboot_opts.files)
+		file_list_free(opts->fastboot_opts.files);
+	if (opts->dfu_opts.files)
+		file_list_free(opts->dfu_opts.files);
+
+	free(opts);
+}
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 5ca462326a..81beddc7cf 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -9,9 +9,11 @@ struct f_multi_opts {
 	struct f_fastboot_opts fastboot_opts;
 	struct f_dfu_opts dfu_opts;
 	int create_acm;
+	void (*release)(struct f_multi_opts *opts);
 };
 
 int usb_multi_register(struct f_multi_opts *opts);
 void usb_multi_unregister(void);
+void usb_multi_opts_release(struct f_multi_opts *opts);
 
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
