Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbKD-0005nK-Ni
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:57 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:04 +0100
Message-Id: <20210215103704.32537-12-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/12] usbgadget: refactor usbgadget_register to accept array
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

usbgadget_register currently takes 6 arguments. Instead of increasing
them to 8 to support the new usb mass storage gadget, rewrite it to
accept a pointer to a struct with all the options instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/usbgadget.c       | 19 +++++++++----------
 common/usbgadget.c         | 31 +++++++++++++++++++++----------
 include/usb/gadget-multi.h | 15 ++++++++++++---
 3 files changed, 42 insertions(+), 23 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 3b115f147d80..07094026db71 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -18,26 +18,25 @@
 
 static int do_usbgadget(int argc, char *argv[])
 {
+	struct usbgadget_funcs funcs = {};
 	int opt;
-	bool acm = false, dfu = false, fastboot = false, export_bbu = false;
-	const char *fastboot_opts = NULL, *dfu_opts = NULL;
 
 	while ((opt = getopt(argc, argv, "asdA::D::b")) > 0) {
 		switch (opt) {
 		case 'a':
 		case 's':
-			acm = true;
+			funcs.flags |= USBGADGET_ACM;
 			break;
 		case 'D':
-			dfu = true;
-			dfu_opts = optarg;
+			funcs.flags |= USBGADGET_DFU;
+			funcs.dfu_opts = optarg;
 			break;
 		case 'A':
-			fastboot = true;
-			fastboot_opts = optarg;
+			funcs.flags |= USBGADGET_FASTBOOT;
+			funcs.fastboot_opts = optarg;
 			break;
 		case 'b':
-			export_bbu = true;
+			funcs.flags |= USBGADGET_EXPORT_BBU;
 			break;
 		case 'd':
 			usb_multi_unregister();
@@ -47,8 +46,8 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
-	return usbgadget_register(dfu, dfu_opts, fastboot, fastboot_opts, acm,
-				  export_bbu);
+
+	return usbgadget_register(&funcs);
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
diff --git a/common/usbgadget.c b/common/usbgadget.c
index feec0b6634be..48e2ea9a349c 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -32,14 +32,20 @@ static struct file_list *parse(const char *files)
 	return list;
 }
 
-int usbgadget_register(bool dfu, const char *dfu_opts,
-		       bool fastboot, const char *fastboot_opts,
-		       bool acm, bool export_bbu)
+int usbgadget_register(const struct usbgadget_funcs *funcs)
 {
 	int ret;
+	int flags = funcs->flags;
 	struct device_d *dev;
 	struct f_multi_opts *opts;
 	const char *fastboot_partitions = get_fastboot_partitions();
+	const char *dfu_opts = funcs->dfu_opts;
+	const char *fastboot_opts = funcs->fastboot_opts;
+	bool dfu, fastboot, acm;
+
+	dfu = flags & USBGADGET_DFU;
+	fastboot = flags & USBGADGET_FASTBOOT;
+	acm = flags & USBGADGET_ACM;
 
 	if (dfu && !dfu_opts && dfu_function && *dfu_function)
 		dfu_opts = dfu_function;
@@ -66,7 +72,7 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 
 	if (fastboot_opts) {
 		opts->fastboot_opts.files = parse(fastboot_opts);
-		opts->fastboot_opts.export_bbu = export_bbu;
+		opts->fastboot_opts.export_bbu = flags & USBGADGET_EXPORT_BBU;
 	}
 
 	if (dfu_opts)
@@ -93,18 +99,23 @@ int usbgadget_register(bool dfu, const char *dfu_opts,
 
 static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 {
+	struct usbgadget_funcs funcs = {};
 	static bool started;
-	bool fastboot_bbu = get_fastboot_bbu();
-	int err;
 
 	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart || started)
 		return 0;
 
-	err = usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
-	if (!err)
-		started = true;
+	if (get_fastboot_bbu())
+		funcs.flags |= USBGADGET_EXPORT_BBU;
+
+	if (acm)
+		funcs.flags |= USBGADGET_ACM;
+
+	funcs.flags |= USBGADGET_DFU | USBGADGET_FASTBOOT;
+
+	started = 1;
 
-	return err;
+	return usbgadget_register(&funcs);
 }
 
 static int usbgadget_globalvars_init(void)
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 9bb6c889f3e9..244bdd946f91 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -16,8 +16,17 @@ int usb_multi_register(struct f_multi_opts *opts);
 void usb_multi_unregister(void);
 void usb_multi_opts_release(struct f_multi_opts *opts);
 
-int usbgadget_register(bool dfu, const char *dfu_opts,
-		       bool fastboot, const char *fastboot_opts,
-		       bool acm, bool export_bbu);
+#define USBGADGET_EXPORT_BBU	(1 << 0)
+#define USBGADGET_ACM		(1 << 1)
+#define USBGADGET_DFU		(1 << 2)
+#define USBGADGET_FASTBOOT	(1 << 3)
+
+struct usbgadget_funcs {
+	int flags;
+	const char *fastboot_opts;
+	const char *dfu_opts;
+};
+
+int usbgadget_register(const struct usbgadget_funcs *funcs);
 
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
