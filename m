Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLcvD-0004Os-Sh
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 17:49:16 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 75004FF8C83
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 19:48:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Sep 2013 19:49:57 +0200
Message-Id: <1379353800-28237-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] login: add globalvar timeout support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/login.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/commands/login.c b/commands/login.c
index fb6bb35..485def2 100644
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
 
@@ -31,11 +35,13 @@
 #define LOGIN_MODE HIDE
 #endif
 
+static int login_timeout = 0;
+
 static int do_login(int argc, char *argv[])
 {
 	unsigned char passwd[PASSWD_MAX_LENGTH];
 	int passwd_len, opt;
-	int timeout = 0;
+	int timeout = login_timeout;
 	char *timeout_cmd = "boot";
 
 	if (!is_passwd_enable()) {
@@ -80,3 +86,13 @@ BAREBOX_CMD_START(login)
 	BAREBOX_CMD_HELP(cmd_login_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
+static int login_global_init(void)
+{
+	globalvar_add_simple_int("login.timeout", &login_timeout, "%d");
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
