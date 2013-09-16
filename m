Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLcvD-0004Ot-Sg
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 17:49:19 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8EC10FF8C92
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 19:48:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Sep 2013 19:49:58 +0200
Message-Id: <1379353800-28237-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379353800-28237-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130916174824.GH21829@ns203013.ovh.net>
 <1379353800-28237-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] login: disable input console if password wrong
To: barebox@lists.infradead.org

so we guarantee that barebox is secured again user interaction

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c        |  6 +++++-
 common/console.c        |  6 ++++++
 common/console_common.c | 33 +++++++++++++++++++++++++++++++++
 common/console_simple.c |  9 ++++++++-
 common/startup.c        |  2 ++
 include/console.h       |  3 +++
 6 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/commands/login.c b/commands/login.c
index 485def2..b616bf1 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -24,6 +24,7 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <init.h>
+#include <console.h>
 
 #define PASSWD_MAX_LENGTH	(128 + 1)
 
@@ -44,6 +45,7 @@ static int do_login(int argc, char *argv[])
 	int timeout = login_timeout;
 	char *timeout_cmd = "boot";
 
+	console_allow_input(true);
 	if (!is_passwd_enable()) {
 		puts("login: password not set\n");
 		return 0;
@@ -64,8 +66,10 @@ static int do_login(int argc, char *argv[])
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
index d139d1a..d1b823e 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -21,9 +21,42 @@
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
 
+static int console_input_allow;
+
+static int console_global_init(void)
+{
+	if (IS_ENABLED(CONFIG_CMD_LOGIN) && is_passwd_enable())
+		console_input_allow = 0;
+	else
+		console_input_allow = 1;
+
+	globalvar_add_simple_bool("console.input_allow", &console_input_allow);
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
