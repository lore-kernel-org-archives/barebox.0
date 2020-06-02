Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1oF-0001n0-Pe
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 07:58:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 09:57:57 +0200
Message-Id: <20200602075757.4734-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200602075757.4734-1-a.fatoum@pengutronix.de>
References: <20200602075757.4734-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] commands: reset: allow specifying reset by name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far, we were fine by using the highest priority restart handler
whenever more than one was available. There are reasons to want to
configure this however:

 - When communicating with BootROM, e.g. to force boot from recovery
   mode: The reset chosen must not cause the reboot mode stored to
   volatile memory to vanish
 - When testing (undocumented) reset behavior, e.g. to analyze how
   the EFI reset behaves

Extend the reset command to support this. When no extra command line
option is supplied, the old behavior is maintained.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/reset.c  | 27 ++++++++++++++++++++++++---
 common/restart.c  | 28 ++++++++++++++++++++++++++--
 include/restart.h |  2 ++
 3 files changed, 52 insertions(+), 5 deletions(-)

diff --git a/commands/reset.c b/commands/reset.c
index 2b10f1cd183a..fe54e2f9b472 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -11,24 +11,43 @@
 
 static int cmd_reset(int argc, char *argv[])
 {
+	struct restart_handler *rst;
 	int opt, shutdown_flag;
+	const char *name = NULL;
 
 	shutdown_flag = 1;
 
-	while ((opt = getopt(argc, argv, "f")) > 0) {
+	while ((opt = getopt(argc, argv, "flr:")) > 0) {
 		switch (opt) {
 		case 'f':
 			shutdown_flag = 0;
 			break;
+		case 'l':
+			restart_handlers_print();
+			return 0;
+		case 'r':
+			name = optarg;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
+	rst = restart_handler_get_by_name(name);
+	if (!rst && name) {
+		printf("reset '%s' does not exist\n", name);
+		return COMMAND_ERROR;
+	}
+
 	if (shutdown_flag)
 		shutdown_barebox();
 
-	restart_machine();
+	if (rst) {
+		console_flush();
+		rst->restart(rst);
+	}
+
+	hang();
 
 	/* Not reached */
 	return 1;
@@ -37,12 +56,14 @@ static int cmd_reset(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(reset)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f",  "force RESET, don't call shutdown")
+BAREBOX_CMD_HELP_OPT("-l",  "list reset handlers")
+BAREBOX_CMD_HELP_OPT("-r RESET",  "use reset handler named RESET")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(reset)
 	.cmd		= cmd_reset,
 	BAREBOX_CMD_DESC("perform RESET of the CPU")
-	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_OPTS("[-flr]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_reset_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/common/restart.c b/common/restart.c
index 66131c262938..dcd0b2959bf4 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -75,20 +75,33 @@ int restart_handler_register_fn(const char *name,
 }
 
 /**
- * restart_machine() - reset the whole system
+ * restart_handler_get_by_name() - reset the whole system
  */
-void __noreturn restart_machine(void)
+struct restart_handler *restart_handler_get_by_name(const char *name)
 {
 	struct restart_handler *rst = NULL, *tmp;
 	unsigned int priority = 0;
 
 	list_for_each_entry(tmp, &restart_handler_list, list) {
+		if (name && tmp->name && strcmp(name, tmp->name))
+			continue;
 		if (tmp->priority > priority) {
 			priority = tmp->priority;
 			rst = tmp;
 		}
 	}
 
+	return rst;
+}
+
+/**
+ * restart_machine() - reset the whole system
+ */
+void __noreturn restart_machine(void)
+{
+	struct restart_handler *rst;
+
+	rst = restart_handler_get_by_name(NULL);
 	if (rst) {
 		pr_debug("%s: using restart handler %s\n", __func__, rst->name);
 		console_flush();
@@ -112,3 +125,14 @@ unsigned int of_get_restart_priority(struct device_node *node)
 
 	return priority;
 }
+
+/*
+ * restart_handlers_print - print informations about all restart handlers
+ */
+void restart_handlers_print(void)
+{
+	struct restart_handler *tmp;
+
+	list_for_each_entry(tmp, &restart_handler_list, list)
+		printf("%-20s %6d\n", tmp->name, tmp->priority);
+}
diff --git a/include/restart.h b/include/restart.h
index e7dd1bd2b79c..2d15c7598acc 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -2,7 +2,9 @@
 #ifndef __INCLUDE_RESTART_H
 #define __INCLUDE_RESTART_H
 
+void restart_handlers_print(void);
 void __noreturn restart_machine(void);
+struct restart_handler *restart_handler_get_by_name(const char *name);
 
 struct restart_handler {
 	void (*restart)(struct restart_handler *);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
