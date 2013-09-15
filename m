Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLAWo-0004hY-QN
 for barebox@lists.infradead.org; Sun, 15 Sep 2013 11:30:14 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9D211DC5EA2
 for <barebox@lists.infradead.org>; Sun, 15 Sep 2013 13:29:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Sep 2013 13:30:52 +0200
Message-Id: <1379244654-30716-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130915112850.GC21829@ns203013.ovh.net>
 <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] login: disable input console if password wrong
To: barebox@lists.infradead.org

so we guarantee that barebox is secured again user interaction

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c        |  6 +++++-
 common/console.c        |  6 ++++++
 common/console_common.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c |  9 ++++++++-
 common/startup.c        |  2 ++
 include/console.h       |  3 +++
 6 files changed, 69 insertions(+), 2 deletions(-)

diff --git a/commands/login.c b/commands/login.c
index f5429bc..cc11afb 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -24,6 +24,7 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <init.h>
+#include <console.h>
 
 #define PASSWD_MAX_LENGTH	(128 + 1)
 
@@ -54,6 +55,7 @@ static int do_login(int argc, char *argv[])
 
 	login_getenv_int("global.login.timeout", &timeout);
 
+	console_allow_input(true);
 	if (!is_passwd_enable()) {
 		puts("login: password not set\n");
 		return 0;
@@ -74,8 +76,10 @@ static int do_login(int argc, char *argv[])
 		puts("Password: ");
 		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, timeout);
 
-		if (passwd_len < 0)
+		if (passwd_len < 0) {
+			console_allow_input(false);
 			run_command(timeout_cmd, 0);
+		}
 
 		if (check_passwd(passwd, passwd_len))
 			return 0;
diff --git a/common/console.c b/common/console.c
index 6ca94e2..4931829 100644
--- a/common/console.c
+++ b/common/console.c
@@ -236,6 +236,9 @@ int getc(void)
 	unsigned char ch;
 	uint64_t start;
 
+	if (unlikely(!console_is_input_allow()))
+		return -EPERM;
+
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
@@ -270,6 +273,9 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
+	if (unlikely(!console_is_input_allow()))
+		return 0;
+
 	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
diff --git a/common/console_common.c b/common/console_common.c
index d139d1a..f8046b1 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -21,9 +21,54 @@
 #include <common.h>
 #include <fs.h>
 #include <errno.h>
+#include <console.h>
+#include <init.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <password.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
+static bool console_input_allow = false;
+
+static int console_input_allow_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	int ret = dev_param_set_generic(dev, p, val);
+
+	if (val && simple_strtoul(val, NULL, 10))
+		console_input_allow = true;
+	else
+		console_input_allow = false;
+
+	return ret;
+}
+
+static int console_global_init(void)
+{
+	globalvar_add("console.input_allow", console_input_allow_set, NULL, 0);
+
+	if (IS_ENABLED(CONFIG_CMD_LOGIN) && is_passwd_enable())
+		setenv("global.console.input_allow", "0");
+	else
+		setenv("global.console.input_allow", "1");
+
+	return 0;
+}
+late_initcall(console_global_init);
+
+BAREBOX_MAGICVAR_NAMED(global_console_input_allow, global.console.input_allow, "console input allowed");
+
+bool console_is_input_allow(void)
+{
+	return console_input_allow;
+}
+
+void console_allow_input(bool val)
+{
+	console_input_allow = val;
+}
+
 int printf(const char *fmt, ...)
 {
 	va_list args;
diff --git a/common/console_simple.c b/common/console_simple.c
index 101064b..bf6491d 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -3,6 +3,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <debug_ll.h>
+#include <console.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
@@ -40,6 +41,9 @@ EXPORT_SYMBOL(console_putc);
 
 int tstc(void)
 {
+	if (unlikely(!console_is_input_allow()))
+		return 0;
+
 	if (!console)
 		return 0;
 
@@ -48,7 +52,10 @@ int tstc(void)
 EXPORT_SYMBOL(tstc);
 
 int getc(void)
-{
+
+	if (unlikely(!console_is_input_allow()))
+		return -EPERM;
+
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);
diff --git a/common/startup.c b/common/startup.c
index 9b33a92..0a36c07 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -138,6 +138,8 @@ void __noreturn start_barebox(void)
 			run_command("source /env/bin/init", 0);
 		} else {
 			pr_err("/env/bin/init not found\n");
+			if (IS_ENABLED(CONFIG_CMD_LOGIN))
+				while(run_command("login -t 0", 0));
 		}
 	}
 
diff --git a/include/console.h b/include/console.h
index 72cf99f..e94c5ae 100644
--- a/include/console.h
+++ b/include/console.h
@@ -54,4 +54,7 @@ extern struct list_head console_list;
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
+bool console_is_input_allow(void);
+void console_allow_input(bool val);
+
 #endif
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
