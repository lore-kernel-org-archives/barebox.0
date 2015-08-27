Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUz4Y-0005ye-Er
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 15:26:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Aug 2015 17:26:10 +0200
Message-Id: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] login: rework login mechanism
To: Barebox List <barebox@lists.infradead.org>

We used to have the login functionality in the /env/bin/init script.
This is hard to review and it's too easy to break the login functionality
with changes to this script. Move the places to ask for a password to
C code where we have only a few places where we have to ask for a password.
Mainly these are run_shell() and the menutree command.

This patch introduces a login() function which will only return if the correct
password has been entered. Following calls will return immediately without
asking for a password again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/login.c                      | 70 +-------------------------------
 commands/menutree.c                   |  3 ++
 common/console.c                      |  6 ---
 common/console_common.c               | 27 -------------
 common/console_simple.c               |  9 ++---
 common/hush.c                         |  3 ++
 common/parser.c                       |  2 +
 common/password.c                     | 75 ++++++++++++++++++++++++++++++++++-
 common/startup.c                      |  7 +---
 defaultenv/defaultenv-2-base/bin/init | 18 ---------
 include/console.h                     |  3 --
 include/password.h                    |  8 ++++
 12 files changed, 96 insertions(+), 135 deletions(-)

diff --git a/commands/login.c b/commands/login.c
index bf5085c..58bb592 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -19,89 +19,23 @@
 #include <command.h>
 #include <complete.h>
 #include <password.h>
-#include <getopt.h>
-#include <environment.h>
-#include <globalvar.h>
-#include <magicvar.h>
-#include <init.h>
-#include <console.h>
-
-#define PASSWD_MAX_LENGTH	(128 + 1)
-
-#if defined(CONFIG_PASSWD_MODE_STAR)
-#define LOGIN_MODE STAR
-#elif defined(CONFIG_PASSWD_MODE_CLEAR)
-#define LOGIN_MODE CLEAR
-#else
-#define LOGIN_MODE HIDE
-#endif
-
-static int login_timeout = 0;
 
 static int do_login(int argc, char *argv[])
 {
-	unsigned char passwd[PASSWD_MAX_LENGTH];
-	int passwd_len, opt;
-	int timeout = login_timeout;
-	char *timeout_cmd = "boot";
-
-	console_allow_input(true);
-	if (!is_passwd_enable()) {
-		puts("login: password not set\n");
-		return 0;
-	}
-
-	while((opt = getopt(argc, argv, "t:")) > 0) {
-		switch(opt) {
-		case 't':
-			timeout = simple_strtoul(optarg, NULL, 10);
-			break;
-		}
-	}
-
-	if (optind != argc)
-		timeout_cmd = argv[optind];
-
-	do {
-		puts("Password: ");
-		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, timeout);
-
-		if (passwd_len < 0) {
-			console_allow_input(false);
-			run_command(timeout_cmd);
-		}
-
-		if (check_passwd(passwd, passwd_len) == 1)
-			return 0;
-	} while(1);
+	login();
 
 	return 0;
 }
 
 BAREBOX_CMD_HELP_START(login)
 BAREBOX_CMD_HELP_TEXT("Asks for a password from the console before script execution continues.")
