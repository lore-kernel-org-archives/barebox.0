Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFU6-0002EA-Eh
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:12:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:47 +0100
Message-Id: <20191106071155.26389-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-1-a.fatoum@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/10] commands: regulator: add support for enabling/disabling
 regulators
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

For testing regulator drivers, it can be handy to enable/disable them
from the shell prompt. Extend the regulator command to support this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 67 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 591e44c15407..4ebad3f906ad 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -388,22 +388,75 @@ static void regulator_print_one(struct regulator_internal *ri)
 #include <common.h>
 #include <command.h>
 #include <regulator.h>
+#include <getopt.h>
 
 static int do_regulator(int argc, char *argv[])
 {
-	struct regulator_internal *ri;
+	struct regulator_internal *ri, *chosen = NULL;
+	int opt;
 
-	printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
-	list_for_each_entry(ri, &regulator_list, list)
-		regulator_print_one(ri);
+	if (argc == 1) {
+		printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
+		list_for_each_entry(ri, &regulator_list, list)
+			regulator_print_one(ri);
 
-	return 0;
+		return 0;
+	}
+
+	while ((opt = getopt(argc, argv, "r:")) > 0) {
+		switch (opt) {
+		case 'r':
+			if (chosen)
+				return COMMAND_ERROR_USAGE;
+
+			list_for_each_entry(ri, &regulator_list, list) {
+				if (!strcmp(ri->name, optarg)) {
+					chosen = ri;
+					break;
+				}
+			}
+
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+
+	if (!chosen) {
+		printf("regulator not found.\n");
+		return COMMAND_ERROR;
+	}
+
+	if (argc != optind + 1) {
+		printf("Operation must be specified\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (!strcmp(argv[optind], "enable"))
+		return regulator_enable_internal(chosen);
+
+	if (!strcmp(argv[optind], "disable"))
+		return regulator_disable_internal(chosen);
+
+	printf("Unknown operation '%s'\n", argv[optind]);
+
+	return COMMAND_ERROR_USAGE;
 }
 
+BAREBOX_CMD_HELP_START(regulator)
+BAREBOX_CMD_HELP_TEXT("List and control regulators.")
+BAREBOX_CMD_HELP_TEXT("Without a parameter, displays available regulators.")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r REGULATOR\t", "regulator name")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
-	BAREBOX_CMD_DESC("list regulators")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_DESC("list and control regulators")
+	BAREBOX_CMD_OPTS("[-r REGULATOR] [enable | disable]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_regulator_help)
 BAREBOX_CMD_END
 
 #endif
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
