Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQKZW-0004Zs-AJ
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 16:09:50 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1466BFFA02E
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 18:16:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 22 Oct 2012 18:07:26 +0200
Message-Id: <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121022160341.GF21588@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
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
Subject: [PATCH 1/3] command: introduce abi version
To: barebox@lists.infradead.org

This will allow to detect incompatibility between the env abi and the current
barebox one

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/command.c      |    2 ++
 include/command.h     |    1 +
 include/command_abi.h |   12 ++++++++++++
 3 files changed, 15 insertions(+)
 create mode 100644 include/command_abi.h

diff --git a/common/command.c b/common/command.c
index 873b3ff..c80538c 100644
--- a/common/command.c
+++ b/common/command.c
@@ -154,6 +154,8 @@ static int init_command_list(void)
 {
 	struct command *cmdtp;
 
+	export_env_ull("command_abi_version", COMMAND_ABI_VERSION);
+
 	for (cmdtp = &__barebox_cmd_start;
 			cmdtp != &__barebox_cmd_end;
 			cmdtp++)
diff --git a/include/command.h b/include/command.h
index ffc722c..c49a014 100644
--- a/include/command.h
+++ b/include/command.h
@@ -25,6 +25,7 @@
 
 #include <linux/list.h>
 #include <linux/stringify.h>
+#include <command_abi.h>
 
 #ifndef NULL
 #define NULL	0
diff --git a/include/command_abi.h b/include/command_abi.h
new file mode 100644
index 0000000..264c003
--- /dev/null
+++ b/include/command_abi.h
@@ -0,0 +1,12 @@
+/*
+ * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPL v2
+ */
+
+#ifndef __COMMAND_ABI_H__
+#define __COMMAND_ABI_H__
+
+#define COMMAND_ABI_VERSION	0
+
+#endif /* __COMMAND_ABI_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
