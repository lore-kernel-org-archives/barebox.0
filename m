Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJk-0005XJ-FP
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:37:05 +0100
Message-Id: <20210215103704.32537-13-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/12] usbgadget: multi: wire mass storage gadget into
 composite gadget
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For configuration with CONFIG_POLLER_YIELD=y, we can call the blocking
loop in a poller and do other stuff in the "foreground". Add a new
usbgadget -S option for doing that. The old ums command still remains,
but is off by default for all platforms that can use usbgadget -S.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/usb.rst          |  2 ++
 commands/Kconfig                    | 10 ++++++++
 commands/Makefile                   |  2 +-
 commands/usbgadget.c                | 10 ++++++--
 common/usbgadget.c                  | 28 ++++++++++++++++++----
 drivers/usb/gadget/Kconfig          | 12 +++++++++-
 drivers/usb/gadget/f_mass_storage.c |  2 +-
 drivers/usb/gadget/multi.c          | 36 +++++++++++++++++++++++++++++
 include/usb/gadget-multi.h          |  4 ++++
 9 files changed, 96 insertions(+), 10 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index ca5f8138deda..55b2d7eaf13b 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -266,6 +266,8 @@ USB Gadget autostart Options
   See :ref:`command_usbgadget` -a. (Default 0).
 ``global.usbgadget.dfu_function``
   Function description for DFU. See :ref:`command_usbgadget` -D [desc].
+``global.usbgadget.ums_function``
+  Function description for USB mass storage. See :ref:`command_usbgadget` -S [desc].
 ``global.fastboot.partitions``
   Function description for fastboot. See :ref:`command_usbgadget` -A [desc].
 ``global.fastboot.bbu``
diff --git a/commands/Kconfig b/commands/Kconfig
index b672f0c16a85..281a6c30b57f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1981,6 +1981,16 @@ config CMD_USBGADGET
 	depends on USB_GADGET
 	prompt "usbgadget"
 
+config CMD_UMS
+	bool "blocking ums (usb mass storage) command" if USB_GADGET_MASS_STORAGE_MULTI
+	default y if !USB_GADGET_MASS_STORAGE_MULTI
+	depends on USB_GADGET
+	help
+	  The USB mass storage driver can't run in the background on all
+	  supported platforms. If you are on such a platform, say y here.
+	  Otherwise, use the command usbgadget to set it up as part of a
+	  composite gadget.
+
 config CMD_WD
 	bool
 	depends on WATCHDOG
diff --git a/commands/Makefile b/commands/Makefile
index a31d5c877703..7d0f69f834ba 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -130,6 +130,6 @@ obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
-obj-$(CONFIG_USB_GADGET_MASS_STORAGE) += ums.o
+obj-$(CONFIG_CMD_UMS)		+= ums.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 07094026db71..03df3ecd717d 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -21,7 +21,7 @@ static int do_usbgadget(int argc, char *argv[])
 	struct usbgadget_funcs funcs = {};
 	int opt;
 
