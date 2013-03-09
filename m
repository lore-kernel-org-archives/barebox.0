Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iJ-EJ
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:08 +0100
Message-Id: <1362826391-16215-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] command: remove list_head from struct command
To: barebox@lists.infradead.org

struct command is statically initialized many times in barebox. The list_head
included in struct command is only needed during runtime, so embed a struct
command_entry into struct command. The static information is included in
struct command_entry whereas the list_head is in struct command. This saves
number of commands * sizeof(struct list_head) bytes from the binary image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/help.c   |  8 ++++----
 common/command.c  | 41 +++++++++++++++++++++--------------------
 common/complete.c | 12 ++++++------
 common/module.c   |  2 +-
 include/command.h | 23 +++++++++++++++--------
 5 files changed, 47 insertions(+), 39 deletions(-)

diff --git a/commands/help.c b/commands/help.c
index a12d9c3..e3cd1f6 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -32,13 +32,13 @@ static int do_help(int argc, char *argv[])
 
 	if (argc == 1) {	/* show list of commands */
 		for_each_command(cmdtp)
-			if(strlen(cmdtp->name) > max_length)
-				max_length = strlen(cmdtp->name);
+			if (strlen(cmdtp->entry.name) > max_length)
+				max_length = strlen(cmdtp->entry.name);
 
 		for_each_command(cmdtp) {
-			if (!cmdtp->usage)
+			if (!cmdtp->entry.usage)
 				continue;
-			printf("%*s - %s\n", max_length, cmdtp->name, cmdtp->usage);
+			printf("%*s - %s\n", max_length, cmdtp->entry.name, cmdtp->entry.usage);
 		}
 		return 0;
 	}
