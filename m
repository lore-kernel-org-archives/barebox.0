Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ84J-0003TS-Bu
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 21:00:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Feb 2014 22:00:08 +0100
Message-Id: <1393534812-30995-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
References: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] run_command: remove unused flag parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c  | 2 +-
 commands/exec.c  | 2 +-
 commands/login.c | 2 +-
 commands/time.c  | 2 +-
 common/hush.c    | 2 +-
 common/menu.c    | 2 +-
 common/parser.c  | 2 +-
 common/startup.c | 4 ++--
 fs/fs.c          | 2 +-
 include/common.h | 3 +--
 10 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index ccf5827..bb8d07f 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -47,7 +47,7 @@ static int boot_script(char *path)
 	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set_match("bootm.", "");
 
-	ret = run_command(path, 0);
+	ret = run_command(path);
 	if (ret) {
 		printf("Running %s failed\n", path);
 		goto out;
diff --git a/commands/exec.c b/commands/exec.c
index bd7d54a..8d12b30 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -39,7 +39,7 @@ static int do_exec(int argc, char *argv[])
 		if (!script)
 			return 1;
 
-		if (run_command (script, 0) == -1)
+		if (run_command(script) == -1)
 			goto out;
 		free(script);
 	}
diff --git a/commands/login.c b/commands/login.c
index b616bf1..d9297fa 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -68,7 +68,7 @@ static int do_login(int argc, char *argv[])
 
 		if (passwd_len < 0) {
 			console_allow_input(false);
-			run_command(timeout_cmd, 0);
+			run_command(timeout_cmd);
 		}
 
 		if (check_passwd(passwd, passwd_len))
diff --git a/commands/time.c b/commands/time.c
index 987c25e..2cc3292 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -27,7 +27,7 @@ static int do_time(int argc, char *argv[])
 
 	start = get_time_ns();
 
-	run_command(buf, 0);
+	run_command(buf);
 
 	end = get_time_ns();
 
diff --git a/common/hush.c b/common/hush.c
index abe2ced..bd534c1 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1824,7 +1824,7 @@ static char * make_string(char ** inp)
 	return str;
 }
 
-int run_command (const char *cmd, int flag)
+int run_command(const char *cmd)
 {
 	struct p_context ctx;
 	int ret;
diff --git a/common/menu.c b/common/menu.c
index 4cefadb..54f2c71 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -468,7 +468,7 @@ static void menu_action_command(struct menu *m, struct menu_entry *me)
 	if (!s)
 		s = e->command;
 
-	ret = run_command (s, 0);
+	ret = run_command(s);
 
 	if (ret < 0)
 		udelay(1000000);
diff --git a/common/parser.c b/common/parser.c
index d390fb6..fcd885b 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -176,7 +176,7 @@ static void process_macros (const char *input, char *output)
  * creates or modifies environment variables (like "bootp" does).
  */
 
-int run_command (const char *cmd, int flag)
+int run_command(const char *cmd)
 {
 	char cmdbuf[CONFIG_CBSIZE];	/* working copy of cmd		*/
 	char *token;			/* start of token in cmdbuf	*/
diff --git a/common/startup.c b/common/startup.c
index d7f97a5..ceb597b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -95,11 +95,11 @@ void __noreturn start_barebox(void)
 		pr_info("running /env/bin/init...\n");
 
 		if (!stat("/env/bin/init", &s)) {
-			run_command("source /env/bin/init", 0);
+			run_command("source /env/bin/init");
 		} else {
 			pr_err("/env/bin/init not found\n");
 			if (IS_ENABLED(CONFIG_CMD_LOGIN))
-				while(run_command("login -t 0", 0));
+				while(run_command("login -t 0"));
 		}
 	}
 
diff --git a/fs/fs.c b/fs/fs.c
index eed0fce..b0ac918 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -435,7 +435,7 @@ static void automount_mount(const char *path, int instat)
 
 		setenv("automount_path", am->path);
 		export("automount_path");
-		ret = run_command(am->cmd, 0);
+		ret = run_command(am->cmd);
 		setenv("automount_path", NULL);
 
 		if (ret)
diff --git a/include/common.h b/include/common.h
index 293f504..6987b4f 100644
--- a/include/common.h
+++ b/include/common.h
@@ -92,8 +92,7 @@ void __noreturn panic(const char *fmt, ...);
 
 char *size_human_readable(unsigned long long size);
 
-/* common/main.c */
-int	run_command	(const char *cmd, int flag);
+int run_command(const char *cmd);
 int	readline	(const char *prompt, char *buf, int len);
 
 /* common/memsize.c */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
