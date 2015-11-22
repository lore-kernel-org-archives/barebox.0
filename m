Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0aJt-0004YU-Qg
 for barebox@lists.infradead.org; Sun, 22 Nov 2015 19:29:06 +0000
Received: by wmuu63 with SMTP id u63so31109077wmu.0
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 11:28:43 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 22 Nov 2015 20:28:00 +0100
Message-Id: <1448220480-4488-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC] regulator: add runtime disable/enable support
To: barebox@lists.infradead.org

This patch adds support to call disable/enable for a specific regulator
by name. This can be useful to test various linux boot tests in
different regulator states or adding workarounds inside the bootloader
when linux doesn't support to enable the regulator for probing.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/regulator.c     | 73 ++++++++++++++++++++++++++++++++++++++++++++++--
 drivers/regulator/core.c | 30 ++++++++++++++++++++
 include/regulator.h      | 12 ++++++++
 3 files changed, 112 insertions(+), 3 deletions(-)

diff --git a/commands/regulator.c b/commands/regulator.c
index e0b704f..1fb1559 100644
--- a/commands/regulator.c
+++ b/commands/regulator.c
@@ -18,17 +18,84 @@
  */
 #include <common.h>
 #include <command.h>
+#include <getopt.h>
 #include <regulator.h>
 
+static inline void regulator_setting_parse_error(int ret, const char *cmd)
+{
+	perror(cmd);
+	if (ret == -ENOENT)
+		printf("check \"%s -l\" for possible regulator names.\n", cmd);
+}
+
 static int do_regulator(int argc, char *argv[])
 {
-	regulators_print();
+	char *name = NULL, *setting = NULL;
+	int opt, ret, print = 0;
+
+	if (argc == 1)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "ln:s:")) > 0) {
+		switch (opt) {
+		case 'l':
+			print = 1;
+			break;
+		case 'n':
+			name = optarg;
+			break;
+		case 's':
+			setting = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
 
-	return 0;
+	/* do nothing, if name or nothing was given only */
+	if ((name && !setting) || (!name && !setting))
+		goto out;
+
+	if (!name && setting) {
+		printf("no regulator name for setting given.\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (!strcmp(setting, "enable")) {
+		ret = regulator_enable_by_name(name);
+		if (ret < 0) {
+			perror(argv[0]);
+			regulator_setting_parse_error(ret, argv[0]);
+			return COMMAND_ERROR;
+		}
+	} else if (!strcmp(setting, "disable")) {
+		ret = regulator_disable_by_name(name);
+		if (ret < 0) {
+			regulator_setting_parse_error(ret, argv[0]);
+			return COMMAND_ERROR;
+		}
+	} else {
+		printf("failed to parse setting argument.\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+out:
+	if (print)
+		regulators_print();
+
+	return COMMAND_SUCCESS;
 }
 
+BAREBOX_CMD_HELP_START(regulator)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l", "list regulators, after settings if given.")
+BAREBOX_CMD_HELP_OPT("-n REGULATOR_NAME", "REGULATOR_NAME which can be lookup by -l option.")
+BAREBOX_CMD_HELP_OPT("-s enable/disable", "force enable or disable regulator, requires -n argument.")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
-	BAREBOX_CMD_DESC("list regulators")
+	BAREBOX_CMD_DESC("regulator settings")
+	BAREBOX_CMD_OPTS("[-lns]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 BAREBOX_CMD_END
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 73f5c6e..de764f3 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -345,3 +345,33 @@ void regulators_print(void)
 	list_for_each_entry(ri, &regulator_list, list)
 		regulator_print_one(ri);
 }
+
+/*
+ * regulator_enable_by_name - enable regulator by internal regulator name
+ */
+int regulator_enable_by_name(const char *name)
+{
+	struct regulator_internal *ri;
+
+	list_for_each_entry(ri, &regulator_list, list) {
+		if (!strcmp(ri->name, name))
+			return regulator_enable_internal(ri);
+	}
+
+	return -ENOENT;
+}
+
+/*
+ * regulator_disable_by_name - disable regulator by internal regulator name
+ */
+int regulator_disable_by_name(const char *name)
+{
+	struct regulator_internal *ri;
+
+	list_for_each_entry(ri, &regulator_list, list) {
+		if (!strcmp(ri->name, name))
+			return regulator_disable_internal(ri);
+	}
+
+	return -ENOENT;
+}
diff --git a/include/regulator.h b/include/regulator.h
index 367e13f..cb899f8 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -35,6 +35,8 @@ void regulators_print(void);
 struct regulator *regulator_get(struct device_d *, const char *);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
+int regulator_enable_by_name(const char *name);
+int regulator_disable_by_name(const char *name);
 
 #else
 
@@ -53,6 +55,16 @@ static inline int regulator_disable(struct regulator *r)
 	return 0;
 }
 
+static inline int regulator_enable_by_name(const char *name)
+{
+	return 0;
+}
+
+static inline int regulator_disable_by_name(const char *name)
+{
+	return 0;
+}
+
 #endif
 
 #endif /* __REGULATOR_H */
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