-	while ((opt = getopt(argc, argv, "asdA::D::b")) > 0) {
+	while ((opt = getopt(argc, argv, "asdA::D::S::b")) > 0) {
 		switch (opt) {
 		case 'a':
 		case 's':
@@ -35,6 +35,10 @@ static int do_usbgadget(int argc, char *argv[])
 			funcs.flags |= USBGADGET_FASTBOOT;
 			funcs.fastboot_opts = optarg;
 			break;
+		case 'S':
+			funcs.flags |= USBGADGET_MASS_STORAGE;
+			funcs.ums_opts = optarg;
+			break;
 		case 'b':
 			funcs.flags |= USBGADGET_EXPORT_BBU;
 			break;
@@ -60,13 +64,15 @@ BAREBOX_CMD_HELP_OPT ("-A <desc>", "Create Android Fastboot function. If 'desc'
 BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific)")
 BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function. If 'desc' is not provided, "
 				   "try to use 'global.usbgadget.dfu_function' variable.")
+BAREBOX_CMD_HELP_OPT ("-S <desc>", "Create USB Mass Storage function. If 'desc' is not provided, "
+				   "try to use 'global.usbgadget.ums_function' variable.")
 BAREBOX_CMD_HELP_OPT ("-d\t", "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usbgadget)
 	.cmd		= do_usbgadget,
 	BAREBOX_CMD_DESC("Create USB Gadget multifunction device")
-	BAREBOX_CMD_OPTS("[-adAD]")
+	BAREBOX_CMD_OPTS("[-adADS]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbgadget_help)
 BAREBOX_CMD_END
diff --git a/common/usbgadget.c b/common/usbgadget.c
index 48e2ea9a349c..14e1f392300e 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -20,7 +20,7 @@
 
 static int autostart;
 static int acm;
-static char *dfu_function;
+static char *dfu_function, *ums_function;
 
 static struct file_list *parse(const char *files)
 {
@@ -41,11 +41,13 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 	const char *fastboot_partitions = get_fastboot_partitions();
 	const char *dfu_opts = funcs->dfu_opts;
 	const char *fastboot_opts = funcs->fastboot_opts;
-	bool dfu, fastboot, acm;
+	const char *ums_opts = funcs->ums_opts;
+	bool dfu, fastboot, acm, ums;
 
 	dfu = flags & USBGADGET_DFU;
 	fastboot = flags & USBGADGET_FASTBOOT;
 	acm = flags & USBGADGET_ACM;
+	ums = flags & USBGADGET_MASS_STORAGE;
 
 	if (dfu && !dfu_opts && dfu_function && *dfu_function)
 		dfu_opts = dfu_function;
@@ -54,7 +56,10 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 	    fastboot_partitions && *fastboot_partitions)
 		fastboot_opts = fastboot_partitions;
 
-	if (!dfu_opts && !fastboot_opts && !acm)
+	if (ums && !dfu_opts && ums_function && *ums_function)
+		ums_opts = ums_function;
+
+	if (!dfu_opts && !fastboot_opts && !ums_opts && !acm)
 		return COMMAND_ERROR_USAGE;
 
 	/*
@@ -67,6 +72,12 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 		return -EINVAL;
 	}
 
+	if (ums_opts && !IS_ENABLED(CONFIG_USB_GADGET_MASS_STORAGE_MULTI)) {
+		pr_err("%s only supports blocking 'ums' command\n",
+		       IS_ENABLED(CONFIG_HAS_ARCH_SJLJ) ? "Configuration" : "Architecture");
+		return -ENOSYS;
+	}
+
 	opts = xzalloc(sizeof(*opts));
 	opts->release = usb_multi_opts_release;
 
@@ -78,7 +89,11 @@ int usbgadget_register(const struct usbgadget_funcs *funcs)
 	if (dfu_opts)
 		opts->dfu_opts.files = parse(dfu_opts);
 
-	if (!opts->dfu_opts.files && !opts->fastboot_opts.files && !acm) {
+	if (ums_opts)
+		opts->ums_opts.files = parse(ums_opts);
+
+	if (!opts->dfu_opts.files && !opts->fastboot_opts.files &&
+	    !opts->ums_opts.files && !acm) {
 		pr_warn("No functions to register\n");
 		free(opts);
 		return 0;
@@ -111,7 +126,7 @@ static int usbgadget_autostart_set(struct param_d *param, void *ctx)
 	if (acm)
 		funcs.flags |= USBGADGET_ACM;
 
-	funcs.flags |= USBGADGET_DFU | USBGADGET_FASTBOOT;
+	funcs.flags |= USBGADGET_DFU | USBGADGET_FASTBOOT | USBGADGET_MASS_STORAGE;
 
 	started = 1;
 
@@ -126,6 +141,7 @@ static int usbgadget_globalvars_init(void)
 		globalvar_add_simple_bool("usbgadget.acm", &acm);
 	}
 	globalvar_add_simple_string("usbgadget.dfu_function", &dfu_function);
+	globalvar_add_simple_string("usbgadget.ums_function", &ums_function);
 
 	return 0;
 }
@@ -137,3 +153,5 @@ BAREBOX_MAGICVAR(global.usbgadget.acm,
 		 "usbgadget: Create CDC ACM function");
 BAREBOX_MAGICVAR(global.usbgadget.dfu_function,
 		 "usbgadget: Create DFU function");
+BAREBOX_MAGICVAR(global.usbgadget.ums_function,
+		 "usbgadget: Create USB Mass Storage function");
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 90d2378b5b72..f0756667f110 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -39,7 +39,8 @@ config USB_GADGET_AUTOSTART
 	help
 	  Enabling this option allows to automatically start a dfu or
 	  fastboot gadget during boot. This behaviour is controlled with
-	  the global.usbgadget.dfu_function and global.fastboot.* variables.
+	  the global.usbgadget.dfu_function, global.usbgadget.ums_function
+	  and global.fastboot.* variables.
 
 comment "USB Gadget drivers"
 
@@ -70,4 +71,13 @@ config USB_GADGET_MASS_STORAGE
 	  device. Multiple storages can be specified at once on
 	  instantiation time.
 
+config USB_GADGET_MASS_STORAGE_MULTI
+	def_bool y
+	depends on USB_GADGET_MASS_STORAGE
+	depends on POLLER_YIELD
+	help
+	  This enables the USB Mass Storage gadget to run in the
+	  background, either on its own or as part of a multifunction
+	  composite gadget.
+
 endif
diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/f_mass_storage.c
index c3e6eb933ce7..472f9cf3bea0 100644
--- a/drivers/usb/gadget/f_mass_storage.c
+++ b/drivers/usb/gadget/f_mass_storage.c
@@ -287,7 +287,7 @@ static struct usb_gadget_strings	fsg_stringtab = {
 
 /*-------------------------------------------------------------------------*/
 
-#ifdef CONFIG_POLLER_YIELD
+#ifdef CONFIG_USB_GADGET_MASS_STORAGE_MULTI
 
 #include <linux/completion.h>
 #include <linux/kthread.h>
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 95f5b90c88b5..9189caf20f98 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -60,6 +60,8 @@ static struct usb_function_instance *fi_dfu;
 static struct usb_function *f_dfu;
 static struct usb_function_instance *fi_fastboot;
 static struct usb_function *f_fastboot;
+static struct usb_function_instance *fi_ums;
+static struct usb_function *f_ums;
 
 static struct usb_configuration config = {
 	.bConfigurationValue	= 1,
@@ -139,6 +141,31 @@ static int multi_bind_fastboot(struct usb_composite_dev *cdev)
 	return usb_add_function(&config, f_fastboot);
 }
 
+static int multi_bind_ums(struct usb_composite_dev *cdev)
+{
+	int ret;
+	struct f_ums_opts *opts;
+
+	fi_ums = usb_get_function_instance("ums");
+	if (IS_ERR(fi_ums)) {
+		ret = PTR_ERR(fi_ums);
+		fi_ums = NULL;
+		return ret;
+	}
+
+	opts = container_of(fi_ums, struct f_ums_opts, func_inst);
+	opts->files = gadget_multi_opts->ums_opts.files;
+
+	f_ums = usb_get_function(fi_ums);
+	if (IS_ERR(f_ums)) {
+		ret = PTR_ERR(f_ums);
+		f_ums = NULL;
+		return ret;
+	}
+
+	return usb_add_function(&config, f_ums);
+}
+
 static int multi_unbind(struct usb_composite_dev *cdev)
 {
 	if (gadget_multi_opts->create_acm) {
@@ -205,6 +232,13 @@ static int multi_bind(struct usb_composite_dev *cdev)
 			goto out;
 	}
 
+	if (gadget_multi_opts->ums_opts.files) {
+		printf("%s: creating USB Mass Storage function\n", __func__);
+		ret = multi_bind_ums(cdev);
+		if (ret)
+			goto out;
+	}
+
 	if (gadget_multi_opts->create_acm) {
 		printf("%s: creating ACM function\n", __func__);
 		ret = multi_bind_acm(cdev);
@@ -272,6 +306,8 @@ void usb_multi_opts_release(struct f_multi_opts *opts)
 		file_list_free(opts->fastboot_opts.files);
 	if (opts->dfu_opts.files)
 		file_list_free(opts->dfu_opts.files);
+	if (opts->ums_opts.files)
+		file_list_free(opts->ums_opts.files);
 
 	free(opts);
 }
diff --git a/include/usb/gadget-multi.h b/include/usb/gadget-multi.h
index 244bdd946f91..e733bbbbc366 100644
--- a/include/usb/gadget-multi.h
+++ b/include/usb/gadget-multi.h
@@ -4,10 +4,12 @@
 #include <usb/fastboot.h>
 #include <usb/dfu.h>
 #include <usb/usbserial.h>
+#include <usb/mass_storage.h>
 
 struct f_multi_opts {
 	struct fastboot_opts fastboot_opts;
 	struct f_dfu_opts dfu_opts;
+	struct f_ums_opts ums_opts;
 	int create_acm;
 	void (*release)(struct f_multi_opts *opts);
 };
@@ -20,11 +22,13 @@ void usb_multi_opts_release(struct f_multi_opts *opts);
 #define USBGADGET_ACM		(1 << 1)
 #define USBGADGET_DFU		(1 << 2)
 #define USBGADGET_FASTBOOT	(1 << 3)
+#define USBGADGET_MASS_STORAGE	(1 << 4)
 
 struct usbgadget_funcs {
 	int flags;
 	const char *fastboot_opts;
 	const char *dfu_opts;
+	const char *ums_opts;
 };
 
 int usbgadget_register(const struct usbgadget_funcs *funcs);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
