Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzu-0000AD-6L
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:57 +0200
Message-Id: <1376551741-16438-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] remove remaining references of CONFIG_BOARDINFO
To: barebox@lists.infradead.org

With this all code uses barebox_get_model() and no longer
a compile time generated string.

Also this renames barebox_boardinfo() to barebox_get_model()
since we are going to add the corresponding _set_ function
and 'model' corresponds to the devicetree notion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c                |  4 ++--
 commands/usbserial.c          |  4 ++--
 common/Kconfig                |  2 +-
 common/misc.c                 | 20 ++++++++++----------
 common/version.c              |  2 +-
 include/common.h              |  2 +-
 include/usb/dfu.h             |  2 +-
 include/usb/usbserial.h       |  2 +-
 lib/process_escape_sequence.c |  2 +-
 9 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index af6573a..ec1197a 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -99,7 +99,7 @@ static int do_dfu(int argc, char *argv[])
 	char *endptr, *argstr;
 	struct usb_dfu_dev *dfu_alts = NULL;
 	char *manufacturer = "barebox";
-	char *productname = CONFIG_BOARDINFO;
+	const char *productname = barebox_get_model();
 	u16 idVendor = 0, idProduct = 0;
 
 
@@ -163,7 +163,7 @@ BAREBOX_CMD_HELP_START(dfu)
 BAREBOX_CMD_HELP_USAGE("dfu [OPTIONS] <description>\n")
 BAREBOX_CMD_HELP_SHORT("Start firmware update with the Device Firmware Update (DFU) protocol.\n")
 BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
-BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
+BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string\n")
 BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
 BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
 BAREBOX_CMD_HELP_OPT  ("<description>",
diff --git a/commands/usbserial.c b/commands/usbserial.c
index a884a28..bd5067f 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -33,7 +33,7 @@ static int do_usbserial(int argc, char *argv[])
 	struct usb_serial_pdata pdata;
 	char *argstr;
 	char *manufacturer = "barebox";
-	char *productname = CONFIG_BOARDINFO;
+	const char *productname = barebox_get_model();
 	u16 idVendor = 0, idProduct = 0;
 	int mode = 0;
 
@@ -83,7 +83,7 @@ BAREBOX_CMD_HELP_START(usbserial)
 BAREBOX_CMD_HELP_USAGE("usbserial [OPTIONS] <description>\n")
 BAREBOX_CMD_HELP_SHORT("Enable/disable a serial gadget on the USB device interface.\n")
 BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
-BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
+BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string\n")
 BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
 BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
 BAREBOX_CMD_HELP_OPT  ("-a",   "CDC ACM (default)\n")
diff --git a/common/Kconfig b/common/Kconfig
index 6322d9d..dd70578 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -353,7 +353,7 @@ config HUSH_FANCY_PROMPT
 	prompt "allow fancy hush prompts"
 	help
 	  Allow to set PS1 from the command line. PS1 can have several escaped commands
-	  like \h for CONFIG_BOARDINFO or \w for the current working directory.
+	  like \h for the 'model' string or \w for the current working directory.
 
 config HUSH_GETOPT
 	bool
diff --git a/common/misc.c b/common/misc.c
index 8066494..14c3304 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -126,19 +126,19 @@ EXPORT_SYMBOL(perror);
 void (*do_execute)(void *func, int argc, char *argv[]);
 EXPORT_SYMBOL(do_execute);
 
-static const char *boardinfo;
+static const char *model;
 
-const char *barebox_boardinfo(void)
+const char *barebox_get_model(void)
 {
-	if (boardinfo)
-		return boardinfo;
+	if (model)
+		return model;
 
-	boardinfo = of_get_model();
-	if (boardinfo)
-		boardinfo = xstrdup(boardinfo);
+	model = of_get_model();
+	if (model)
+		model = xstrdup(model);
 	else
-		boardinfo = CONFIG_BOARDINFO;
+		model = CONFIG_BOARDINFO;
 
-	return boardinfo;
+	return model;
 }
-EXPORT_SYMBOL(barebox_boardinfo);
+EXPORT_SYMBOL(barebox_get_model);
diff --git a/common/version.c b/common/version.c
index e21dbbe..79b2a54 100644
--- a/common/version.c
+++ b/common/version.c
@@ -9,5 +9,5 @@ EXPORT_SYMBOL(version_string);
 void barebox_banner (void)
 {
 	pr_info("\n\n%s\n\n", version_string);
-	pr_info("Board: %s\n", barebox_boardinfo());
+	pr_info("Board: %s\n", barebox_get_model());
 }
diff --git a/include/common.h b/include/common.h
index e813726..09b8c39 100644
--- a/include/common.h
+++ b/include/common.h
@@ -234,7 +234,7 @@ void barebox_banner(void);
 static inline void barebox_banner(void) {}
 #endif
 
-const char *barebox_boardinfo(void);
+const char *barebox_get_model(void);
 
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index d522e1f..698ba9d 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -33,7 +33,7 @@ struct usb_dfu_dev {
 
 struct usb_dfu_pdata {
 	char			*manufacturer;
-	char			*productname;
+	const char		*productname;
 	u16			idVendor;
 	u16			idProduct;
 
diff --git a/include/usb/usbserial.h b/include/usb/usbserial.h
index 43c839c..7c416aa 100644
--- a/include/usb/usbserial.h
+++ b/include/usb/usbserial.h
@@ -3,7 +3,7 @@
 
 struct usb_serial_pdata {
 	char		*manufacturer;
-	char		*productname;
+	const char		*productname;
 	u16			idVendor;
 	u16			idProduct;
 	int			mode;
diff --git a/lib/process_escape_sequence.c b/lib/process_escape_sequence.c
index 612976b..be77792 100644
--- a/lib/process_escape_sequence.c
+++ b/lib/process_escape_sequence.c
@@ -54,7 +54,7 @@ int process_escape_sequence(const char *source, char *dest, int destlen)
 				dest[i++] = 0x1b;
 				break;
 			case 'h':
-				i += snprintf(dest + i, destlen - i, "%s", barebox_boardinfo());
+				i += snprintf(dest + i, destlen - i, "%s", barebox_get_model());
 				break;
 			case 'w':
 				i += snprintf(dest + i, destlen - i, "%s", getcwd());
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
