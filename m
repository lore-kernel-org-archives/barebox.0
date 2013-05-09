Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaRIj-0005S5-Aw
 for barebox@lists.infradead.org; Thu, 09 May 2013 13:54:30 +0000
Received: from mail637.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 84C91FF8C3C
 for <barebox@lists.infradead.org>; Thu,  9 May 2013 15:54:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 May 2013 15:49:42 +0200
Message-Id: <1368107382-25787-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] login: disable input console if password wrong
To: barebox@lists.infradead.org

so we garantie that barebox is secured again user interaction

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c        |    5 ++++-
 common/console.c        |    6 ++++++
 common/console_common.c |   13 +++++++++++++
 common/console_simple.c |    9 ++++++++-
 include/console.h       |    3 +++
 5 files changed, 34 insertions(+), 2 deletions(-)

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
diff --git a/common/console.c b/common/console.c
index a0a06f6..27081f2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -224,6 +224,9 @@ int getc(void)
 	unsigned char ch;
 	uint64_t start;
 
+	if (unlikely(!console_is_input_allow()))
+		return -EPERM;
+
 	/*
 	 * For 100us we read the characters from the serial driver
 	 * into a kfifo. This helps us not to lose characters
@@ -258,6 +261,9 @@ EXPORT_SYMBOL(fgetc);
 
 int tstc(void)
 {
+	if (unlikely(!console_is_input_allow()))
+		return 0;
+
 	return kfifo_len(console_input_fifo) || tstc_raw();
 }
 EXPORT_SYMBOL(tstc);
diff --git a/common/console_common.c b/common/console_common.c
index d139d1a..5111ff0 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -21,9 +21,22 @@
 #include <common.h>
 #include <fs.h>
 #include <errno.h>
+#include <console.h>
 
 #ifndef CONFIG_CONSOLE_NONE
 
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
+
 int printf(const char *fmt, ...)
 {
 	va_list args;
diff --git a/common/console_simple.c b/common/console_simple.c
index 1fe569e..f9953e8 100644
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
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
