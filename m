Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLAWo-0004hW-QX
 for barebox@lists.infradead.org; Sun, 15 Sep 2013 11:30:11 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 875A2DC5E9B
 for <barebox@lists.infradead.org>; Sun, 15 Sep 2013 13:29:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Sep 2013 13:30:51 +0200
Message-Id: <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130915112850.GC21829@ns203013.ovh.net>
References: <20130915112850.GC21829@ns203013.ovh.net>
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
Subject: [PATCH 1/4] login: add globalvar timeout support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/commands/login.c b/commands/login.c
index fb6bb35..f5429bc 100644
--- a/commands/login.c
+++ b/commands/login.c
@@ -20,6 +20,10 @@
 #include <complete.h>
 #include <password.h>
 #include <getopt.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <init.h>
 
 #define PASSWD_MAX_LENGTH	(128 + 1)
 
@@ -31,6 +35,16 @@
 #define LOGIN_MODE HIDE
 #endif
 
+static void login_getenv_int(const char *name, int *i)
+{
+	const char* str = getenv(name);
+
+	if (!str)
+		return;
+
+	*i = simple_strtoul(str, NULL, 10);
+}
+
 static int do_login(int argc, char *argv[])
 {
 	unsigned char passwd[PASSWD_MAX_LENGTH];
@@ -38,6 +52,8 @@ static int do_login(int argc, char *argv[])
 	int timeout = 0;
 	char *timeout_cmd = "boot";
 
+	login_getenv_int("global.login.timeout", &timeout);
+
 	if (!is_passwd_enable()) {
 		puts("login: password not set\n");
 		return 0;
@@ -80,3 +96,13 @@ BAREBOX_CMD_START(login)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
+static int login_global_init(void)
+{
+	globalvar_add_simple("login.timeout");
+
+	return 0;
+}
+late_initcall(login_global_init);
+
+BAREBOX_MAGICVAR_NAMED(global_login_timeout, global.login.timeout, "timeout to type the password");
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
