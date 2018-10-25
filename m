Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFoFz-0007oo-66
 for barebox@lists.infradead.org; Thu, 25 Oct 2018 22:37:37 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992786AbeJYWhUMKWhP (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Fri, 26 Oct 2018 00:37:20 +0200
Date: Fri, 26 Oct 2018 00:37:19 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181025223718.GA24844@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] usbgadget: autostart: add DFU support
To: barebox@lists.infradead.org

Use global variable dfu_function to autostart DFU. As similar code
is used to start multifunction gadget using command, move common
code to common/usbgadget.c and consolidate it.

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 This is a draft, comments welcome. Getting 
 Cannot set parameter otg.mode: No such device
 but that's same as before this patch. Documentation is probably
 also worth updating...

 commands/Kconfig                              |  1 -
 commands/usbgadget.c                          | 66 +++-----------
 common/Kconfig                                |  7 ++
 common/Makefile                               |  1 +
 .../gadget/autostart.c => common/usbgadget.c  | 85 ++++++++++++++-----
 drivers/usb/gadget/Kconfig                    |  8 +-
 drivers/usb/gadget/Makefile                   |  1 -
 7 files changed, 89 insertions(+), 80 deletions(-)
 rename drivers/usb/gadget/autostart.c => common/usbgadget.c (51%)

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
index a1744cbe1..416b2acfc 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -30,14 +30,18 @@
 #include <usb/dfu.h>
 #include <usb/gadget-multi.h>
 
+int usbgadget_register(bool dfu_set, const char *dfu_opts,
+		       bool fastboot_set, const char *fastboot_opts,
+		       bool create_serial, bool is_acm, bool export_bbu);
+
 static int do_usbgadget(int argc, char *argv[])
 {
-	int opt, ret;
-	int acm = 1, create_serial = 0, fastboot_set = 0, fastboot_export_bbu = 0;
+	int opt;
+	bool acm = true, create_serial = false, dfu_set = false;
+	bool fastboot_set = false, fastboot_export_bbu = false;
 	const char *fastboot_opts = NULL, *dfu_opts = NULL;
-	struct f_multi_opts *opts;
 
-	while ((opt = getopt(argc, argv, "asdA::D:b")) > 0) {
+	while ((opt = getopt(argc, argv, "asdA::D::b")) > 0) {
 		switch (opt) {
 		case 'a':
 			acm = 1;
@@ -49,6 +53,7 @@ static int do_usbgadget(int argc, char *argv[])
 			break;
 		case 'D':
 			dfu_opts = optarg;
+			dfu_set = 1;
 			break;
 		case 'A':
 			fastboot_opts = optarg;
@@ -65,54 +70,8 @@ static int do_usbgadget(int argc, char *argv[])
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
+	return usbgadget_register(dfu_set, dfu_opts, fastboot_set, fastboot_opts,
+				  create_serial, acm, fastboot_export_bbu);
 }
 
 BAREBOX_CMD_HELP_START(usbgadget)
@@ -124,7 +83,8 @@ BAREBOX_CMD_HELP_OPT ("-s\t", "Create Generic Serial function")
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
index f640a9667..7d72ad489 100644
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
@@ -29,35 +29,65 @@
 
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
+int usbgadget_register(bool dfu_set, const char *dfu_opts,
+		       bool fastboot_set, const char *fastboot_opts,
+		       bool create_serial, bool is_acm, bool export_bbu)
 {
-	struct f_multi_opts *opts;
 	int ret;
+	struct f_multi_opts *opts;
 
-	if (!autostart)
-		return 0;
+	if (dfu_set && !dfu_opts && dfu_function && *dfu_function)
+		dfu_opts = dfu_function;
+
+	if (fastboot_set && !fastboot_opts &&
+	    fastboot_function && *fastboot_function)
+		fastboot_opts = fastboot_function;
+
+	if (!dfu_opts && !fastboot_opts && !create_serial)
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
+
+	opts->create_acm = is_acm;
 
-	if (!opts->fastboot_opts.files && !opts->create_acm) {
+	if (!opts->dfu_opts.files && !opts->fastboot_opts.files &&
+	    !opts->create_acm) {
 		pr_warn("No functions to register\n");
+		free(opts);
 		return 0;
 	}
 
@@ -69,16 +99,28 @@ static int usbgadget_autostart(void)
 
 	return ret;
 }
+
+static int usbgadget_autostart(void)
+{
+	if (!IS_ENABLED(CONFIG_USB_GADGET_AUTOSTART) || !autostart)
+		return 0;
+
+	return usbgadget_register(true, NULL, true, NULL, acm, acm,
+				  fastboot_bbu);
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
@@ -90,6 +132,9 @@ BAREBOX_MAGICVAR_NAMED(global_usbgadget_autostart,
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
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
