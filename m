Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GM-5G
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:09 +0200
Message-Id: <20170927120910.10516-12-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] fastboot command: Add -b option to export bbu handlers
To: Barebox List <barebox@lists.infradead.org>

When -b is given the usbgadget command will automatically export the
registered bbu handlers via fastboot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbgadget.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 59359098ad..507871edd2 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -33,11 +33,11 @@
 static int do_usbgadget(int argc, char *argv[])
 {
 	int opt, ret;
-	int acm = 1, create_serial = 0, fastboot_set = 0;
+	int acm = 1, create_serial = 0, fastboot_set = 0, fastboot_export_bbu = 0;
 	const char *fastboot_opts = NULL, *dfu_opts = NULL;
 	struct f_multi_opts *opts;
 
-	while ((opt = getopt(argc, argv, "asdA::D:")) > 0) {
+	while ((opt = getopt(argc, argv, "asdA::D:b")) > 0) {
 		switch (opt) {
 		case 'a':
 			acm = 1;
@@ -54,6 +54,9 @@ static int do_usbgadget(int argc, char *argv[])
 			fastboot_opts = optarg;
 			fastboot_set = 1;
 			break;
+		case 'b':
+			fastboot_export_bbu = 1;
+			break;
 		case 'd':
 			usb_multi_unregister();
 			return 0;
@@ -85,6 +88,7 @@ static int do_usbgadget(int argc, char *argv[])
 		opts->fastboot_opts.files = file_list_parse(fastboot_opts);
 		if (IS_ERR(opts->fastboot_opts.files))
 			goto err_parse;
+		opts->fastboot_opts.export_bbu = fastboot_export_bbu;
 	}
 
 	if (dfu_opts) {
@@ -119,6 +123,7 @@ BAREBOX_CMD_HELP_OPT ("-a",   "Create CDC ACM function")
 BAREBOX_CMD_HELP_OPT ("-s",   "Create Generic Serial function")
 BAREBOX_CMD_HELP_OPT ("-A [desc]",	"Create Android Fastboot function. If 'desc' is not provided,")
 BAREBOX_CMD_HELP_OPT ("",		"trying to use 'global.usbgadget.fastboot_function' variable.")
+BAREBOX_CMD_HELP_OPT ("-b",    "include registered barebox update handlers (fastboot specific)")
 BAREBOX_CMD_HELP_OPT ("-D <desc>",   "Create DFU function")
 BAREBOX_CMD_HELP_OPT ("-d",   "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
