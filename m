Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXMe-0002AE-UU
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:33:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:33:16 +0100
Message-Id: <20180111073316.2836-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usbgadget: Update command help text
To: Barebox List <barebox@lists.infradead.org>

- Do not use BAREBOX_CMD_HELP_OPT with an empty option to extend the
  previous option text. It confuses the rst converter
- Add a '\t' to the options to align the option help texts in the
  barebox command help

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usbgadget.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/commands/usbgadget.c b/commands/usbgadget.c
index 507871edd2..a1744cbe13 100644
--- a/commands/usbgadget.c
+++ b/commands/usbgadget.c
@@ -119,13 +119,13 @@ BAREBOX_CMD_HELP_START(usbgadget)
 BAREBOX_CMD_HELP_TEXT("Enable / disable a USB composite gadget on the USB device interface.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-a",   "Create CDC ACM function")
-BAREBOX_CMD_HELP_OPT ("-s",   "Create Generic Serial function")
-BAREBOX_CMD_HELP_OPT ("-A [desc]",	"Create Android Fastboot function. If 'desc' is not provided,")
-BAREBOX_CMD_HELP_OPT ("",		"trying to use 'global.usbgadget.fastboot_function' variable.")
-BAREBOX_CMD_HELP_OPT ("-b",    "include registered barebox update handlers (fastboot specific)")
-BAREBOX_CMD_HELP_OPT ("-D <desc>",   "Create DFU function")
-BAREBOX_CMD_HELP_OPT ("-d",   "Disable the currently running gadget")
+BAREBOX_CMD_HELP_OPT ("-a\t", "Create CDC ACM function")
+BAREBOX_CMD_HELP_OPT ("-s\t", "Create Generic Serial function")
+BAREBOX_CMD_HELP_OPT ("-A <desc>", "Create Android Fastboot function. If 'desc' is not provided, "
+				   "try to use 'global.usbgadget.fastboot_function' variable.")
+BAREBOX_CMD_HELP_OPT ("-b\t", "include registered barebox update handlers (fastboot specific)")
+BAREBOX_CMD_HELP_OPT ("-D <desc>", "Create DFU function")
+BAREBOX_CMD_HELP_OPT ("-d\t", "Disable the currently running gadget")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usbgadget)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
