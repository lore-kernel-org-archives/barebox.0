Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qr6jz-00046N-JV
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 11:14:28 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id D544DFFC9B6
	for <barebox@lists.infradead.org>;
	Wed, 10 Aug 2011 13:06:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Aug 2011 12:47:08 +0200
Message-Id: <1312973230-27870-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] login: add timeout support
To: barebox@lists.infradead.org

If a timeout is specified and expired the command will be executed
by default boot

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c   |   26 ++++++++++++++--
 commands/passwd.c  |    4 +-
 common/password.c  |   87 ++++++++++++++++++++++++++++-----------------------
 include/password.h |    2 +-
 4 files changed, 74 insertions(+), 45 deletions(-)

diff --git a/commands/login.c b/commands/login.c
index 7d99b73..610fb9e 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -21,6 +21,7 @@
 #include <common.h>
 #include <command.h>
 #include <password.h>
+#include <getopt.h>
 
 #define PASSWD_MAX_LENGTH	(128 + 1)
 
@@ -35,16 +36,32 @@
 static int do_login(struct command *cmdtp, int argc, char *argv[])
 {
 	unsigned char passwd[PASSWD_MAX_LENGTH];
-	int passwd_len;
+	int passwd_len, opt;
+	int timeout = 0;
+	char *timeout_cmd = "boot";
 
 	if (!is_passwd_enable()) {
 		puts("login: password not set\n");
 		return 0;
 	}
 
+	while((opt = getopt(argc, argv, "t:")) > 0) {
+		switch(opt) {
+		case 't':
+			timeout = simple_strtoul(optarg, NULL, 10);
+			break;
+		}
+	}
+
+	if (optind != argc)
+		timeout_cmd = argv[optind];
+
 	do {
 		puts("Password: ");
-		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE);
+		passwd_len = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, timeout);
+
+		if (passwd_len < 0)
+			run_command(timeout_cmd, 0);
 
 		if (check_passwd(passwd, passwd_len))
 			return 0;
@@ -54,7 +71,10 @@ static int do_login(struct command *cmdtp, int argc, char *argv[])
 }
 
 static const __maybe_unused char cmd_login_help[] =
-"";
+"Usage: login [[-t timeout] <command>]\n"
+"If a timeout is specified and expired the command will be executed\n"
+"by default boot\n"
+;
 
 BAREBOX_CMD_START(login)
 	.cmd		= do_login,
diff --git a/commands/passwd.c b/commands/passwd.c
index 9435091..9a07873 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -42,13 +42,13 @@ static int do_passwd(struct command *cmdtp, int argc, char *argv[])
 	int ret = 1;
 
 	puts("Enter new password: ");
-	passwd1_len = password(passwd1, PASSWD_MAX_LENGTH, PASSWD_MODE);
+	passwd1_len = password(passwd1, PASSWD_MAX_LENGTH, PASSWD_MODE, 0);
 
 	if (passwd1_len < 0)
 		return 1;
 
 	puts("Retype new password: ");
-	passwd2_len = password(passwd2, PASSWD_MAX_LENGTH, PASSWD_MODE);
+	passwd2_len = password(passwd2, PASSWD_MAX_LENGTH, PASSWD_MODE, 0);
 
 	if (passwd2_len < 0)
 		return 1;
diff --git a/common/password.c b/common/password.c
index 20e398f..ece7704 100644
--- a/common/password.c
+++ b/common/password.c
@@ -27,6 +27,7 @@
 #include <digest.h>
 #include <malloc.h>
 #include <xfuncs.h>
+#include <clock.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
 #define PASSWD_SUM "md5"
@@ -36,56 +37,64 @@
 #define PASSWD_SUM "sha256"
 #endif
 
-int password(unsigned char *passwd, size_t length, int flags)
+int password(unsigned char *passwd, size_t length, int flags, int timeout)
 {
 	unsigned char *buf = passwd;
 	int pos = 0;
 	unsigned char ch;
+	uint64_t start, second;
 
 	if (!passwd)
 		return -EINVAL;
 
+	start = get_time_ns();
+	second = start;
+
 	do {
-		ch = getc();
-
-		switch (ch) {
-		case '\r':
-		case '\n':
-			*buf = '\0';
-			puts("\r\n");
-			return pos;
-		case '\0':
-		case '\t':
-			continue;
-		case CTL_CH('c'):
-			passwd[0] = '\0';
-			puts("\r\n");
-			return 0;
-		case CTL_CH('h'):
-		case KEY_DEL7:
-		case KEY_DEL:
-			if (flags & STAR && pos > 0)
-				puts("\b \b");
-			*buf = '\0';
-			buf--;
-			pos--;
-			continue;
-		default:
-			if (pos < length - 1) {
-				if (flags & STAR)
-					putchar('*');
-				else if (flags & CLEAR)
-					putchar(ch);
-
-				*buf = ch;
-				buf++;
-				pos++;
-			} else {
-				if (flags & STAR)
-					putchar('\a');
+		if (tstc()) {
+			ch = getc();
+
+			switch (ch) {
+			case '\r':
+			case '\n':
+				*buf = '\0';
+				puts("\r\n");
+				return pos;
+			case '\0':
+			case '\t':
+				continue;
+			case CTL_CH('c'):
+				passwd[0] = '\0';
+				puts("\r\n");
+				return 0;
+			case CTL_CH('h'):
+			case KEY_DEL7:
+			case KEY_DEL:
+				if (flags & STAR && pos > 0)
+					puts("\b \b");
+				*buf = '\0';
+				buf--;
+				pos--;
+				continue;
+			default:
+				if (pos < length - 1) {
+					if (flags & STAR)
+						putchar('*');
+					else if (flags & CLEAR)
+						putchar(ch);
+
+					*buf = ch;
+					buf++;
+					pos++;
+				} else {
+					if (flags & STAR)
+						putchar('\a');
+				}
 			}
 		}
-	} while(1);
+	} while (!is_timeout(start, timeout * SECOND) || timeout == 0);
+
+	return -1;
 }
 EXPORT_SYMBOL(password);
 
diff --git a/include/password.h b/include/password.h
index 32301eb..540ab05 100644
--- a/include/password.h
+++ b/include/password.h
@@ -28,7 +28,7 @@
 #define STAR	(1 << 1)
 #define CLEAR	(1 << 2)
 
-int password(unsigned char *passwd, size_t length, int flags);
+int password(unsigned char *passwd, size_t length, int flags, int timeout);
 
 int read_passwd(unsigned char *sum, size_t length);
 int write_passwd(unsigned char *sum, size_t length);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