-BAREBOX_CMD_HELP_TEXT("The password can be set with the 'passwd' command. Instead of specifying")
-BAREBOX_CMD_HELP_TEXT("a TIMEOUT the magic variable 'global.login.timeout' could be set.")
-BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-t TIMEOUT", "Execute COMMAND if no login withing TIMEOUT seconds")
+BAREBOX_CMD_HELP_TEXT("The password can be set with the 'passwd' command.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
 	BAREBOX_CMD_DESC("ask for a password")
-	BAREBOX_CMD_OPTS("[-t TIMEOUT] COMMAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-
-static int login_global_init(void)
-{
-	globalvar_add_simple_int("login.timeout", &login_timeout, "%d");
-
-	return 0;
-}
-late_initcall(login_global_init);
-
-BAREBOX_MAGICVAR_NAMED(global_login_timeout, global.login.timeout, "timeout to type the password");
diff --git a/commands/menutree.c b/commands/menutree.c
index 5d30b67..ea5f65f 100644
--- a/commands/menutree.c
+++ b/commands/menutree.c
@@ -12,12 +12,15 @@
 #include <common.h>
 #include <getopt.h>
 #include <menu.h>
+#include <password.h>
 
 static int do_menutree(int argc, char *argv[])
 {
 	int opt, ret;
 	char *path = "/env/menu";
 
+	login();
+
 	while ((opt = getopt(argc, argv, "m:")) > 0) {
 		switch (opt) {
 		case 'm':
diff --git a/common/console.c b/common/console.c
index bf64c08..84d4ea7 100644
--- a/common/console.c
+++ b/common/console.c
@@ -344,9 +344,6 @@ int getc(void)
 	unsigned char ch;
 	uint64_t start;
 
-	if (unlikely(!console_is_input_allow()))
-		return -EPERM;
-
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
@@ -381,9 +378,6 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
-	if (unlikely(!console_is_input_allow()))
-		return 0;
-
 	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
diff --git a/common/console_common.c b/common/console_common.c
index 2c82c6f..fcf89e8 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -33,33 +33,6 @@
 
 #ifndef CONFIG_CONSOLE_NONE
 
-static int console_input_allow;
-
-static int console_global_init(void)
-{
-	if (IS_ENABLED(CONFIG_CMD_LOGIN) && is_passwd_enable())
-		console_input_allow = 0;
-	else
-		console_input_allow = 1;
-
-	globalvar_add_simple_bool("console.input_allow", &console_input_allow);
-
-	return 0;
-}
-late_initcall(console_global_init);
-
-BAREBOX_MAGICVAR_NAMED(global_console_input_allow, global.console.input_allow, "console input allowed");
-
-bool console_is_input_allow(void)
-{
-	return console_input_allow;
-}
-
-void console_allow_input(bool val)
-{
-	console_input_allow = val;
-}
-
 int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
 
 LIST_HEAD(barebox_logbuf);
diff --git a/common/console_simple.c b/common/console_simple.c
index 6cb72bb..2b1cc17 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -41,9 +41,6 @@ EXPORT_SYMBOL(console_putc);
 
 int tstc(void)
 {
-	if (unlikely(!console_is_input_allow()))
-		return 0;
-
 	if (!console)
 		return 0;
 
@@ -53,9 +50,6 @@ EXPORT_SYMBOL(tstc);
 
 int getc(void)
 {
-	if (unlikely(!console_is_input_allow()))
-		return -EPERM;
-
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);
@@ -73,6 +67,9 @@ EXPORT_SYMBOL(console_flush);
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
+	if (login())
+		return 0;
+
 	if (tstc() && getc() == 3)
 		return 1;
 	return 0;
diff --git a/common/hush.c b/common/hush.c
index ffd2513..abe8713 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -116,6 +116,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <libbb.h>
+#include <password.h>
 #include <glob.h>
 #include <getopt.h>
 #include <libfile.h>
@@ -1914,6 +1915,8 @@ int run_shell(void)
 	struct p_context ctx;
 	int exit = 0;
 
+	login();
+
 	do {
 		setup_file_in_str(&input);
 		rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
diff --git a/common/parser.c b/common/parser.c
index 207599f..b5ffe51 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -266,6 +266,8 @@ int run_shell(void)
 	int len;
 	int rc = 1;
 
+	login();
+
 	for (;;) {
 		len = readline (CONFIG_PROMPT, console_buffer, CONFIG_CBSIZE);
 
diff --git a/common/password.c b/common/password.c
index c845422..6532143 100644
--- a/common/password.c
+++ b/common/password.c
@@ -24,8 +24,11 @@
 #include <digest.h>
 #include <malloc.h>
 #include <xfuncs.h>
+#include <magicvar.h>
 #include <clock.h>
+#include <init.h>
 #include <stdlib.h>
+#include <globalvar.h>
 #include <generated/passwd.h>
 #include <crypto/pbkdf2.h>
 
@@ -73,7 +76,7 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 			case CTL_CH('c'):
 				passwd[0] = '\0';
 				puts("\r\n");
-				return 0;
+				return -EINTR;
 			case CTL_CH('h'):
 			case BB_KEY_DEL7:
 			case BB_KEY_DEL:
@@ -104,7 +107,7 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 		}
 	} while (!is_timeout(start, timeout * SECOND) || timeout == 0);
 
-	return -1;
+	return -ETIMEDOUT;
 }
 EXPORT_SYMBOL(password);
 
@@ -374,6 +377,8 @@ int set_env_passwd(unsigned char* passwd, size_t length)
 		hash_len = PBKDF2_LENGTH;
 	} else {
 		d = digest_alloc(PASSWD_SUM);
+		if (!d)
+			return -EINVAL;
 
 		hash_len = digest_length(d);
 	}
@@ -406,3 +411,69 @@ err:
 	return ret;
 }
 EXPORT_SYMBOL(set_env_passwd);
+
+#define PASSWD_MAX_LENGTH	(128 + 1)
+
+#if defined(CONFIG_PASSWD_MODE_STAR)
+#define LOGIN_MODE STAR
+#elif defined(CONFIG_PASSWD_MODE_CLEAR)
+#define LOGIN_MODE CLEAR
+#else
+#define LOGIN_MODE HIDE
+#endif
+
+static int logged_in;
+static int login_timeout;
+static char *login_fail_command;
+
+/**
+ * login() - Prompt for password
+ *
+ * This function only returns when the correct password has been entered or
+ * no password is necessary because either no password is configured or the
+ * correct password has been entered in a previous call to this function.
+ */
+void login(void)
+{
+	unsigned char passwd[PASSWD_MAX_LENGTH];
+	int ret;
+
+	if (!is_passwd_enable())
+		return;
+
+	if (logged_in)
+		return;
+
+	while (1) {
+		printf("Password: ");
+
+		ret = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, login_timeout);
+		if (ret < 0)
+			run_command(login_fail_command);
+
+		if (ret < 0)
+			continue;
+
+		if (check_passwd(passwd, ret) != 1)
+			continue;
+
+		logged_in = 1;
+		return;
+	}
+}
+
+static int login_global_init(void)
+{
+	login_fail_command = xstrdup("boot");
+
+	globalvar_add_simple_int("login.timeout", &login_timeout, "%d");
+	globalvar_add_simple_string("login.fail_command", &login_fail_command);
+
+	return 0;
+}
+late_initcall(login_global_init);
+
+BAREBOX_MAGICVAR_NAMED(global_login_fail_command, global.login.fail_command,
+		"command to run when password entry failed");
+BAREBOX_MAGICVAR_NAMED(global_login_timeout, global.login.timeout,
+		"timeout to type the password");
diff --git a/common/startup.c b/common/startup.c
index 802b90e..4a303b2 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -108,13 +108,10 @@ void __noreturn start_barebox(void)
 	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT)) {
 		pr_info("running /env/bin/init...\n");
 
-		if (!stat("/env/bin/init", &s)) {
+		if (!stat("/env/bin/init", &s))
 			run_command("source /env/bin/init");
-		} else {
+		else
 			pr_err("/env/bin/init not found\n");
-			if (IS_ENABLED(CONFIG_CMD_LOGIN))
-				while(run_command("login -t 0"));
-		}
 	}
 
 	if (!barebox_main) {
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 30651e5..37ee365 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -27,25 +27,15 @@ magicvar -a global.allow_color "Allow color on the console (boolean)"
 [ -e /env/config-board ] && /env/config-board
 /env/config
 
-# request password to login if a timeout is specified and password set
-if [ -n ${global.login.timeout} ]; then
-	[ ${global.login.timeout} -gt 0 ] && login_cmd=login
-fi
-# allow the input if not
-[ -n ${global.console.input_allow} ] && global.console.input_allow=1
-
 # allow to stop the boot before execute the /env/init/*
 # but without waiting
 timeout -s -a -v key 0
 autoboot="$?"
 
 if [ "${key}" = "q" ]; then
-	${login_cmd}
 	exit
 fi
 
-[ -n ${login_cmd} ] && global.console.input_allow=0
-
 for i in /env/init/*; do
 	. $i
 done
@@ -56,17 +46,12 @@ else
 	echo -e -n "\nHit any key to stop autoboot: "
 fi
 
-[ -n ${login_cmd} ] && global.console.input_allow=1
-
 if [ "$autoboot" = 0 ]; then
 	timeout -a $global.autoboot_timeout -v key
 	autoboot="$?"
 fi
 
-[ -n ${login_cmd} ] && global.console.input_allow=0
-
 if [ "${key}" = "q" ]; then
-	${login_cmd}
 	exit
 fi
 
@@ -75,12 +60,9 @@ if [ "$autoboot" = 0 ]; then
 fi
 
 if [ -e /env/menu ]; then
-	${login_cmd}
 	if [ "${key}" != "m" ]; then
 		echo -e "\ntype exit to get to the menu"
 		sh
 	fi
 	/env/menu/mainmenu
 fi
-
-${login_cmd}
diff --git a/include/console.h b/include/console.h
index a6737c8..4b2f134 100644
--- a/include/console.h
+++ b/include/console.h
@@ -71,9 +71,6 @@ extern struct list_head console_list;
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
-bool console_is_input_allow(void);
-void console_allow_input(bool val);
-
 extern int barebox_loglevel;
 
 struct console_device *console_get_first_active(void);
diff --git a/include/password.h b/include/password.h
index 0dd1054..fec831f 100644
--- a/include/password.h
+++ b/include/password.h
@@ -42,6 +42,14 @@ int passwd_env_disable(void);
 int check_env_passwd(unsigned char* passwd, size_t length);
 int set_env_passwd(unsigned char* passwd, size_t length);
 
+#ifdef CONFIG_PASSWORD
+void login(void);
+#else
+static inline void login(void)
+{
+}
+#endif
+
 static inline int is_passwd_enable(void)
 {
 	return is_passwd_default_enable() || is_passwd_env_enable();
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
