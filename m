Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 22.97.mail-out.ovh.net ([87.98.139.70] helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUgrE-0000BR-1z
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:09:18 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id B37E44AA630
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:09:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Jun 2011 16:55:51 +0200
Message-Id: <1307631354-5553-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] complete: add device name complete support for devinfo
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c     |   22 ++++++++++++++++++++++
 drivers/base/driver.c |    2 ++
 include/complete.h    |    1 +
 3 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 098b80d..e197872 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -82,6 +82,28 @@ int command_complete(struct string_list *sl, char *instr)
 	return 0;
 }
 
+int device_complete(struct string_list *sl, char *instr)
+{
+	struct device_d *dev;
+	char cmd[128];
+	int len, len2;
+
+	len = strlen(instr);
+
+	for_each_device(dev) {
+		if (!strncmp(instr, dev_name(dev), len)) {
+			len2 = strlen(dev_name(dev));
+			strcpy(cmd, dev_name(dev));
+			cmd[len2] = ' ';
+			cmd[len2 + 1] = 0;
+			string_list_add(sl, cmd);
+		}
+	}
+
+	return 0;
+}
+
+
 static int device_param_complete(char begin, struct device_d *dev,
 				 struct string_list *sl, char *instr)
 {
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4c10a49..ea1dc6e 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -33,6 +33,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <linux/list.h>
+#include <complete.h>
 
 LIST_HEAD(device_list);
 EXPORT_SYMBOL(device_list);
@@ -376,6 +377,7 @@ BAREBOX_CMD_START(devinfo)
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
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
