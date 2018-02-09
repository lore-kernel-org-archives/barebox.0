Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x2-UY
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:09 +0100
Message-Id: <20180209094316.8523-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] usb: gadget: fastboot: Make sparse support optional
To: Barebox List <barebox@lists.infradead.org>

Sparse support is not always desired, make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Kconfig      | 10 +++++++++-
 drivers/usb/gadget/f_fastboot.c | 14 +++++++++++---
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index b612d39a8e..e2dc7807a0 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -57,7 +57,15 @@ config USB_GADGET_FASTBOOT
 	bool
 	select BANNER
 	select FILE_LIST
-	select IMAGE_SPARSE
 	prompt "Android Fastboot support"
 
+config USB_GADGET_FASTBOOT_SPARSE
+	bool
+	select IMAGE_SPARSE
+	prompt "Enable Fastboot sparse image support"
+	help
+	  Sparse images are a way for the fastboot protocol to write
+	  images that are bigger than the available memory. If unsure,
+	  say yes here.
+
 endif
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 87a43cc60e..8da317f83a 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -322,8 +322,10 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	fb_setvar(var, "0.4");
 	var = fb_addvar(f_fb, "bootloader-version");
 	fb_setvar(var, release_string);
-	var = fb_addvar(f_fb, "max-download-size");
-	fb_setvar(var, "%u", fastboot_max_download_size);
+	if (IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)) {
+		var = fb_addvar(f_fb, "max-download-size");
+		fb_setvar(var, "%u", fastboot_max_download_size);
+	}
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && opts->export_bbu)
 		bbu_handlers_iterate(fastboot_add_bbu_variables, f_fb);
@@ -906,6 +908,11 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 	filename = fentry->filename;
 
 	if (filetype == filetype_android_sparse) {
+		if (!IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE)) {
+			fastboot_tx_print(f_fb, "FAILsparse image not supported");
+			return;
+		}
+
 		ret = fastboot_handle_sparse(f_fb, fentry);
 		if (ret) {
 			fastboot_tx_print(f_fb, "FAILwriting sparse image: %s",
@@ -1172,7 +1179,8 @@ static void rx_handler_command(struct usb_ep *ep, struct usb_request *req)
 
 static int fastboot_globalvars_init(void)
 {
-	globalvar_add_simple_int("usbgadget.fastboot_max_download_size",
+	if (IS_ENABLED(USB_GADGET_FASTBOOT_SPARSE))
+		globalvar_add_simple_int("usbgadget.fastboot_max_download_size",
 				 &fastboot_max_download_size, "%u");
 
 	return 0;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
