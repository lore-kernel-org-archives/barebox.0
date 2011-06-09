Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 28.97.mail-out.ovh.net ([87.98.186.139]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUgrF-0000Bu-9k
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:09:19 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 483F54AA5E5
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:09:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 16:55:54 +0200
Message-Id: <1307631354-5553-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110609145028.GH17584@game.jcrosoft.org>
References: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: [PATCH 6/6] complete: add eth interface complete support
To: barebox@lists.infradead.org

use it on ethact

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/net.c     |    2 ++
 include/complete.h |    1 +
 net/eth.c          |   23 +++++++++++++++++++++++
 3 files changed, 26 insertions(+), 0 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index 938463c..347613f 100644
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
index c5b346c..a669613 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -23,6 +23,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <complete.h>
 #include <driver.h>
 #include <init.h>
 #include <net.h>
@@ -63,6 +64,28 @@ struct eth_device *eth_get_byname(char *ethname)
 	return NULL;
 }
 
+#ifdef CONFIG_AUTO_COMPLETE
+int eth_complete(struct string_list *sl, char *instr)
+{
+	struct eth_device *edev;
+	char cmd[128];
+	int len, len2;
+
+	len = strlen(instr);
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		sprintf(cmd, "%s%d", edev->dev.name, edev->dev.id);
+		if (!strncmp(instr, cmd, len)) {
+			len2 = strlen(cmd);
+			cmd[len2] = ' ';
+			cmd[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+	}
+	return 0;
+}
+#endif
+
 int eth_send(void *packet, int length)
 {
 	int ret;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