diff --git a/common/command.c b/common/command.c
index 7f2b777..59087ef 100644
--- a/common/command.c
+++ b/common/command.c
@@ -38,17 +38,17 @@ void barebox_cmd_usage(struct command *cmdtp)
 {
 #ifdef	CONFIG_LONGHELP
 		/* found - print (long) help info */
-		if (cmdtp->help) {
-			puts (cmdtp->help);
+		if (cmdtp->entry.help) {
+			puts (cmdtp->entry.help);
 		} else {
-			puts (cmdtp->name);
+			puts (cmdtp->entry.name);
 			putchar (' ');
 			puts ("- No help available.\n");
 		}
 		putchar ('\n');
 #else	/* no long help available */
-		if (cmdtp->usage) {
-			puts (cmdtp->usage);
+		if (cmdtp->entry.usage) {
+			puts (cmdtp->entry.usage);
 			puts("\n");
 		}
 #endif	/* CONFIG_LONGHELP */
@@ -57,8 +57,8 @@ EXPORT_SYMBOL(barebox_cmd_usage);
 
 static int compare(struct list_head *a, struct list_head *b)
 {
-	char *na = (char*)list_entry(a, struct command, list)->name;
-	char *nb = (char*)list_entry(b, struct command, list)->name;
+	char *na = (char*)list_entry(a, struct command, list)->entry.name;
+	char *nb = (char*)list_entry(b, struct command, list)->entry.name;
 
 	return strcmp(na, nb);
 }
@@ -74,7 +74,7 @@ int execute_command(int argc, char **argv)
 	/* Look up command in command table */
 	if ((cmdtp = find_cmd(argv[0]))) {
 		/* OK - call function to do the command */
-		ret = cmdtp->cmd(argc, argv);
+		ret = cmdtp->entry.cmd(argc, argv);
 		if (ret == COMMAND_ERROR_USAGE) {
 			barebox_cmd_usage(cmdtp);
 			ret = COMMAND_ERROR;
@@ -93,31 +93,32 @@ int execute_command(int argc, char **argv)
 	return ret;
 }
 
-int register_command(struct command *cmd)
+int register_command(struct command_entry *entry)
 {
+	struct command *cmd = xzalloc(sizeof(*cmd));
+
+	memcpy(&cmd->entry, entry, sizeof(*entry));
+
 	/*
 	 * We do not check if the command already exists.
 	 * This allows us to overwrite a builtin command
 	 * with a module.
 	 */
 
-	debug("register command %s\n", cmd->name);
+	debug("register command %s\n", cmd->entry.name);
 
 	list_add_sort(&cmd->list, &command_list, compare);
 
-	if (cmd->aliases) {
-		char **aliases = (char**)cmd->aliases;
+	if (cmd->entry.aliases) {
+		char **aliases = (char**)cmd->entry.aliases;
 		while(*aliases) {
 			char *usage = "alias for ";
-			struct command *c = xzalloc(sizeof(struct command));
-
-			memcpy(c, cmd, sizeof(struct command));
+			struct command_entry *c = xzalloc(sizeof(*c));
 
+			memcpy(c, entry, sizeof(*entry));
 			c->name = *aliases;
-			c->usage = xmalloc(strlen(usage) + strlen(cmd->name) + 1);
-			sprintf((char*)c->usage, "%s%s", usage, cmd->name);
-
 			c->aliases = NULL;
+			c->usage = asprintf("%s%s", usage, cmd->entry.name);
 
 			register_command(c);
 
@@ -137,7 +138,7 @@ struct command *find_cmd (const char *cmd)
 	struct command *cmdtp;
 
 	for_each_command(cmdtp)
-		if (!strcmp(cmd, cmdtp->name))
+		if (!strcmp(cmd, cmdtp->entry.name))
 			return cmdtp;
 
 	return NULL;	/* not found or ambiguous command */
@@ -152,7 +153,7 @@ EXPORT_SYMBOL(find_cmd);
  */
 static int init_command_list(void)
 {
-	struct command *cmdtp;
+	struct command_entry *cmdtp;
 
 	for (cmdtp = &__barebox_cmd_start;
 			cmdtp != &__barebox_cmd_end;
diff --git a/common/complete.c b/common/complete.c
index 9206ef0..7b6d845 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -138,10 +138,10 @@ int command_complete(struct string_list *sl, char *instr)
 		instr = "";
 
 	for_each_command(cmdtp) {
-		if (strncmp(instr, cmdtp->name, strlen(instr)))
+		if (strncmp(instr, cmdtp->entry.name, strlen(instr)))
 			continue;
 
-		string_list_add_asprintf(sl, "%s ", cmdtp->name);
+		string_list_add_asprintf(sl, "%s ", cmdtp->entry.name);
 	}
 
 	return 0;
@@ -279,11 +279,11 @@ static char* cmd_complete_lookup(struct string_list *sl, char *instr)
 	char *res = NULL;
 
 	for_each_command(cmdtp) {
-		len = strlen(cmdtp->name);
-		if (!strncmp(instr, cmdtp->name, len) && instr[len] == ' ') {
+		len = strlen(cmdtp->entry.name);
+		if (!strncmp(instr, cmdtp->entry.name, len) && instr[len] == ' ') {
 			instr += len + 1;
-			if (cmdtp->complete) {
-				ret = cmdtp->complete(sl, instr);
+			if (cmdtp->entry.complete) {
+				ret = cmdtp->entry.complete(sl, instr);
 				res = instr;
 			}
 			goto end;
diff --git a/common/module.c b/common/module.c
index 109fe5c..639ee61 100644
--- a/common/module.c
+++ b/common/module.c
@@ -293,7 +293,7 @@ struct module * load_module(void *mod_image, unsigned long len)
 
 	cmdindex = find_sec(ehdr, sechdrs, secstrings, ".barebox_cmd");
 	if (cmdindex) {
-		struct command *cmd =(struct command *)sechdrs[cmdindex].sh_addr;
+		struct command_entry *cmd =(struct command_entry *)sechdrs[cmdindex].sh_addr;
 		for (i = 0; i < sechdrs[cmdindex].sh_size / sizeof(struct command); i++) {
 			register_command(cmd);
 			cmd++;
diff --git a/include/command.h b/include/command.h
index ffc722c..b774ae6 100644
--- a/include/command.h
+++ b/include/command.h
@@ -41,7 +41,7 @@ struct string_list;
 /*
  * Monitor Command Table
  */
-struct command {
+struct command_entry {
 	const char	*name;		/* Command Name			*/
 	const char	**aliases;
 					/* Implementation function	*/
@@ -49,9 +49,8 @@ struct command {
 	int		(*complete)(struct string_list *sl, char *instr);
 	const char	*usage;		/* Usage message	(short)	*/
 
-	struct list_head list;		/* List of commands		*/
 #ifdef	CONFIG_LONGHELP
-	const char	*help;		/* Help  message	(long)	*/
+	const char	*help;			/* Help  message	(long)	*/
 #endif
 }
 #ifdef __x86_64__
@@ -60,9 +59,17 @@ __attribute__((aligned(64)))
 #endif
 ;
 
-extern struct command __barebox_cmd_start;
-extern struct command __barebox_cmd_end;
+/*
+ * Monitor Command Table
+ */
+struct command {
+	struct command_entry entry;
+
+	struct list_head list;		/* List of commands		*/
+};
 
+extern struct command_entry __barebox_cmd_start;
+extern struct command_entry __barebox_cmd_end;
 
 /* common/command.c */
 struct command *find_cmd(const char *cmd);
@@ -80,8 +87,8 @@ void barebox_cmd_usage(struct command *cmdtp);
 #define Struct_Section  __attribute__ ((unused,section (".barebox_cmd")))
 
 #define BAREBOX_CMD_START(_name)							\
-extern const struct command __barebox_cmd_##_name;					\
-const struct command __barebox_cmd_##_name						\
+extern const struct command_entry __barebox_cmd_##_name;				\
+const struct command_entry __barebox_cmd_##_name					\
 	__attribute__ ((unused,section (".barebox_cmd_" __stringify(_name)))) = {	\
 	.name		= #_name,
 
@@ -110,6 +117,6 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
-int register_command(struct command *);
+int register_command(struct command_entry *);
 
 #endif	/* __COMMAND_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
