Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOq0T-00042t-6m
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:47:10 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0C39A1050647
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:48:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:25:58 +0200
Message-Id: <1335788764-30430-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/11] complete: add device name complete support for devinfo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c     |   20 ++++++++++++++++++++
 drivers/base/driver.c |    2 ++
 include/complete.h    |    1 +
 3 files changed, 23 insertions(+), 0 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index d848396..c2b37e4 100644
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
+	return COMPLETE_CONTINUE;
+}
+
 static int device_param_complete(char *begin, struct device_d *dev,
 				 struct string_list *sl, char *instr)
 {
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 9924fee..547d684 100644
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
index 0c8ebd6..9f8d784 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -12,6 +12,7 @@ int complete(char *instr, char **outstr);
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
