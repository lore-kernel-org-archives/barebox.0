Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOq0W-00043n-F2
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:47:13 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3ED62105062C
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:48:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:26:01 +0200
Message-Id: <1335788764-30430-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430122334.GE2992@game.jcrosoft.org>
References: <20120430122334.GE2992@game.jcrosoft.org>
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
Subject: [PATCH 08/11] complete: add eth interface complete support
To: barebox@lists.infradead.org

use it on ethact

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/net.c     |    2 ++
 include/complete.h |    1 +
 net/eth.c          |   21 +++++++++++++++++++++
 3 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index c5c6373..a453f4e 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -28,6 +28,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <environment.h>
 #include <driver.h>
 #include <net.h>
@@ -96,5 +97,6 @@ BAREBOX_CMD_START(ethact)
 	.cmd		= do_ethact,
 	.usage		= "set current ethernet device",
 	BAREBOX_CMD_HELP(cmd_ethact_help)
+	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
 
diff --git a/include/complete.h b/include/complete.h
index 006369c..12c4e15 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -14,6 +14,7 @@ void complete_reset(void);
 int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
 int empty_complete(struct string_list *sl, char *instr);
+int eth_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
diff --git a/net/eth.c b/net/eth.c
index 130805b..4ea9fb0 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <driver.h>
 #include <init.h>
 #include <net.h>
@@ -109,6 +110,26 @@ struct eth_device *eth_get_byname(char *ethname)
 	return NULL;
 }
 
+#ifdef CONFIG_AUTO_COMPLETE
+int eth_complete(struct string_list *sl, char *instr)
+{
+	struct eth_device *edev;
+	const char *devname;
+	int len;
+
+	len = strlen(instr);
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		devname = dev_name(&edev->dev);
+		if (strncmp(instr, devname, len))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", devname);
+	}
+	return COMPLETE_CONTNINUE;
+}
+#endif
+
 int eth_send(void *packet, int length)
 {
 	int ret;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
