Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eEW9r-0003tI-Dy
 for barebox@lists.infradead.org; Tue, 14 Nov 2017 08:01:25 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 14 Nov 2017 09:00:56 +0100
Message-Id: <20171114080056.26290-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] usbgadget command: provide -m option to set usb mode
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

if we optimize barebox for speed, then we can't use usbgadget autostart,
which would set otg.mode automatically.
Provide an option for usbgadget command to set otg.mode.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/usbgadget.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 507871edd2..e5109f99cb 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -34,15 +34,19 @@ static int do_usbgadget(int argc, char *argv[])
 {
 	int opt, ret;
 	int acm = 1, create_serial = 0, fastboot_set = 0, fastboot_export_bbu = 0;
+	int usb_mode_set = 0;
 	const char *fastboot_opts = NULL, *dfu_opts = NULL;
 	struct f_multi_opts *opts;
 
-	while ((opt = getopt(argc, argv, "asdA::D:b")) > 0) {
+	while ((opt = getopt(argc, argv, "amsdA::D:b")) > 0) {
 		switch (opt) {
 		case 'a':
 			acm = 1;
 			create_serial = 1;
 			break;
+		case 'm':
+			usb_mode_set = 1;
+			break;
 		case 's':
 			acm = 0;
 			create_serial = 1;
@@ -101,6 +105,9 @@ static int do_usbgadget(int argc, char *argv[])
 		opts->create_acm = acm;
 	}
 
+	if (usb_mode_set)
+		setenv("otg.mode", "peripheral");
+
 	ret = usb_multi_register(opts);
 	if (ret)
 		usb_multi_opts_release(opts);
@@ -120,6 +127,7 @@ BAREBOX_CMD_HELP_TEXT("Enable / disable a USB composite gadget on the USB device
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",   "Create CDC ACM function")
+BAREBOX_CMD_HELP_OPT ("-m",   "Automatically set USB OTG mode to peripheral")
 BAREBOX_CMD_HELP_OPT ("-s",   "Create Generic Serial function")
 BAREBOX_CMD_HELP_OPT ("-A [desc]",	"Create Android Fastboot function. If 'desc' is not provided,")
 BAREBOX_CMD_HELP_OPT ("",		"trying to use 'global.usbgadget.fastboot_function' variable.")
@@ -131,7 +139,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(usbgadget)
 	.cmd		= do_usbgadget,
 	BAREBOX_CMD_DESC("Create USB Gadget multifunction device")
-	BAREBOX_CMD_OPTS("[-asdAD]")
+	BAREBOX_CMD_OPTS("[-amsdAD]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usbgadget_help)
 BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
