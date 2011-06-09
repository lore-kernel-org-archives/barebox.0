Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.97.mail-out.ovh.net ([46.105.44.177]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUgrD-0000BQ-ET
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:09:18 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 78FB24AA61D
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:09:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 16:55:50 +0200
Message-Id: <1307631354-5553-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: [PATCH 2/6] complete: add generic command complete framework
To: barebox@lists.infradead.org

introduce generic command specific complete callback

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c  |   53 ++++++++++++++++++++++++++++++++++++++-------------
 include/command.h  |    8 +++++++
 include/complete.h |    4 +++
 3 files changed, 51 insertions(+), 14 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 9d9f166..098b80d 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -20,13 +20,10 @@
 #include <common.h>
 #include <complete.h>
 #include <xfuncs.h>
-#include <linux/list.h>
-#include <malloc.h>
 #include <fs.h>
 #include <linux/stat.h>
 #include <libgen.h>
 #include <command.h>
-#include <stringlist.h>
 #include <environment.h>
 
 static int file_complete(struct string_list *sl, char *instr)
@@ -68,7 +65,7 @@ out:
 	return 0;
 }
 
-static int command_complete(struct string_list *sl, char *instr)
+int command_complete(struct string_list *sl, char *instr)
 {
 	struct command *cmdtp;
 	char cmd[128];
@@ -196,6 +193,32 @@ void complete_reset(void)
 	tab_pressed = 0;
 }
 
+static char* cmd_complete_lookup(struct string_list *sl, char *instr)
+{
+	struct command *cmdtp;
+	int len;
+	int ret = 1;
+	char *res = NULL;
+
+	for_each_command(cmdtp) {
+		len = strlen(cmdtp->name);
+		if (!strncmp(instr, cmdtp->name, len) && instr[len] == ' ') {
+			instr += len + 1;
+			if (cmdtp->complete) {
+				ret = cmdtp->complete(sl, instr);
+				res = instr;
+			}
+			goto end;
+		}
+	}
+
+end:
+	if (!ret && *instr == '$')
+		env_param_complete(sl, instr + 1, 1);
+
+	return res;
+}
+
 int complete(char *instr, char **outstr)
 {
 	struct string_list sl, *entry, *first_entry;
@@ -219,19 +242,21 @@ int complete(char *instr, char **outstr)
 	while (*t == ' ')
 		t++;
 
-	instr = t;
-
 	/* get the completion possibilities */
-	if ((t = strrchr(t, ' '))) {
-		t++;
-		file_complete(&sl, t);
+	instr = cmd_complete_lookup(&sl, t);
+	if (!instr) {
 		instr = t;
-	} else {
-		command_complete(&sl, instr);
-		env_param_complete(&sl, instr, 0);
+		if ((t = strrchr(t, ' '))) {
+			t++;
+			file_complete(&sl, t);
+			instr = t;
+		} else {
+			command_complete(&sl, instr);
+			env_param_complete(&sl, instr, 0);
+		}
+		if (*instr == '$')
+			env_param_complete(&sl, instr + 1, 1);
 	}
-	if (*instr == '$')
-		env_param_complete(&sl, instr + 1, 1);
 
 	pos = strlen(instr);
 
diff --git a/include/command.h b/include/command.h
index e221546..75afd95 100644
--- a/include/command.h
+++ b/include/command.h
@@ -40,6 +40,8 @@ extern struct list_head command_list;
 
 #define for_each_command(cmd)	list_for_each_entry(cmd, &command_list, list)
 
+struct string_list;
+
 /*
  * Monitor Command Table
  */
@@ -48,6 +50,7 @@ struct command {
 	const char	**aliases;
 					/* Implementation function	*/
 	int		(*cmd)(struct command *, int, char *[]);
+	int		(*complete)(struct string_list *sl, char *instr);
 	const char	*usage;		/* Usage message	(short)	*/
 
 	struct list_head list;		/* List of commands		*/
@@ -88,6 +91,11 @@ const struct command __barebox_cmd_##_name						\
 
 #define BAREBOX_CMD_END					\
 };
+#ifdef CONFIG_AUTO_COMPLETE
+#define BAREBOX_CMD_COMPLETE(_cpt) .complete = _cpt,
+#else
+#define BAREBOX_CMD_COMPLETE(_cpt)
+#endif
 
 #define BAREBOX_CMD_HELP_START(_name) \
 static const __maybe_unused char cmd_##_name##_help[] =
diff --git a/include/complete.h b/include/complete.h
index cc0e88d..3f1fe89 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -2,9 +2,13 @@
 #define __COMPLETE_
 
 #include <linux/list.h>
+#include <malloc.h>
+#include <stringlist.h>
 
 int complete(char *instr, char **outstr);
 void complete_reset(void);
 
+int command_complete(struct string_list *sl, char *instr);
+
 #endif /* __COMPLETE_ */
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
