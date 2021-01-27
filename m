Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lSz-0076Jh-AQ
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:07:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7X-0006Rd-4T
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:31 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1l4l7W-0000RM-GA
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 14:44:30 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:21 +0100
Message-Id: <20210127134423.31587-10-s.trumtrar@pengutronix.de>
In-Reply-To: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 10/12] commands: firmwareload: allow loading firmware from
 dt
To: barebox@lists.infradead.org

firmwareload can only load a bitstream into an FPGA without any
knowledge of possible additional needs (e.g. FPGA bridges).

These are defined in the fpga-region nodes in the devicetree. The
fpga-region describes the layout of the FPGA and the bridges it needs
en/disabled.

Add an option to let firmwareload go via the oftree route and load the
firmware that way.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/firmwareload.c | 42 +++++++++++++++++++++++++++++++++++------
 1 file changed, 36 insertions(+), 6 deletions(-)

diff --git a/commands/firmwareload.c b/commands/firmwareload.c
index b735088f6117..2b1e770662d1 100644
--- a/commands/firmwareload.c
+++ b/commands/firmwareload.c
@@ -5,18 +5,38 @@
 #include <command.h>
 #include <getopt.h>
 #include <firmware.h>
+#include <of.h>
 
 static int do_firmwareload(int argc, char *argv[])
 {
-	int ret, opt;
+	int opt;
 	const char *name = NULL, *firmware;
 	struct firmware_mgr *mgr;
+	char *path = NULL;
+	char *search_path = NULL;
+	char *compatible = NULL;
+	int oftree = 0;
 
-	while ((opt = getopt(argc, argv, "t:l")) > 0) {
+	while ((opt = getopt(argc, argv, "t:c:S:D:lo")) > 0) {
 		switch (opt) {
 		case 't':
 			name = optarg;
 			break;
+		case 'c':
+			compatible = xzalloc(strlen(optarg) + 1);
+			strcpy(compatible, optarg);
+			oftree = 1;
+			break;
+		case 'S':
+			search_path = xzalloc(strlen(optarg) + 1);
+			strcpy(search_path, optarg);
+			oftree = 1;
+			break;
+		case 'D':
+			path = xzalloc(strlen(optarg) + 1);
+			strcpy(path, optarg);
+			oftree = 1;
+			break;
 		case 'l':
 			firmwaremgr_list_handlers();
 			return 0;
@@ -25,11 +45,20 @@ static int do_firmwareload(int argc, char *argv[])
 		}
 	}
 
-	if (!(argc - optind))
+	if (!oftree && !(argc - optind))
 		return COMMAND_ERROR_USAGE;
 
 	firmware = argv[optind];
 
+	if (oftree) {
+		if (!search_path && !firmware) {
+			printf("Provide at least a file to load or a search path (-S)\n");
+			return 1;
+		}
+
+		return of_firmware_load_file(path, compatible, search_path, firmware);
+	}
+
 	mgr = firmwaremgr_find(name);
 
 	if (!mgr) {
@@ -38,14 +67,15 @@ static int do_firmwareload(int argc, char *argv[])
 		return 1;
 	}
 
-	ret = firmwaremgr_load_file(mgr, firmware);
-
-	return ret;
+	return firmwaremgr_load_file(mgr, firmware);
 }
 
 BAREBOX_CMD_HELP_START(firmwareload)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name")
+BAREBOX_CMD_HELP_OPT("-c <compatible>", "type of firmware device (e.g. 'fpga-region')")
+BAREBOX_CMD_HELP_OPT("-D <path>", "load firmware to oftree path")
+BAREBOX_CMD_HELP_OPT("-S <path>", "load firmware using this search path")
 BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading")
 BAREBOX_CMD_HELP_END
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
