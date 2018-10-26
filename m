Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG4Cq-0000X0-5M
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 15:39:26 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23993030AbeJZPjL6nd-z (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 26 Oct 2018 17:39:11 +0200
Date: Fri, 26 Oct 2018 17:39:10 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181026153910.GB16049@lenoch>
References: <20181026153508.GA16049@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026153508.GA16049@lenoch>
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
Subject: [PATCH v2 2/2] usbgadget: autostart: add DFU support
To: barebox@lists.infradead.org

Use global variable dfu_function to autostart DFU. As similar code
is used to start multifunction gadget using command, move common
code to common/usbgadget.c and consolidate it.
It turned out that '-s' option of usbgadget command does nothing,
so remove its help text and make it function as '-a'.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 Changes:
 -v2: Add documentation, move prototy to the header, remove -s,
      polishing...

 Documentation/user/usb.rst                    |  2 +
 commands/Kconfig                              |  1 -
 commands/usbgadget.c                          | 72 +++------------
 common/Kconfig                                |  7 ++
 common/Makefile                               |  1 +
 .../gadget/autostart.c => common/usbgadget.c  | 88 ++++++++++++++-----
 drivers/usb/gadget/Kconfig                    |  8 +-
 drivers/usb/gadget/Makefile                   |  1 -
 include/usb/gadget-multi.h                    |  4 +
 9 files changed, 95 insertions(+), 89 deletions(-)
 rename drivers/usb/gadget/autostart.c => common/usbgadget.c (51%)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index b89d46bb6..029e46354 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -264,6 +264,8 @@ USB Gadget autostart Options
 ``global.usbgadget.acm``
   Boolean flag. If set to 1, CDC ACM function will be created.
   See :ref:`command_usbgadget` -a. (Default 0).
+``global.usbgadget.dfu_function``
+  Function description for DFU. See :ref:`command_usbgadget` -D [desc].
 ``global.usbgadget.fastboot_function``
   Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
 ``global.usbgadget.fastboot_bbu``
diff --git a/commands/Kconfig b/commands/Kconfig
index 675bd1ca7..1de4b9d60 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1910,7 +1910,6 @@ config CMD_USB
 config CMD_USBGADGET
 	bool
 	depends on USB_GADGET
-	select FILE_LIST
 	prompt "usbgadget"
 
 config CMD_WD
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index a1744cbe1..e8e1e9ada 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -32,30 +32,26 @@
 
 static int do_usbgadget(int argc, char *argv[])
 {
-	int opt, ret;
-	int acm = 1, create_serial = 0, fastboot_set = 0, fastboot_export_bbu = 0;
+	int opt;
+	bool acm = false, dfu = false, fastboot = false, export_bbu = false;
 	const char *fastboot_opts = NULL, *dfu_opts = NULL;
-	struct f_multi_opts *opts;
 
-	while ((opt = getopt(argc, argv, "asdA::D:b")) > 0) {
+	while ((opt = getopt(argc, argv, "asdA::D::b")) > 0) {
 		switch (opt) {
 		case 'a':
-			acm = 1;
-			create_serial = 1;
-			break;
 		case 's':
-			acm = 0;
-			create_serial = 1;
+			acm = true;
 			break;
 		case 'D':
+			dfu = true;
 			dfu_opts = optarg;
 			break;
 		case 'A':
+			fastboot = true;
 			fastboot_opts = optarg;
-			fastboot_set = 1;
 			break;
 		case 'b':
-			fastboot_export_bbu = 1;
+			export_bbu = true;
 			break;
 		case 'd':
 			usb_multi_unregister();
@@ -65,54 +61,8 @@ static int do_usbgadget(int argc, char *argv[])
 		}
 	}
 
-	if (fastboot_set && !fastboot_opts)
-		fastboot_opts = getenv("global.usbgadget.fastboot_function");
-
-	if (!dfu_opts && !fastboot_opts && !create_serial)
-		return COMMAND_ERROR_USAGE;
-
-	/*
-	 * Creating a gadget with both DFU and Fastboot doesn't work.
-	 * Both client tools seem to assume that the device only has
-	 * a single configuration
-	 */
-	if (fastboot_opts && dfu_opts) {
-		printf("Only one of Fastboot and DFU allowed\n");
-		return -EINVAL;
-	}
-
-	opts = xzalloc(sizeof(*opts));
-	opts->release = usb_multi_opts_release;
-
-	if (fastboot_opts) {
-		opts->fastboot_opts.files = file_list_parse(fastboot_opts);
-		if (IS_ERR(opts->fastboot_opts.files))
-			goto err_parse;
-		opts->fastboot_opts.export_bbu = fastboot_export_bbu;
-	}
-
-	if (dfu_opts) {
-		opts->dfu_opts.files = file_list_parse(dfu_opts);
-		if (IS_ERR(opts->dfu_opts.files))
-			goto err_parse;
-	}
-
-	if (create_serial) {
-		opts->create_acm = acm;
-	}
-
-	ret = usb_multi_register(opts);
-	if (ret)
-		usb_multi_opts_release(opts);
-
-	return ret;
-
-err_parse:
-	printf("Cannot parse file list \"%s\": %s\n", fastboot_opts, strerrorp(opts->fastboot_opts.files));
-
-	free(opts);
-
-	return 1;
+	return usbgadget_register(dfu, dfu_opts, fastboot, fastboot_opts, acm,
+				  export_bbu);
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
@@ -120,11 +70,11 @@ BAREBOX_CMD_HELP_TEXT("Enable / disable a USB composite gadget on the USB device
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a\t", "Create CDC ACM function")
-BAREBOX_CMD_HELP_OPT ("-s\t", "Create Generic Serial function")
 BAREBOX_CMD_HELP_OPT ("-A <desc>", "Create Android Fastboot function. If 'desc' is not provided, "
 				   "try to use 'global.usbgadget.fastboot_function' variable.")
 BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific)")
-BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function")
+BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function. If 'desc' is not provided, "
+				   "try to use 'global.usbgadget.dfu_function' variable.")
 BAREBOX_CMD_HELP_OPT ("-d\t", "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
 
diff --git a/common/Kconfig b/common/Kconfig
index eddd99ea3..2ad92158c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -115,6 +115,13 @@ config UBIFORMAT
 	depends on MTD_UBI
 	default y
 
+config USBGADGET_START
+	bool
+	depends on CMD_USBGADGET || USB_GADGET_AUTOSTART
+	select ENVIRONMENT_VARIABLES
+	select FILE_LIST
+	default y
+
 config BOOT
 	bool
 
diff --git a/common/Makefile b/common/Makefile
index 13920cc5a..2b0f4cc98 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -64,6 +64,7 @@ obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
+obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
 
 ifdef CONFIG_PASSWORD
 
diff --git a/drivers/usb/gadget/autostart.c b/common/usbgadget.c
similarity index 51%
rename from drivers/usb/gadget/autostart.c
rename to common/usbgadget.c
index f640a9667..a8f104cf1 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/common/usbgadget.c
@@ -11,7 +11,7 @@
  * GNU General Public License for more details.
  *
  */
-#define pr_fmt(fmt) "usbgadget autostart: " fmt
+#define pr_fmt(fmt) "usbgadget: " fmt
 
 #include <common.h>
 #include <command.h>
@@ -29,39 +29,71 @@
 
 static int autostart;
 static int acm;
+static char *dfu_function;
 static char *fastboot_function;
 static int fastboot_bbu;
 
-static int usbgadget_autostart(void)
+static struct file_list *parse(const char *files)
+{
+	struct file_list *list = file_list_parse(files);
+	if (IS_ERR(list)) {
+		pr_err("Parsing file list \"%s\" failed: %s\n", files,
+		       strerrorp(list));
+		return NULL;
+	}
+	return list;
+}
+
+int usbgadget_register(bool dfu, const char *dfu_opts,
+		       bool fastboot, const char *fastboot_opts,
+		       bool acm, bool export_bbu)
 {
-	struct f_multi_opts *opts;
 	int ret;
+	struct device_d *dev;
+	struct f_multi_opts *opts;
 
-	if (!autostart)
-		return 0;
+	if (dfu && !dfu_opts && dfu_function && *dfu_function)
+		dfu_opts = dfu_function;
+
+	if (fastboot && !fastboot_opts &&
+	    fastboot_function && *fastboot_function)
+		fastboot_opts = fastboot_function;
+
+	if (!dfu_opts && !fastboot_opts && !acm)
+		return COMMAND_ERROR_USAGE;
+
+	/*
+	 * Creating a gadget with both DFU and Fastboot doesn't work.
+	 * Both client tools seem to assume that the device only has
+	 * a single configuration
+	 */
+	if (fastboot_opts && dfu_opts) {
+		pr_err("Only one of Fastboot and DFU allowed\n");
+		return -EINVAL;
+	}
 
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
-	if (fastboot_function) {
-		opts->fastboot_opts.files = file_list_parse(fastboot_function);
-		if (IS_ERR(opts->fastboot_opts.files)) {
-			pr_err("Parsing file list \"%s\" failed: %s\n", fastboot_function,
-			       strerrorp(opts->fastboot_opts.files));
-			opts->fastboot_opts.files = NULL;
-		}
-
-		opts->fastboot_opts.export_bbu = fastboot_bbu;
+	if (fastboot_opts) {
+		opts->fastboot_opts.files = parse(fastboot_opts);
+		opts->fastboot_opts.export_bbu = export_bbu;
 	}
 
-	opts->create_acm = acm;
+	if (dfu_opts)
+		opts->dfu_opts.files = parse(dfu_opts);
 
-	if (!opts->fastboot_opts.files && !opts->create_acm) {
+	if (!opts->dfu_opts.files && !opts->fastboot_opts.files && !acm) {
 		pr_warn("No functions to register\n");
+		free(opts);
 		return 0;
 	}
 
-	setenv("otg.mode", "peripheral");
+	opts->create_acm = acm;
+
+	dev = get_device_by_name("otg");
+	if (dev)
+		dev_set_param(dev, "mode", "peripheral");
 
 	ret = usb_multi_register(opts);
 	if (ret)
@@ -69,16 +101,27 @@ static int usbgadget_autostart(void)
 
 	return ret;
 }
+
+static int usbgadget_autostart(void)
+{
+	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart)
+		return 0;
+
+	return usbgadget_register(true, NULL, true, NULL, acm, fastboot_bbu);
+}
 postenvironment_initcall(usbgadget_autostart);
 
 static int usbgadget_globalvars_init(void)
 {
-
-	globalvar_add_simple_bool("usbgadget.autostart", &autostart);
-	globalvar_add_simple_bool("usbgadget.acm", &acm);
+	if (IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART)) {
+		globalvar_add_simple_bool("usbgadget.autostart", &autostart);
+		globalvar_add_simple_bool("usbgadget.acm", &acm);
+		globalvar_add_simple_bool("usbgadget.fastboot_bbu",
+					  &fastboot_bbu);
+	}
+	globalvar_add_simple_string("usbgadget.dfu_function", &dfu_function);
 	globalvar_add_simple_string("usbgadget.fastboot_function",
 				    &fastboot_function);
-	globalvar_add_simple_bool("usbgadget.fastboot_bbu", &fastboot_bbu);
 
 	return 0;
 }
@@ -90,6 +133,9 @@ BAREBOX_MAGICVAR_NAMED(global_usbgadget_autostart,
 BAREBOX_MAGICVAR_NAMED(global_usbgadget_acm,
 		       global.usbgadget.acm,
 		       "usbgadget: Create CDC ACM function");
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_dfu_function,
+		       global.usbgadget.dfu_function,
+		       "usbgadget: Create DFU function");
 BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_function,
 		       global.usbgadget.fastboot_function,
 		       "usbgadget: Create Android Fastboot function");
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index b0408e3bb..ca1bfc1b4 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -33,13 +33,11 @@ config USB_GADGET_DRIVER_PXA27X
 config USB_GADGET_AUTOSTART
 	bool
 	default y
-	select ENVIRONMENT_VARIABLES
-	select FILE_LIST
 	prompt "Automatically start usbgadget on boot"
 	help
-	  Enabling this option allows to automatically start a fastboot
-	  gadget during boot. This behaviour is controlled with the
-	  global.usbgadget.fastboot_function variable.
+	  Enabling this option allows to automatically start a dfu or
+	  fastboot gadget during boot. This behaviour is controlled with
+	  the global.usbgadget.{dfu,fastboot}_function variable.
 
 comment "USB Gadget drivers"
 
diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index e74cf0266..9ef594575 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,6 +1,5 @@
 
 obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o udc-core.o functions.o config.o multi.o
-obj-$(CONFIG_USB_GADGET_AUTOSTART) += autostart.o
 obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
 obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
 obj-$(CONFIG_USB_GADGET_FASTBOOT) += f_fastboot.o
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 81beddc7c..030e604fe 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -16,4 +16,8 @@ int usb_multi_register(struct f_multi_opts *opts);
 void usb_multi_unregister(void);
 void usb_multi_opts_release(struct f_multi_opts *opts);
 
+int usbgadget_register(bool dfu, const char *dfu_opts,
+		       bool fastboot, const char *fastboot_opts,
+		       bool acm, bool export_bbu);
+
 #endif /* __USB_GADGET_MULTI_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
