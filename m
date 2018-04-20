Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9Tn7-0002V0-Il
 for barebox@lists.infradead.org; Fri, 20 Apr 2018 11:01:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3CD85A0030A
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 13:01:23 +0200 (CEST)
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Fri, 20 Apr 2018 13:01:01 +0200
Message-Id: <1524222061-8825-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] commands: of_display_timings: Add simple-panel support
To: barebox@lists.infradead.org

Display timings can now be set with simple-panel method which selects
the required timings by the compatible of the simple panel devicetree
node.

This patch adds an option to set simple panel timings with the
of_display_timings command by setting the compatible of the display node.
The options -P and -c were implemented. The -P option requires the display
node path as argument and the -c option requires the compatible to set.

This has one downside. The available simple panel timings cannot be
listed since the timings are defined in the kernel. Account for this in the
help text.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 commands/of_display_timings.c | 65 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 61 insertions(+), 4 deletions(-)

diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index ccf2db0..ca8275f 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -28,6 +28,39 @@
 #include <linux/err.h>
 #include <string.h>
 
+struct panel_info {
+	char *displaypath;
+	char *compatible;
+};
+
+static int of_panel_timing(struct device_node *root, void *context)
+{
+	int ret = 0;
+	struct panel_info *panel = (struct panel_info*)context;
+	struct device_node *display;
+
+	display = of_find_node_by_path_from(root, panel->displaypath);
+	if (!display) {
+		pr_err("Path to display node is not vaild.\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = of_set_property(display, "compatible",
+			      panel->compatible,
+			      strlen(panel->compatible) + 1, 1);
+
+	if (ret < 0) {
+		pr_err("Could not update compatible property\n");
+		goto out;
+	}
+
+	ret = of_device_enable(display);
+
+out:
+	return ret;
+}
+
 static int of_display_timing(struct device_node *root, void *timingpath)
 {
 	int ret = 0;
@@ -55,10 +88,12 @@ static int do_of_display_timings(int argc, char *argv[])
 	struct device_node *root = NULL;
 	struct device_node *display = NULL;
 	struct device_node *timings = NULL;
+	struct panel_info *panel = NULL;
 	char *timingpath = NULL;
 	char *dtbfile = NULL;
+	char *compatible = NULL;
 
-	while ((opt = getopt(argc, argv, "sS:lf:")) > 0) {
+	while ((opt = getopt(argc, argv, "sS:lf:c:P:")) > 0) {
 		switch (opt) {
 		case 'l':
 			list = 1;
@@ -69,10 +104,18 @@ static int do_of_display_timings(int argc, char *argv[])
 		case 's':
 			selected = 1;
 			break;
+		case 'c':
+			compatible = optarg;
+			break;
 		case 'S':
 			timingpath = xzalloc(strlen(optarg) + 1);
 			strcpy(timingpath, optarg);
 			break;
+		case 'P':
+			panel = xzalloc(sizeof(struct panel_info));
+			panel->displaypath = xzalloc(strlen(optarg) + 1);
+			strcpy(panel->displaypath, optarg);
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -140,6 +183,18 @@ static int do_of_display_timings(int argc, char *argv[])
 			printf("No selected display-timings found.\n");
 	}
 
+	if (panel) {
+		if (!compatible) {
+			pr_err("No compatible argument. -P option requires compatible with -c option\n");
+			return -EINVAL;
+		} else {
+			panel->compatible = xzalloc(strlen(compatible) + 1);
+			strcpy(panel->compatible, compatible);
+		}
+
+		of_register_fixup(of_panel_timing, panel);
+	}
+
 	if (timingpath)
 		of_register_fixup(of_display_timing, timingpath);
 
@@ -148,16 +203,18 @@ static int do_of_display_timings(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(of_display_timings)
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-l",  "list path of all available display-timings\n")
-BAREBOX_CMD_HELP_OPT("-s",  "list path of all selected display-timings\n")
+BAREBOX_CMD_HELP_OPT("-l",  "list path of all available display-timings\n\t\tNOTE: simple-panel timings cannot be listed\n")
+BAREBOX_CMD_HELP_OPT("-s",  "list path of all selected display-timings\n\t\tNOTE: simple-panel timings cannot be listed\n")
+BAREBOX_CMD_HELP_OPT("-c",  "display compatible to enable with -P option. Has no effect on -S option\n")
 BAREBOX_CMD_HELP_OPT("-S path",  "select display-timings and register oftree fixup\n")
+BAREBOX_CMD_HELP_OPT("-P path",  "select simple-panel node and register oftree fixup with -c compatible\n")
 BAREBOX_CMD_HELP_OPT("-f dtb",  "work on dtb. Has no effect on -s option\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(of_display_timings)
 	.cmd	= do_of_display_timings,
 	BAREBOX_CMD_DESC("print and select display-timings")
-	BAREBOX_CMD_OPTS("[-ls] [-S path] [-f dtb]")
+	BAREBOX_CMD_OPTS("[-ls] [-S path] [-P path -c compatible] [-f dtb]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(devicetree_file_complete)
 	BAREBOX_CMD_HELP(cmd_of_display_timings_help)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
