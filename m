Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001lk-NM
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:16 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:56 +0100
Message-Id: <20210121112958.25937-11-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 11/13] commands: firmwareload: allow loading firmware from dt
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

firmwareload can only load a bitstream into an FPGA without any
knowledge of possible additional needs (e.g. FPGA bridges).

These are defined in the fpga-region nodes in the devicetree. The
fpga-region describes the layout of the FPGA and the bridges it needs
en/disabled.

Add an option to let firmwareload go via the oftree route and load the
firmware that way.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/firmwareload.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/commands/firmwareload.c b/commands/firmwareload.c
index b735088f61..f2b7a74be0 100644
--- a/commands/firmwareload.c
+++ b/commands/firmwareload.c
@@ -5,18 +5,23 @@
 #include <command.h>
 #include <getopt.h>
 #include <firmware.h>
+#include <of.h>
 
 static int do_firmwareload(int argc, char *argv[])
 {
 	int ret, opt;
 	const char *name = NULL, *firmware;
 	struct firmware_mgr *mgr;
+	int oftree = 0;
 
-	while ((opt = getopt(argc, argv, "t:l")) > 0) {
+	while ((opt = getopt(argc, argv, "t:lo")) > 0) {
 		switch (opt) {
 		case 't':
 			name = optarg;
 			break;
+		case 'o':
+			oftree = 1;
+			break;
 		case 'l':
 			firmwaremgr_list_handlers();
 			return 0;
@@ -30,6 +35,11 @@ static int do_firmwareload(int argc, char *argv[])
 
 	firmware = argv[optind];
 
+	if (oftree) {
+		ret = of_firmware_load_file(firmware);
+		return ret;
+	}
+
 	mgr = firmwaremgr_find(name);
 
 	if (!mgr) {
@@ -46,6 +56,7 @@ static int do_firmwareload(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(firmwareload)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name")
+BAREBOX_CMD_HELP_OPT("-o\t", "find firmware definition from devicetree")
 BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading")
 BAREBOX_CMD_HELP_END
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
