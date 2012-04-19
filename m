Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT9-0003gT-Ck
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:59 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8A6EEFF8ADA
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:55 +0200
Message-Id: <1334814298-11468-8-git-send-email-plagnioj@jcrosoft.com>
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
index 4b0e979..ea8c53a 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -11,6 +11,7 @@ void complete_reset(void);
 int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
 int empty_complete(struct string_list *sl, char *instr);
+int eth_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
diff --git a/net/eth.c b/net/eth.c
index 130805b..1c35e5b 100644
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
+	return 0;
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
