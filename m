Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URLdY-0006UO-K1
 for barebox@lists.infradead.org; Sun, 14 Apr 2013 12:02:25 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 83F40FF8240
 for <barebox@lists.infradead.org>; Sun, 14 Apr 2013 14:02:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Apr 2013 13:58:24 +0200
Message-Id: <1365940704-4552-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For-master critical fix PATCH 1/1] login: disable input console if
 password wrong
To: barebox@lists.infradead.org

so we garantie that barebox is secured again user interaction

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig        |    1 +
 commands/login.c        |    5 ++++-
 common/Kconfig          |    3 +++
 common/console.c        |    6 ++++++
 common/console_common.c |   15 +++++++++++++++
 common/console_simple.c |    7 +++++++
 include/console.h       |   12 ++++++++++++
 7 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index c1454c7..d78c925 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -87,6 +87,7 @@ config CMD_MENU_MANAGEMENT
 config CMD_LOGIN
 	tristate
 	select PASSWORD
+	select CONSOLE_INPUT_RESTRICTION
 	prompt "login"
 
 config CMD_PASSWD
diff --git a/commands/login.c b/commands/login.c
index fb6bb35..0a6f157 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -20,6 +20,7 @@
 #include <complete.h>
 #include <password.h>
 #include <getopt.h>
+#include <console.h>
 
 #define PASSWD_MAX_LENGTH	(128 + 1)
 
@@ -58,8 +59,10 @@ static int do_login(int argc, char *argv[])
 		puts("Password: ");
 		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, timeout);
 
-		if (passwd_len < 0)
+		if (passwd_len < 0) {
+			console_allow_input(false);
 			run_command(timeout_cmd, 0);
+		}
 
 		if (check_passwd(passwd, passwd_len))
 			return 0;
diff --git a/common/Kconfig b/common/Kconfig
index 683460b..33e4de2 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -417,6 +417,9 @@ config TIMESTAMP
 	  commands like bootm or iminfo. This option is
 	  automatically enabled when you select CFG_CMD_DATE .
 
+config CONSOLE_INPUT_RESTRICTION
+	bool
+
 choice
 	prompt "console support"
 	default CONSOLE_FULL
diff --git a/common/console.c b/common/console.c
index beb37bd..dcd4d92 100644
--- a/common/console.c
+++ b/common/console.c
@@ -234,6 +234,9 @@ int getc(void)
 	unsigned char ch;
 	uint64_t start;
 
+	if (!console_is_input_allow())
+		return -EPERM;
+
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
@@ -268,6 +271,9 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
+	if (!console_is_input_allow())
+		return 0;
+
 	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
diff --git a/common/console_common.c b/common/console_common.c
index d139d1a..870ffca 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -21,6 +21,21 @@
 #include <common.h>
 #include <fs.h>
 #include <errno.h>
+#include <console.h>
+
+#ifdef CONFIG_CONSOLE_INPUT_RESTRICTION
+static bool console_input_allow = true;
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
+#endif
 
 #ifndef CONFIG_CONSOLE_NONE
 
diff --git a/common/console_simple.c b/common/console_simple.c
index 1fe569e..cb8894c 100644
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
+	if (!console_is_input_allow())
+		return 0;
+
 	if (!console)
 		return 0;
 
@@ -49,6 +53,9 @@ EXPORT_SYMBOL(tstc);
 
 int getc(void)
 {
+	if (!console_is_input_allow())
+		return -EPERM;
+
 	if (!console)
 		return -EINVAL;
 	return console->getc(console);
diff --git a/include/console.h b/include/console.h
index c45feb4..9506653 100644
--- a/include/console.h
+++ b/include/console.h
@@ -52,4 +52,16 @@ extern struct list_head console_list;
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
+#ifdef CONFIG_CONSOLE_INPUT_RESTRICTION
+bool console_is_input_allow(void);
+void console_allow_input(bool val);
+#else
+static inline bool console_is_input_allow(void)
+{
+	return true;
+}
+
+void console_allow_input(bool val) {}
+#endif
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
