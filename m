Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE5-0001ug-Sz
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:35 +0200
Message-Id: <1347480407-16865-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/15] oftree command: Add devicetree probe support
To: barebox@lists.infradead.org

With this the -p option is no longer for parse, but for probe instead.
Using this parses a devicetree given on the command line and probes
the devices found in this tree. Devices which already exist are not
probed again, but instead their device_node is attached to the existing
device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |   12 +++++++++++-
 commands/oftree.c |   28 +++++++++++++++-------------
 2 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index f2756cc..8a3edfa 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -468,7 +468,17 @@ config CMD_OFTREE
 	tristate
 	select OFTREE
 	prompt "oftree"
-	select FDT
+	help
+	  The oftree command has support for dumping devicetrees and, if
+	  enabled, to probe devices from the devicetree
+
+config CMD_OFTREE_PROBE
+	bool
+	depends on CMD_OFTREE
+	select OFDEVICE
+	prompt "oftree probe support"
+	help
+	  This enables the -p option to probe devices from the devicetree
 
 endmenu
 
diff --git a/commands/oftree.c b/commands/oftree.c
index 77afbc5..6479fa4 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -48,7 +48,8 @@ static int do_oftree(int argc, char *argv[])
 	char *file = NULL;
 	const char *node = "/";
 	int dump = 0;
-	int parse = 0;
+	int probe = 0;
+	int ret;
 
 	while ((opt = getopt(argc, argv, "dpfn:")) > 0) {
 		switch (opt) {
@@ -56,7 +57,12 @@ static int do_oftree(int argc, char *argv[])
 			dump = 1;
 			break;
 		case 'p':
-			parse = 1;
+			if (IS_ENABLED(CONFIG_CMD_OFTREE_PROBE)) {
+				probe = 1;
+			} else {
+				printf("oftree device probe support disabled\n");
+				return COMMAND_ERROR_USAGE;
+			}
 			break;
 		case 'f':
 			free(barebox_fdt);
@@ -71,7 +77,7 @@ static int do_oftree(int argc, char *argv[])
 	if (optind < argc)
 		file = argv[optind];
 
-	if (!dump && !parse)
+	if (!dump && !probe)
 		return COMMAND_ERROR_USAGE;
 
 	if (dump) {
@@ -95,7 +101,7 @@ static int do_oftree(int argc, char *argv[])
 		return 0;
 	}
 
-	if (parse) {
+	if (probe) {
 		if (!file)
 			return COMMAND_ERROR_USAGE;
 
@@ -105,17 +111,13 @@ static int do_oftree(int argc, char *argv[])
 			return 1;
 		}
 
-		fdt = xrealloc(fdt, size + 0x8000);
-		fdt_open_into(fdt, fdt, size + 0x8000);
-		if (!fdt) {
-			printf("unable to read %s\n", file);
+		ret = of_parse_dtb(fdt);
+		if (ret) {
+			printf("parse oftree: %s\n", strerror(-ret));
 			return 1;
 		}
 
-		if (barebox_fdt)
-			free(barebox_fdt);
-
-		barebox_fdt = fdt;
+		of_probe();
 	}
 
 	return 0;
@@ -123,7 +125,7 @@ static int do_oftree(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS]\n")
-BAREBOX_CMD_HELP_OPT  ("-p <FILE>",  "parse and store oftree from <file>\n")
+BAREBOX_CMD_HELP_OPT  ("-p <FILE>",  "probe devices in oftree from <file>\n")
 BAREBOX_CMD_HELP_OPT  ("-d [FILE]",  "dump oftree from [FILE] or the parsed tree if no file is given\n")
 BAREBOX_CMD_HELP_OPT  ("-f",  "free stored oftree\n")
 BAREBOX_CMD_HELP_END
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
