Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9H4Y-0001o7-6G
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 14:27:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 18 Mar 2012 15:26:43 +0100
Message-Id: <1332080804-13132-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
References: <1332080804-13132-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/8] usb command: by default scan only once for USB devices
To: barebox@lists.infradead.org

We normally do not expect USB devices to be hotplugged. Instead of
rescanning each time the usb command is called, scan only once.
This makes the usb command safe for being called multiple times
without making already registered USB devices reinitialized. To
really scan multiple times a '-f' option is introduced.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usb.c |   26 ++++++++++++++++++++++----
 1 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index 6605e03..e28afd0 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -22,17 +22,35 @@
 #include <common.h>
 #include <command.h>
 #include <usb/usb.h>
+#include <getopt.h>
+
+static int scanned;
 
 static int do_usb(int argc, char *argv[])
 {
-	usb_rescan();
+	int opt;
+
+	while ((opt = getopt(argc, argv, "f")) > 0) {
+		switch (opt) {
+		case 'f':
+			scanned = 0;
+			break;
+		}
+	}
+
+	if (!scanned) {
+		usb_rescan();
+		scanned = 1;
+	}
 
 	return 0;
 }
 
-static const __maybe_unused char cmd_usb_help[] =
-"Usage: usb\n"
-"(re-)detect USB devices\n";
+BAREBOX_CMD_HELP_START(usb)
+BAREBOX_CMD_HELP_USAGE("usb [-f]\n")
+BAREBOX_CMD_HELP_SHORT("Scan for USB devices.\n")
+BAREBOX_CMD_HELP_OPT("-f", "force. Rescan if if if have scanned once\n")
+BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
