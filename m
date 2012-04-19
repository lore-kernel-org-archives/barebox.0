Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkT7-0003fI-Rd
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 06:03:55 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 281A2FF8AD5
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 08:05:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Apr 2012 07:44:52 +0200
Message-Id: <1334814298-11468-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/11] complete: add device name complete support for devinfo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c     |   20 ++++++++++++++++++++
 drivers/base/driver.c |    2 ++
 include/complete.h    |    1 +
 3 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 9515072..cf06101 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -145,6 +145,26 @@ int command_complete(struct string_list *sl, char *instr)
 	return 0;
 }
 
+int device_complete(struct string_list *sl, char *instr)
+{
+	struct device_d *dev;
+	int len;
+
+	if (!instr)
+		instr = "";
+
+	len = strlen(instr);
+
+	for_each_device(dev) {
+		if (strncmp(instr, dev_name(dev), len))
+			continue;
+
+		string_list_add_asprintf(sl, "%s ", dev_name(dev));
+	}
+
+	return 0;
+}
+
 static int device_param_complete(char *begin, struct device_d *dev,
 				 struct string_list *sl, char *instr)
 {
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 2d206f9..03b1834 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -33,6 +33,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <linux/list.h>
+#include <complete.h>
 
 LIST_HEAD(device_list);
 EXPORT_SYMBOL(device_list);
@@ -443,6 +444,7 @@ BAREBOX_CMD_START(devinfo)
 	.cmd		= do_devinfo,
 	.usage		= "Show information about devices and drivers.",
 	BAREBOX_CMD_HELP(cmd_devinfo_help)
+	BAREBOX_CMD_COMPLETE(device_complete)
 BAREBOX_CMD_END
 #endif
 
diff --git a/include/complete.h b/include/complete.h
index 3f1fe89..8dfc99c 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -9,6 +9,7 @@ int complete(char *instr, char **outstr);
 void complete_reset(void);
 
 int command_complete(struct string_list *sl, char *instr);
+int device_complete(struct string_list *sl, char *instr);
 
 #endif /* __COMPLETE_ */
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
