Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iL-IR
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:09 +0100
Message-Id: <1362826391-16215-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] command: remove statically initialized aliases
To: barebox@lists.infradead.org

the aliases pointer occupies four bytes from struct command_entry, but
it is only used a few times. Create command aliases during runtime to
save a few bytes from the binary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/edit.c   |  8 ++++++--
 commands/help.c   |  8 ++++++--
 commands/test.c   |  8 ++++++--
 common/command.c  | 34 ++++++++++++++++++----------------
 common/hush.c     |  7 +++++--
 include/command.h |  2 +-
 6 files changed, 42 insertions(+), 25 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 295d0a7..9083ac8 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -24,6 +24,7 @@
 #include <command.h>
 #include <malloc.h>
 #include <fs.h>
+#include <init.h>
 #include <linux/ctype.h>
 #include <fcntl.h>
 #include <readkey.h>
@@ -544,7 +545,11 @@ out:
 	return 0;
 }
 
-static const char *edit_aliases[] = { "sedit", NULL};
+static int edit_add_alias(void)	\
+{					\
+	return command_add_alias("edit", "sedit");
+}
+device_initcall(edit_add_alias);
 
 BAREBOX_CMD_HELP_START(edit)
 BAREBOX_CMD_HELP_USAGE("(s)edit <file>\n")
@@ -563,7 +568,6 @@ If called as sedit, the editor uses ansi codes to scroll the screen.
 
 BAREBOX_CMD_START(edit)
 	.cmd		= do_edit,
-	.aliases	= edit_aliases,
 	.usage		= "Usage: (s)edit <file>",
 	BAREBOX_CMD_HELP(cmd_edit_help)
 BAREBOX_CMD_END
diff --git a/commands/help.c b/commands/help.c
index e3cd1f6..3c25b26 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -18,6 +18,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <command.h>
 #include <complete.h>
 
@@ -63,11 +64,14 @@ static const __maybe_unused char cmd_help_help[] =
 "To get detailed help information for specific commands you can type\n"
 "'help' with one or more command names as arguments.\n";
 
-static const char *help_aliases[] = { "?", NULL};
+static int help_add_alias(void)	\
+{					\
+	return command_add_alias("help", "?");
+}
+device_initcall(help_add_alias);
 
 BAREBOX_CMD_START(help)
 	.cmd		= do_help,
-	.aliases	= help_aliases,
 	.usage		= "print online help",
 	BAREBOX_CMD_HELP(cmd_help_help)
 	BAREBOX_CMD_COMPLETE(command_complete)
diff --git a/commands/test.c b/commands/test.c
index b3cd164..c0a391b 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -23,6 +23,7 @@
 #include <command.h>
 #include <fs.h>
 #include <linux/stat.h>
+#include <init.h>
 
 typedef enum {
 	OPT_EQUAL,
@@ -224,7 +225,11 @@ out:
 	return expr;
 }
 
-static const char *test_aliases[] = { "[", NULL};
+static int test_add_alias(void)	\
+{					\
+	return command_add_alias("test", "[");
+}
+device_initcall(test_add_alias);
 
 static const __maybe_unused char cmd_test_help[] =
 "Usage: test [OPTIONS]\n"
@@ -234,7 +239,6 @@ static const __maybe_unused char cmd_test_help[] =
 static const __maybe_unused char cmd_test_usage[] = "minimal test like /bin/sh";
 
 BAREBOX_CMD_START(test)
-	.aliases	= test_aliases,
 	.cmd		= do_test,
 	.usage		= cmd_test_usage,
 	BAREBOX_CMD_HELP(cmd_test_help)
diff --git a/common/command.c b/common/command.c
index 59087ef..31fb27f 100644
--- a/common/command.c
+++ b/common/command.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <complete.h>
 #include <getopt.h>
+#include <errno.h>
 
 LIST_HEAD(command_list);
 EXPORT_SYMBOL(command_list);
@@ -109,26 +110,28 @@ int register_command(struct command_entry *entry)
 
 	list_add_sort(&cmd->list, &command_list, compare);
 
-	if (cmd->entry.aliases) {
-		char **aliases = (char**)cmd->entry.aliases;
-		while(*aliases) {
-			char *usage = "alias for ";
-			struct command_entry *c = xzalloc(sizeof(*c));
+	return 0;
+}
+EXPORT_SYMBOL(register_command);
 
-			memcpy(c, entry, sizeof(*entry));
-			c->name = *aliases;
-			c->aliases = NULL;
-			c->usage = asprintf("%s%s", usage, cmd->entry.name);
+int command_add_alias(const char *command, const char *alias)
+{
+	struct command_entry *c;
+	struct command *cmd = find_cmd(command);
 
-			register_command(c);
+	if (!cmd)
+		return -ENODEV;
 
-			aliases++;
-		}
-	}
+	c = xzalloc(sizeof(*c));
+
+	memcpy(c, &cmd->entry, sizeof(*c));
+	c->name = strdup(alias);
+	c->usage = asprintf("alias for %s", cmd->entry.name);
+
+	register_command(c);
 
 	return 0;
 }
-EXPORT_SYMBOL(register_command);
 
 /*
  * find command table entry for a command
@@ -163,5 +166,4 @@ static int init_command_list(void)
 	return 0;
 }
 
-late_initcall(init_command_list);
-
+pure_initcall(init_command_list);
diff --git a/common/hush.c b/common/hush.c
index b5e111a..d14e0e3 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1901,7 +1901,11 @@ static int do_source(int argc, char *argv[])
 	return ret;
 }
 
-static const char *source_aliases[] = { ".", NULL};
+static int source_add_alias(void)	\
+{					\
+	return command_add_alias("source", ".");
+}
+device_initcall(source_add_alias);
 
 static const __maybe_unused char cmd_source_help[] =
 "Usage: .  filename [arguments]\n"
@@ -1915,7 +1919,6 @@ static const __maybe_unused char cmd_source_usage[] =
 "execute shell script in current shell environment";
 
 BAREBOX_CMD_START(source)
-	.aliases	= source_aliases,
 	.cmd		= do_source,
 	.usage		= cmd_source_usage,
 	BAREBOX_CMD_HELP(cmd_source_help)
diff --git a/include/command.h b/include/command.h
index b774ae6..3225c86 100644
--- a/include/command.h
+++ b/include/command.h
@@ -43,7 +43,6 @@ struct string_list;
  */
 struct command_entry {
 	const char	*name;		/* Command Name			*/
-	const char	**aliases;
 					/* Implementation function	*/
 	int		(*cmd)(int, char *[]);
 	int		(*complete)(struct string_list *sl, char *instr);
@@ -75,6 +74,7 @@ extern struct command_entry __barebox_cmd_end;
 struct command *find_cmd(const char *cmd);
 int execute_command(int argc, char **argv);
 void barebox_cmd_usage(struct command *cmdtp);
+int command_add_alias(const char *command, const char *alias);
 
 #define COMMAND_SUCCESS		0
 #define COMMAND_ERROR		1
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
