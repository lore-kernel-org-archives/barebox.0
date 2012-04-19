Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT9-0003gl-UK
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:04:00 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1C091FF8ABD
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:56 +0200
Message-Id: <1334814298-11468-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120419053846.GA20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 09/11] complete: add go and sleep support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/go.c      |    2 ++
 commands/sleep.c   |    2 ++
 common/complete.c  |    5 +++++
 include/complete.h |    1 +
 4 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index c821207..e9e9d40 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -25,6 +25,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <linux/ctype.h>
@@ -91,4 +92,5 @@ BAREBOX_CMD_START(go)
 	.cmd		= do_go,
 	.usage		= "start application at address or file",
 	BAREBOX_CMD_HELP(cmd_go_help)
+	BAREBOX_CMD_COMPLETE(cammand_var_complete)
 BAREBOX_CMD_END
diff --git a/commands/sleep.c b/commands/sleep.c
index f772e87..c5f7867 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -22,6 +22,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <clock.h>
 
 static int do_sleep(int argc, char *argv[])
@@ -46,4 +47,5 @@ static int do_sleep(int argc, char *argv[])
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
 	.usage		= "delay execution for n seconds",
+	BAREBOX_CMD_COMPLETE(cammand_var_complete)
 BAREBOX_CMD_END
diff --git a/common/complete.c b/common/complete.c
index 5213b10..9ecce25 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -193,6 +193,11 @@ int empty_complete(struct string_list *sl, char *instr)
 	return 1;
 }
 
+int cammand_var_complete(struct string_list *sl, char *instr)
+{
+	return 0;
+}
+
 static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
 	struct device_d *dev;
diff --git a/include/complete.h b/include/complete.h
index ea8c53a..4336a26 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -12,6 +12,7 @@ int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
 int empty_complete(struct string_list *sl, char *instr);
 int eth_complete(struct string_list *sl, char *instr);
+int cammand_var_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
