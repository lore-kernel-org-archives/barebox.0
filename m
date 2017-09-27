Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9m-0004KS-QV
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:08 +0200
Message-Id: <20170927120910.10516-11-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] usbgadget: fastboot: Allow to automatically export the
 bbu handlers
To: Barebox List <barebox@lists.infradead.org>

We have a list of registered handlers which take a barebox update. Do
the next step and allow to automatically export them via fastboot so
that barebox can be updated via fastboot without manually exporting
the partition. Since this may not be desirable in all cases this
behaviour is configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 18 ++++++++++++++++++
 drivers/usb/gadget/multi.c      |  1 +
 include/usb/fastboot.h          |  7 +++++++
 3 files changed, 26 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 0f2c02ee47..85c64c05c8 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -283,6 +283,21 @@ out:
 	return ret;
 }
 
+static int fastboot_add_bbu_variables(struct bbu_handler *handler, void *ctx)
+{
+	struct f_fastboot *f_fb = ctx;
+	char *name;
+	int ret;
+
+	name = basprintf("bbu-%s", handler->name);
+
+	ret = file_list_add_entry(f_fb->files, name, handler->devicefile, 0);
+
+	free(name);
+
+	return ret;
+}
+
 static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct usb_composite_dev *cdev = c->cdev;
@@ -302,6 +317,9 @@ static int fastboot_bind(struct usb_configuration *c, struct usb_function *f)
 	var = fb_addvar(f_fb, "bootloader-version");
 	fb_setvar(var, release_string);
 
+	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && opts->export_bbu)
+		bbu_handlers_iterate(fastboot_add_bbu_variables, f_fb);
+
 	file_list_for_each_entry(f_fb->files, fentry) {
 		ret = fastboot_add_partition_variables(f_fb, fentry);
 		if (ret)
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 6eeeb4e982..44969be0c9 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -128,6 +128,7 @@ static int multi_bind_fastboot(struct usb_composite_dev *cdev)
 
 	opts = container_of(fi_fastboot, struct f_fastboot_opts, func_inst);
 	opts->files = gadget_multi_opts->fastboot_opts.files;
+	opts->export_bbu = gadget_multi_opts->fastboot_opts.export_bbu;
 
 	f_fastboot = usb_get_function(fi_fastboot);
 	if (IS_ERR(f_fastboot)) {
diff --git a/include/usb/fastboot.h b/include/usb/fastboot.h
index dab5a9a299..ced890c9ab 100644
--- a/include/usb/fastboot.h
+++ b/include/usb/fastboot.h
@@ -5,9 +5,16 @@
 #include <file-list.h>
 #include <usb/composite.h>
 
+/**
+ * struct f_fastboot_opts - options to configure the fastboot gadget
+ * @func_inst:	The USB function instance to register on
+ * @files:	A file_list containing the files (partitions) to export via fastboot
+ * @export_bbu:	Automatically include the partitions provided by barebox update (bbu)
+ */
 struct f_fastboot_opts {
 	struct usb_function_instance func_inst;
 	struct file_list *files;
+	bool export_bbu;
 };
 
 #endif /* _USB_FASTBOOT_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
